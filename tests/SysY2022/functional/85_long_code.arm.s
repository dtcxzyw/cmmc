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
	mov r3, r2
	mov r8, r0
	sub sp, sp, #20
	str r0, [sp, #4]
	mov r0, r1
	str r2, [sp, #8]
label2:
	ldr r3, [sp, #8]
	cmp r3, r0
	bgt label4
	b label81
label11:
	ldr r4, [sp, #0]
	add r0, r4, #1
	b label2
label81:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label4:
	ldr r8, [sp, #4]
	mov r4, r0
	ldr r1, [r8, r0, lsl #2]
	ldr r3, [sp, #8]
	str r0, [sp, #0]
	sub r2, r1, #1
	cmp r3, r0
	bgt label69
label8:
	ldr r8, [sp, #4]
	ldr r4, [sp, #0]
	str r1, [r8, r4, lsl #2]
	sub r4, r4, #1
label9:
	cmp r4, r0
	ble label11
	ldr r8, [sp, #4]
	mov r3, r4
	mov r5, r0
	ldr r1, [r8, r0, lsl #2]
	sub r2, r1, #1
	bgt label57
	b label16
.p2align 4
label69:
	ldr r4, [sp, #0]
	cmp r4, r3
	bge label369
.p2align 4
label71:
	ldr r8, [sp, #4]
	ldr r4, [r8, r3, lsl #2]
	cmp r2, r4
	bge label73
	sub r3, r3, #1
	ldr r4, [sp, #0]
	cmp r4, r3
	blt label71
	b label370
.p2align 4
label74:
	ldr r8, [sp, #4]
	ldr r5, [r8, r3, lsl #2]
	ldr r4, [sp, #0]
	str r5, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r3, r4
	bgt label77
	ble label372
.p2align 4
label80:
	ldr r8, [sp, #4]
	ldr r5, [r8, r4, lsl #2]
	str r5, [r8, r3, lsl #2]
	str r4, [sp, #0]
	sub r3, r3, #1
	cmp r3, r4
	bgt label69
	b label8
.p2align 4
label77:
	ldr r8, [sp, #4]
	ldr r5, [r8, r4, lsl #2]
	cmp r1, r5
	ble label79
	add r4, r4, #1
	cmp r3, r4
	bgt label77
	str r4, [sp, #0]
	b label8
.p2align 4
label57:
	cmp r5, r3
	bge label234
.p2align 4
label59:
	ldr r8, [sp, #4]
	ldr r6, [r8, r3, lsl #2]
	cmp r2, r6
	bge label61
	sub r3, r3, #1
	cmp r5, r3
	blt label59
	b label364
.p2align 4
label65:
	ldr r8, [sp, #4]
	ldr r6, [r8, r5, lsl #2]
	str r6, [r8, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, r5
	bgt label57
	b label16
.p2align 4
label66:
	ldr r8, [sp, #4]
	ldr r6, [r8, r5, lsl #2]
	cmp r1, r6
	ble label64
	add r5, r5, #1
	cmp r3, r5
	bgt label66
	b label16
.p2align 4
label234:
	cmp r5, r3
	bge label363
.p2align 4
label68:
	ldr r8, [sp, #4]
	ldr r6, [r8, r3, lsl #2]
	str r6, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r3, r5
	bgt label66
	b label16
.p2align 4
label370:
	ldr r4, [sp, #0]
	cmp r4, r3
	blt label74
	cmp r3, r4
	bgt label77
	str r4, [sp, #0]
	b label8
.p2align 4
label364:
	cmp r5, r3
	blt label68
	cmp r3, r5
	bgt label66
	b label16
.p2align 4
label369:
	ldr r4, [sp, #0]
	cmp r3, r4
	bgt label77
	str r4, [sp, #0]
	b label8
.p2align 4
label363:
	cmp r3, r5
	bgt label66
label16:
	ldr r8, [sp, #4]
	sub r6, r5, #1
	str r1, [r8, r5, lsl #2]
label17:
	cmp r6, r0
	bgt label19
	add r0, r5, #1
	b label9
label19:
	ldr r8, [sp, #4]
	mov r3, r6
	mov r7, r0
	ldr r1, [r8, r0, lsl #2]
	sub r2, r1, #1
	cmp r6, r0
	bgt label23
label125:
	ldr r8, [sp, #4]
	sub r9, r7, #1
	str r1, [r8, r7, lsl #2]
	mov r1, r0
	b label36
.p2align 4
label23:
	cmp r7, r3
	blt label33
.p2align 4
label25:
	cmp r7, r3
	blt label26
	b label132
.p2align 4
label142:
	cmp r3, r7
	ble label353
.p2align 4
label32:
	ldr r8, [sp, #4]
	ldr r9, [r8, r7, lsl #2]
	str r9, [r8, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, r7
	bgt label23
	b label125
label36:
	cmp r9, r1
	bgt label38
	add r0, r7, #1
	b label17
.p2align 4
label26:
	ldr r8, [sp, #4]
	ldr r9, [r8, r3, lsl #2]
	str r9, [r8, r7, lsl #2]
	add r7, r7, #1
	cmp r3, r7
	ble label142
.p2align 4
label29:
	ldr r8, [sp, #4]
	ldr r8, [r8, r7, lsl #2]
	cmp r1, r8
	ble label31
	add r7, r7, #1
	cmp r3, r7
	bgt label29
	b label378
.p2align 4
label33:
	ldr r8, [sp, #4]
	ldr r8, [r8, r3, lsl #2]
	cmp r2, r8
	bge label25
	sub r3, r3, #1
	cmp r7, r3
	blt label33
	cmp r3, r7
	bgt label29
	b label125
.p2align 4
label132:
	cmp r3, r7
	bgt label29
	b label125
label38:
	ldr r8, [sp, #4]
	mov r3, r9
	mov r10, r1
	ldr r0, [r8, r1, lsl #2]
	sub r2, r0, #1
	cmp r9, r1
	ble label54
.p2align 4
label42:
	cmp r10, r3
	blt label52
	b label44
.p2align 4
label48:
	ldr r8, [sp, #4]
	ldr r11, [r8, r10, lsl #2]
	str r11, [r8, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, r10
	bgt label42
	b label54
.p2align 4
label49:
	ldr r8, [sp, #4]
	ldr r8, [r8, r10, lsl #2]
	cmp r0, r8
	ble label47
	add r10, r10, #1
	cmp r3, r10
	bgt label49
	b label380
.p2align 4
label51:
	ldr r8, [sp, #4]
	ldr r11, [r8, r3, lsl #2]
	str r11, [r8, r10, lsl #2]
	add r10, r10, #1
	cmp r3, r10
	bgt label49
	b label381
.p2align 4
label52:
	ldr r8, [sp, #4]
	ldr r8, [r8, r3, lsl #2]
	cmp r2, r8
	bge label44
	sub r3, r3, #1
	cmp r10, r3
	blt label52
	cmp r3, r10
	bgt label49
	b label54
.p2align 4
label44:
	cmp r10, r3
	blt label51
	cmp r3, r10
	bgt label49
.p2align 4
label47:
	cmp r3, r10
	bgt label48
	b label54
label79:
	cmp r3, r4
	bgt label80
	str r4, [sp, #0]
	b label8
label73:
	ldr r4, [sp, #0]
	cmp r4, r3
	blt label74
	cmp r3, r4
	bgt label77
	str r4, [sp, #0]
	b label8
label61:
	cmp r5, r3
	blt label68
	cmp r3, r5
	bgt label66
label64:
	cmp r3, r5
	bgt label65
	b label252
label31:
	cmp r3, r7
	bgt label32
	b label125
label54:
	ldr r8, [sp, #4]
	sub r2, r10, #1
	str r0, [r8, r10, lsl #2]
	mov r0, r8
	bl QuickSort
	add r1, r10, #1
	b label36
.p2align 4
label378:
	cmp r3, r7
	bgt label23
	b label125
.p2align 4
label380:
	cmp r3, r10
	bgt label42
	b label54
.p2align 4
label372:
	str r4, [sp, #0]
	cmp r3, r4
	bgt label69
	b label8
.p2align 4
label353:
	cmp r3, r7
	bgt label23
	b label125
.p2align 4
label381:
	cmp r3, r10
	bgt label42
	b label54
label252:
	cmp r3, r5
	bgt label57
	b label16
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r10, #290
	mov r9, #1
	mov r7, #5
	movw r4, #282
	mov r1, #23
	mov r6, #27
	sub sp, sp, #276
	mov r3, #26
	mov r0, #7
	movw r11, #273
	mov r2, #89
	mov r8, #83
	str r0, [sp, #16]
	mov r5, #254
	str r1, [sp, #20]
	str r2, [sp, #24]
	str r3, [sp, #28]
	str r4, [sp, #32]
	str r5, [sp, #36]
	str r6, [sp, #40]
	str r7, [sp, #44]
	str r8, [sp, #48]
	str r11, [sp, #52]
	movw r11, #574
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
	movw r11, #273
	str r9, [sp, #136]
	str r10, [sp, #140]
	str r0, [sp, #144]
	str r1, [sp, #148]
	str r2, [sp, #152]
	str r3, [sp, #156]
	movw r3, #:lower16:count
	str r4, [sp, #160]
	movt r3, #:upper16:count
	mov r4, #0
	str r5, [sp, #164]
	str r6, [sp, #168]
	str r7, [sp, #172]
	str r8, [sp, #176]
	str r11, [sp, #180]
	movw r11, #574
	str r11, [sp, #184]
	movw r11, #905
	str r11, [sp, #188]
	movw r11, #354
	str r11, [sp, #192]
	movw r11, #657
	str r11, [sp, #196]
	movw r11, #935
	str r11, [sp, #200]
	mov r11, #264
	str r11, [sp, #204]
	movw r11, #639
	str r11, [sp, #208]
	movw r11, #459
	str r11, [sp, #212]
	mov r11, #29
	str r11, [sp, #216]
	mov r11, #68
	str r11, [sp, #220]
	movw r11, #929
	str r11, [sp, #224]
	mov r11, #756
	str r11, [sp, #228]
	mov r11, #452
	str r11, [sp, #232]
	movw r11, #279
	str r11, [sp, #236]
	mov r11, #58
	str r11, [sp, #240]
	mov r11, #87
	str r11, [sp, #244]
	mov r11, #96
	str r11, [sp, #248]
	mov r11, #36
	str r11, [sp, #252]
	mov r11, #39
	str r11, [sp, #256]
	mov r11, #28
	str r11, [sp, #260]
	str r9, [sp, #264]
	str r10, [sp, #268]
	str r3, [sp, #4]
.p2align 4
label444:
	add r6, sp, #144
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label444
	mov r1, #0
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label594
label593:
	mov r4, #0
	b label453
.p2align 4
label450:
	add r6, sp, #144
	add r5, r2, #1
	add r4, r6, r2, lsl #2
	ldr r3, [r4, #0]
	ldr r4, [r4, #4]
	cmp r3, r4
	bgt label451
	mov r2, r5
	cmp r0, r5
	bgt label450
	b label1663
.p2align 4
label451:
	add r6, sp, #144
	add r2, r6, r2, lsl #2
	str r3, [r2, #4]
	str r4, [r2, #0]
	mov r2, r5
	cmp r0, r5
	bgt label450
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label594
	b label593
.p2align 4
label453:
	add r6, sp, #144
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label453
	ldr r0, [sp, #208]
	ldr r1, [sp, #204]
	add r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bl putint
	mov r2, #0
.p2align 4
label456:
	ldr r3, [sp, #4]
	mov r1, #0
	add r0, r3, r2, lsl #2
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
	blt label456
	mov r4, #0
	mov r1, r4
	add r0, r3, r2, lsl #2
	str r4, [r0, #0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	str r4, [r0, #16]
	str r4, [r0, #20]
	str r4, [r0, #24]
	str r4, [r0, #28]
	str r4, [r0, #32]
	str r4, [r0, #36]
	str r4, [r0, #40]
	str r4, [r0, #44]
	str r4, [r0, #48]
	str r4, [r0, #52]
	str r4, [r0, #56]
	str r4, [r0, #60]
	str r4, [r0, #64]
	str r4, [r0, #68]
	str r4, [r0, #72]
	str r4, [r0, #76]
	str r4, [r0, #80]
	str r4, [r0, #84]
	str r4, [r0, #88]
	str r4, [r0, #92]
	str r4, [r0, #96]
	str r4, [r0, #100]
	str r4, [r0, #104]
	str r4, [r0, #108]
	str r4, [r0, #112]
	str r4, [r0, #116]
	str r4, [r0, #120]
	str r4, [r0, #124]
	str r4, [r0, #128]
	str r4, [r0, #132]
	str r4, [r0, #136]
	str r4, [r0, #140]
	str r4, [r0, #144]
	str r4, [r0, #148]
	str r4, [r0, #152]
	str r4, [r0, #156]
	str r4, [sp, #0]
	mov r0, r4
	str r4, [sp, #8]
	b label459
.p2align 4
label594:
	mov r2, #0
	cmp r0, r2
	bgt label450
	b label597
.p2align 4
label1663:
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label594
	b label593
label459:
	add r6, sp, #144
	ldr r0, [sp, #8]
	add r2, r6, r0, lsl #2
	add r0, r0, #8
	ldr r6, [r2, #0]
	ldr r3, [sp, #4]
	add r1, r3, r6, lsl #2
	ldr r5, [r1, #0]
	add r5, r5, #1
	str r5, [r1, #0]
	ldr r1, [sp, #0]
	ldr r10, [r2, #4]
	cmp r1, r5
	mov r9, r1
	add r7, r3, r10, lsl #2
	movlt r4, r6
	movle r9, r5
	ldr r8, [r7, #0]
	mov r6, r4
	add r8, r8, #1
	str r8, [r7, #0]
	cmp r9, r8
	ldr r9, [r2, #8]
	movlt r6, r10
	mov r4, r5
	cmp r5, r8
	movle r4, r8
	add r7, r3, r9, lsl #2
	mov r5, r1
	cmp r1, r4
	ldr r8, [r7, #0]
	movle r5, r4
	add r8, r8, #1
	str r8, [r7, #0]
	cmp r5, r8
	mov r5, r6
	movlt r5, r9
	mov r9, r1
	cmp r4, r8
	movle r4, r8
	ldr r8, [r2, #12]
	cmp r1, r4
	movle r9, r4
	add r6, r3, r8, lsl #2
	ldr r7, [r6, #0]
	add r7, r7, #1
	str r7, [r6, #0]
	cmp r9, r7
	ldr r9, [r2, #16]
	movlt r5, r8
	mov r8, r1
	cmp r4, r7
	movle r4, r7
	add r6, r3, r9, lsl #2
	cmp r1, r4
	ldr r7, [r6, #0]
	movle r8, r4
	add r7, r7, #1
	str r7, [r6, #0]
	cmp r8, r7
	mov r8, r1
	movlt r5, r9
	ldr r9, [r2, #20]
	cmp r4, r7
	movle r4, r7
	cmp r1, r4
	add r6, r3, r9, lsl #2
	movle r8, r4
	ldr r7, [r6, #0]
	add r7, r7, #1
	str r7, [r6, #0]
	cmp r8, r7
	ldr r10, [r2, #24]
	movlt r5, r9
	mov r9, r1
	cmp r4, r7
	movle r4, r7
	add r7, r3, r10, lsl #2
	cmp r1, r4
	ldr r6, [r7, #0]
	movle r9, r4
	add r8, r6, #1
	str r8, [r7, #0]
	mov r6, r5
	cmp r9, r8
	ldr r7, [r2, #28]
	movlt r6, r10
	mov r5, r4
	cmp r4, r8
	movle r5, r8
	add r2, r3, r7, lsl #2
	mov r4, r1
	cmp r1, r5
	ldr r3, [r2, #0]
	movle r4, r5
	add r3, r3, #1
	str r3, [r2, #0]
	cmp r4, r3
	mov r4, r6
	movlt r4, r7
	cmp r5, r3
	movle r5, r3
	cmp r1, r5
	movle r1, r5
	cmp r0, #24
	bge label821
	str r1, [sp, #0]
	str r0, [sp, #8]
	b label459
label821:
	mov r2, r4
label463:
	add r6, sp, #144
	ldr r4, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #4]
	add r5, r3, r4, lsl #2
	ldr r3, [r5, #0]
	add r3, r3, #1
	str r3, [r5, #0]
	cmp r1, r3
	movle r1, r3
	movlt r2, r4
	cmp r0, #32
	blt label463
	mov r0, r2
	bl putint
	mov r1, #0
	ldr r0, [sp, #16]
	str r0, [sp, #144]
	ldr r0, [sp, #20]
	str r0, [sp, #148]
	ldr r0, [sp, #24]
	str r0, [sp, #152]
	ldr r0, [sp, #28]
	str r0, [sp, #156]
	ldr r0, [sp, #32]
	str r0, [sp, #160]
	ldr r0, [sp, #36]
	str r0, [sp, #164]
	ldr r0, [sp, #40]
	str r0, [sp, #168]
	ldr r0, [sp, #44]
	str r0, [sp, #172]
	ldr r0, [sp, #48]
	str r0, [sp, #176]
	ldr r0, [sp, #52]
	str r0, [sp, #180]
	ldr r0, [sp, #56]
	str r0, [sp, #184]
	ldr r0, [sp, #60]
	str r0, [sp, #188]
	ldr r0, [sp, #64]
	str r0, [sp, #192]
	ldr r0, [sp, #68]
	str r0, [sp, #196]
	ldr r0, [sp, #72]
	str r0, [sp, #200]
	ldr r0, [sp, #76]
	str r0, [sp, #204]
	ldr r0, [sp, #80]
	str r0, [sp, #208]
	ldr r0, [sp, #84]
	str r0, [sp, #212]
	ldr r0, [sp, #88]
	str r0, [sp, #216]
	ldr r0, [sp, #92]
	str r0, [sp, #220]
	ldr r0, [sp, #96]
	str r0, [sp, #224]
	ldr r0, [sp, #100]
	str r0, [sp, #228]
	ldr r0, [sp, #104]
	str r0, [sp, #232]
	ldr r0, [sp, #108]
	str r0, [sp, #236]
	ldr r0, [sp, #112]
	str r0, [sp, #240]
	ldr r0, [sp, #116]
	str r0, [sp, #244]
	ldr r0, [sp, #120]
	str r0, [sp, #248]
	ldr r0, [sp, #124]
	str r0, [sp, #252]
	ldr r0, [sp, #128]
	str r0, [sp, #256]
	ldr r0, [sp, #132]
	str r0, [sp, #260]
	ldr r0, [sp, #136]
	str r0, [sp, #264]
	ldr r0, [sp, #140]
	str r0, [sp, #268]
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label937
label936:
	mov r4, #0
	b label475
.p2align 4
label472:
	add r6, sp, #144
	add r5, r2, #1
	add r4, r6, r2, lsl #2
	ldr r3, [r4, #0]
	ldr r4, [r4, #4]
	cmp r3, r4
	bgt label473
	mov r2, r5
	cmp r0, r5
	bgt label472
	b label1666
.p2align 4
label473:
	add r6, sp, #144
	add r2, r6, r2, lsl #2
	str r3, [r2, #4]
	str r4, [r2, #0]
	mov r2, r5
	cmp r0, r5
	bgt label472
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label937
	b label936
.p2align 4
label475:
	add r6, sp, #144
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label475
	ldr r0, [sp, #16]
	str r0, [sp, #144]
	ldr r0, [sp, #20]
	str r0, [sp, #148]
	ldr r0, [sp, #24]
	str r0, [sp, #152]
	ldr r0, [sp, #28]
	str r0, [sp, #156]
	ldr r0, [sp, #32]
	str r0, [sp, #160]
	ldr r0, [sp, #36]
	str r0, [sp, #164]
	ldr r0, [sp, #40]
	str r0, [sp, #168]
	ldr r0, [sp, #44]
	str r0, [sp, #172]
	ldr r0, [sp, #48]
	str r0, [sp, #176]
	ldr r0, [sp, #52]
	str r0, [sp, #180]
	ldr r0, [sp, #56]
	str r0, [sp, #184]
	ldr r0, [sp, #60]
	str r0, [sp, #188]
	ldr r0, [sp, #64]
	str r0, [sp, #192]
	ldr r0, [sp, #68]
	str r0, [sp, #196]
	ldr r0, [sp, #72]
	str r0, [sp, #200]
	ldr r0, [sp, #76]
	str r0, [sp, #204]
	ldr r0, [sp, #80]
	str r0, [sp, #208]
	ldr r0, [sp, #84]
	str r0, [sp, #212]
	ldr r0, [sp, #88]
	str r0, [sp, #216]
	ldr r0, [sp, #92]
	str r0, [sp, #220]
	ldr r0, [sp, #96]
	str r0, [sp, #224]
	ldr r0, [sp, #100]
	str r0, [sp, #228]
	ldr r0, [sp, #104]
	str r0, [sp, #232]
	ldr r0, [sp, #108]
	str r0, [sp, #236]
	ldr r0, [sp, #112]
	str r0, [sp, #240]
	ldr r0, [sp, #116]
	str r0, [sp, #244]
	ldr r0, [sp, #120]
	str r0, [sp, #248]
	ldr r0, [sp, #124]
	str r0, [sp, #252]
	ldr r0, [sp, #128]
	str r0, [sp, #256]
	ldr r0, [sp, #132]
	str r0, [sp, #260]
	ldr r0, [sp, #136]
	str r0, [sp, #264]
	ldr r0, [sp, #140]
	str r0, [sp, #268]
	mov r0, #1
	cmp r0, #32
	blt label480
	b label1060
.p2align 4
label937:
	mov r2, #0
	cmp r0, r2
	bgt label472
	b label940
.p2align 4
label1666:
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label937
	b label936
label1060:
	mov r4, #0
	b label486
.p2align 4
label480:
	add r6, sp, #144
	sub r2, r0, #1
	ldr r1, [r6, r0, lsl #2]
	add r3, r2, #1
	cmn r2, #1
	bgt label484
.p2align 4
label483:
	add r6, sp, #144
	add r0, r0, #1
	str r1, [r6, r3, lsl #2]
	cmp r0, #32
	blt label480
	b label1060
.p2align 4
label486:
	add r6, sp, #144
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label486
	ldr r0, [sp, #16]
	add r6, sp, #144
	mov r1, #0
	mov r2, #31
	str r0, [sp, #144]
	ldr r0, [sp, #20]
	str r0, [sp, #148]
	ldr r0, [sp, #24]
	str r0, [sp, #152]
	ldr r0, [sp, #28]
	str r0, [sp, #156]
	ldr r0, [sp, #32]
	str r0, [sp, #160]
	ldr r0, [sp, #36]
	str r0, [sp, #164]
	ldr r0, [sp, #40]
	str r0, [sp, #168]
	ldr r0, [sp, #44]
	str r0, [sp, #172]
	ldr r0, [sp, #48]
	str r0, [sp, #176]
	ldr r0, [sp, #52]
	str r0, [sp, #180]
	ldr r0, [sp, #56]
	str r0, [sp, #184]
	ldr r0, [sp, #60]
	str r0, [sp, #188]
	ldr r0, [sp, #64]
	str r0, [sp, #192]
	ldr r0, [sp, #68]
	str r0, [sp, #196]
	ldr r0, [sp, #72]
	str r0, [sp, #200]
	ldr r0, [sp, #76]
	str r0, [sp, #204]
	ldr r0, [sp, #80]
	str r0, [sp, #208]
	ldr r0, [sp, #84]
	str r0, [sp, #212]
	ldr r0, [sp, #88]
	str r0, [sp, #216]
	ldr r0, [sp, #92]
	str r0, [sp, #220]
	ldr r0, [sp, #96]
	str r0, [sp, #224]
	ldr r0, [sp, #100]
	str r0, [sp, #228]
	ldr r0, [sp, #104]
	str r0, [sp, #232]
	ldr r0, [sp, #108]
	str r0, [sp, #236]
	ldr r0, [sp, #112]
	str r0, [sp, #240]
	ldr r0, [sp, #116]
	str r0, [sp, #244]
	ldr r0, [sp, #120]
	str r0, [sp, #248]
	ldr r0, [sp, #124]
	str r0, [sp, #252]
	ldr r0, [sp, #128]
	str r0, [sp, #256]
	ldr r0, [sp, #132]
	str r0, [sp, #260]
	ldr r0, [sp, #136]
	str r0, [sp, #264]
	ldr r0, [sp, #140]
	str r0, [sp, #268]
	mov r0, r6
	bl QuickSort
	mov r4, #0
.p2align 4
label489:
	add r6, sp, #144
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label489
	ldr r0, [sp, #16]
	mov r1, #0
	str r0, [sp, #144]
	ldr r0, [sp, #20]
	str r0, [sp, #148]
	ldr r0, [sp, #24]
	str r0, [sp, #152]
	ldr r0, [sp, #28]
	str r0, [sp, #156]
	ldr r0, [sp, #32]
	str r0, [sp, #160]
	ldr r0, [sp, #36]
	str r0, [sp, #164]
	ldr r0, [sp, #40]
	str r0, [sp, #168]
	ldr r0, [sp, #44]
	str r0, [sp, #172]
	ldr r0, [sp, #48]
	str r0, [sp, #176]
	ldr r0, [sp, #52]
	str r0, [sp, #180]
	ldr r0, [sp, #56]
	str r0, [sp, #184]
	ldr r0, [sp, #60]
	str r0, [sp, #188]
	ldr r0, [sp, #64]
	str r0, [sp, #192]
	ldr r0, [sp, #68]
	str r0, [sp, #196]
	ldr r0, [sp, #72]
	str r0, [sp, #200]
	ldr r0, [sp, #76]
	str r0, [sp, #204]
	ldr r0, [sp, #80]
	str r0, [sp, #208]
	ldr r0, [sp, #84]
	str r0, [sp, #212]
	ldr r0, [sp, #88]
	str r0, [sp, #216]
	ldr r0, [sp, #92]
	str r0, [sp, #220]
	ldr r0, [sp, #96]
	str r0, [sp, #224]
	ldr r0, [sp, #100]
	str r0, [sp, #228]
	ldr r0, [sp, #104]
	str r0, [sp, #232]
	ldr r0, [sp, #108]
	str r0, [sp, #236]
	ldr r0, [sp, #112]
	str r0, [sp, #240]
	ldr r0, [sp, #116]
	str r0, [sp, #244]
	ldr r0, [sp, #120]
	str r0, [sp, #248]
	ldr r0, [sp, #124]
	str r0, [sp, #252]
	ldr r0, [sp, #128]
	str r0, [sp, #256]
	ldr r0, [sp, #132]
	str r0, [sp, #260]
	ldr r0, [sp, #136]
	str r0, [sp, #264]
	ldr r0, [sp, #140]
	str r0, [sp, #268]
	mov r0, r1
	cmp r1, #32
	blt label495
	b label1290
.p2align 4
label484:
	add r6, sp, #144
	ldr r4, [r6, r2, lsl #2]
	cmp r1, r4
	bge label483
	sub r2, r2, #1
	str r4, [r6, r3, lsl #2]
	add r3, r2, #1
	cmn r2, #1
	bgt label484
	add r0, r0, #1
	str r1, [r6, r3, lsl #2]
	cmp r0, #32
	blt label480
	b label1060
.p2align 4
label495:
	add r6, sp, #144
	and r3, r0, #3
	ldr r2, [r6, r0, lsl #2]
	cmp r3, #3
	add r1, r1, r2
	add r2, r0, #1
	bne label496
	str r1, [r6, r0, lsl #2]
	mov r0, r2
	mov r1, #0
	cmp r2, #32
	blt label495
	b label1290
.p2align 4
label496:
	mov r3, #0
	add r6, sp, #144
	str r3, [r6, r0, lsl #2]
	mov r0, r2
	cmp r2, #32
	blt label495
label1290:
	mov r4, #0
.p2align 4
label498:
	add r6, sp, #144
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label498
	ldr r0, [sp, #16]
	mov r2, #0
	mov r1, r2
	str r0, [sp, #144]
	ldr r0, [sp, #20]
	str r0, [sp, #148]
	ldr r0, [sp, #24]
	str r0, [sp, #152]
	ldr r0, [sp, #28]
	str r0, [sp, #156]
	ldr r0, [sp, #32]
	str r0, [sp, #160]
	ldr r0, [sp, #36]
	str r0, [sp, #164]
	ldr r0, [sp, #40]
	str r0, [sp, #168]
	ldr r0, [sp, #44]
	str r0, [sp, #172]
	ldr r0, [sp, #48]
	str r0, [sp, #176]
	ldr r0, [sp, #52]
	str r0, [sp, #180]
	ldr r0, [sp, #56]
	str r0, [sp, #184]
	ldr r0, [sp, #60]
	str r0, [sp, #188]
	ldr r0, [sp, #64]
	str r0, [sp, #192]
	ldr r0, [sp, #68]
	str r0, [sp, #196]
	ldr r0, [sp, #72]
	str r0, [sp, #200]
	ldr r0, [sp, #76]
	str r0, [sp, #204]
	ldr r0, [sp, #80]
	str r0, [sp, #208]
	ldr r0, [sp, #84]
	str r0, [sp, #212]
	ldr r0, [sp, #88]
	str r0, [sp, #216]
	ldr r0, [sp, #92]
	str r0, [sp, #220]
	ldr r0, [sp, #96]
	str r0, [sp, #224]
	ldr r0, [sp, #100]
	str r0, [sp, #228]
	ldr r0, [sp, #104]
	str r0, [sp, #232]
	ldr r0, [sp, #108]
	str r0, [sp, #236]
	ldr r0, [sp, #112]
	str r0, [sp, #240]
	ldr r0, [sp, #116]
	str r0, [sp, #244]
	ldr r0, [sp, #120]
	str r0, [sp, #248]
	ldr r0, [sp, #124]
	str r0, [sp, #252]
	ldr r0, [sp, #128]
	str r0, [sp, #256]
	ldr r0, [sp, #132]
	str r0, [sp, #260]
	ldr r0, [sp, #136]
	str r0, [sp, #264]
	ldr r0, [sp, #140]
	str r0, [sp, #268]
	mov r0, r2
	cmp r2, #32
	blt label509
label505:
	mov r4, #0
	str r4, [sp, #264]
	str r4, [sp, #268]
.p2align 4
label506:
	add r6, sp, #144
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label506
	mov r0, #0
	add sp, sp, #276
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label509:
	cmp r0, #2
	blt label510
	beq label512
	b label513
.p2align 4
label510:
	add r6, sp, #144
	ldr r3, [r6, r0, lsl #2]
	add r0, r0, #1
	add r1, r1, r3
	cmp r0, #32
	blt label509
	b label505
.p2align 4
label513:
	add r6, sp, #144
	add r3, r6, r0, lsl #2
	add r0, r0, #1
	ldr r4, [r3, #0]
	add r1, r1, r4
	sub r1, r1, r2
	movw r2, #21846
	movt r2, #21845
	smmul r2, r1, r2
	add r4, r2, r2, lsr #31
	ldr r2, [r3, #-8]
	str r4, [r3, #-8]
	cmp r0, #32
	blt label509
	b label505
.p2align 4
label512:
	ldr r2, [sp, #144]
	movw r0, #21846
	movt r0, #21845
	smmul r0, r1, r0
	add r0, r0, r0, lsr #31
	str r0, [sp, #144]
	mov r0, #3
	cmp r0, #32
	blt label509
	b label505
label597:
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label594
	b label593
label940:
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label937
	b label936
