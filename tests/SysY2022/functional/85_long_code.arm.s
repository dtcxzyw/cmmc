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
	mov r3, r2
	mov r8, r0
	sub sp, sp, #20
	str r0, [sp, #4]
	mov r0, r1
	str r2, [sp, #8]
label2:
	ldr r3, [sp, #8]
	cmp r3, r0
	ble label4
	ldr r8, [sp, #4]
	mov r4, r0
	ldr r1, [r8, r0, lsl #2]
	str r0, [sp, #0]
	sub r2, r1, #1
.p2align 4
label9:
	ldr r4, [sp, #0]
	cmp r4, r3
	blt label19
	b label11
.p2align 4
label111:
	cmp r3, r4
	ble label353
.p2align 4
label18:
	ldr r8, [sp, #4]
	ldr r5, [r8, r4, lsl #2]
	str r5, [r8, r3, lsl #2]
	str r4, [sp, #0]
	sub r3, r3, #1
	cmp r3, r4
	bgt label9
	b label94
.p2align 4
label19:
	ldr r8, [sp, #4]
	ldr r4, [r8, r3, lsl #2]
	cmp r2, r4
	bge label11
	sub r3, r3, #1
	ldr r4, [sp, #0]
	cmp r4, r3
	blt label19
	cmp r3, r4
	bgt label15
	str r4, [sp, #0]
	b label94
.p2align 4
label11:
	ldr r4, [sp, #0]
	cmp r4, r3
	bge label101
	ldr r8, [sp, #4]
	ldr r5, [r8, r3, lsl #2]
	str r5, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r3, r4
	ble label111
.p2align 4
label15:
	ldr r8, [sp, #4]
	ldr r5, [r8, r4, lsl #2]
	cmp r1, r5
	ble label17
	add r4, r4, #1
	cmp r3, r4
	bgt label15
	str r4, [sp, #0]
	b label94
.p2align 4
label101:
	ldr r4, [sp, #0]
	cmp r3, r4
	bgt label15
	str r4, [sp, #0]
	b label94
label4:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label94:
	ldr r8, [sp, #4]
	ldr r4, [sp, #0]
	str r1, [r8, r4, lsl #2]
	mov r1, r0
	sub r4, r4, #1
label22:
	cmp r4, r1
	bgt label25
	ldr r4, [sp, #0]
	add r0, r4, #1
	b label2
label25:
	ldr r8, [sp, #4]
	mov r3, r4
	mov r5, r1
	ldr r0, [r8, r1, lsl #2]
	sub r2, r0, #1
	cmp r4, r1
	ble label29
.p2align 4
label70:
	cmp r5, r3
	blt label80
	b label72
.p2align 4
label279:
	cmp r3, r5
	ble label370
.p2align 4
label76:
	ldr r8, [sp, #4]
	ldr r6, [r8, r5, lsl #2]
	cmp r0, r6
	ble label78
	add r5, r5, #1
	cmp r3, r5
	bgt label76
	ble label390
.p2align 4
label79:
	ldr r8, [sp, #4]
	ldr r6, [r8, r5, lsl #2]
	str r6, [r8, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, r5
	bgt label70
	b label29
.p2align 4
label80:
	ldr r8, [sp, #4]
	ldr r6, [r8, r3, lsl #2]
	cmp r2, r6
	bge label72
	sub r3, r3, #1
	cmp r5, r3
	blt label80
	cmp r3, r5
	bgt label76
	b label29
.p2align 4
label72:
	cmp r5, r3
	bge label279
	ldr r8, [sp, #4]
	ldr r6, [r8, r3, lsl #2]
	str r6, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r3, r5
	bgt label76
	b label29
.p2align 4
label370:
	cmp r3, r5
	bgt label79
label29:
	ldr r8, [sp, #4]
	sub r6, r5, #1
	str r0, [r8, r5, lsl #2]
label30:
	cmp r6, r1
	bgt label33
	add r1, r5, #1
	b label22
label33:
	ldr r8, [sp, #4]
	mov r3, r6
	mov r7, r1
	ldr r0, [r8, r1, lsl #2]
	sub r2, r0, #1
	cmp r6, r1
	bgt label37
label168:
	ldr r8, [sp, #4]
	sub r9, r7, #1
	str r0, [r8, r7, lsl #2]
	b label50
.p2align 4
label37:
	cmp r7, r3
	blt label39
	b label358
label41:
	cmp r7, r3
	blt label42
	cmp r3, r7
	ble label360
.p2align 4
label45:
	ldr r8, [sp, #4]
	ldr r8, [r8, r7, lsl #2]
	cmp r0, r8
	ble label47
	add r7, r7, #1
	cmp r3, r7
	bgt label45
	ble label384
.p2align 4
label48:
	ldr r8, [sp, #4]
	ldr r9, [r8, r7, lsl #2]
	str r9, [r8, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, r7
	bgt label37
	b label168
label50:
	cmp r9, r1
	ble label217
	ldr r8, [sp, #4]
	mov r3, r9
	mov r10, r1
	ldr r0, [r8, r1, lsl #2]
	sub r2, r0, #1
	bgt label57
	b label56
.p2align 4
label39:
	ldr r8, [sp, #4]
	ldr r8, [r8, r3, lsl #2]
	cmp r2, r8
	bge label41
	sub r3, r3, #1
	cmp r7, r3
	blt label39
	bge label381
.p2align 4
label42:
	ldr r8, [sp, #4]
	ldr r9, [r8, r3, lsl #2]
	str r9, [r8, r7, lsl #2]
	add r7, r7, #1
	cmp r3, r7
	bgt label45
	b label168
label56:
	ldr r8, [sp, #4]
	sub r2, r10, #1
	str r0, [r8, r10, lsl #2]
	mov r0, r8
	bl QuickSort
	add r1, r10, #1
	b label50
.p2align 4
label57:
	cmp r10, r3
	blt label67
.p2align 4
label59:
	cmp r10, r3
	blt label60
	b label236
.p2align 4
label64:
	ldr r8, [sp, #4]
	ldr r11, [r8, r10, lsl #2]
	str r11, [r8, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, r10
	bgt label57
	b label56
.p2align 4
label236:
	cmp r3, r10
	ble label365
.p2align 4
label65:
	ldr r8, [sp, #4]
	ldr r8, [r8, r10, lsl #2]
	cmp r0, r8
	ble label63
	add r10, r10, #1
	cmp r3, r10
	bgt label65
	b label56
.p2align 4
label60:
	ldr r8, [sp, #4]
	ldr r11, [r8, r3, lsl #2]
	str r11, [r8, r10, lsl #2]
	add r10, r10, #1
	cmp r3, r10
	bgt label65
.p2align 4
label63:
	cmp r3, r10
	bgt label64
	b label249
.p2align 4
label67:
	ldr r8, [sp, #4]
	ldr r8, [r8, r3, lsl #2]
	cmp r2, r8
	bge label59
	sub r3, r3, #1
	cmp r10, r3
	blt label67
	cmp r3, r10
	bgt label65
	b label56
.p2align 4
label358:
	cmp r3, r7
	bgt label45
	b label168
.p2align 4
label381:
	cmp r3, r7
	bgt label45
	b label168
.p2align 4
label365:
	cmp r3, r10
	bgt label64
	b label56
label17:
	cmp r3, r4
	bgt label18
	str r4, [sp, #0]
	b label94
label78:
	cmp r3, r5
	bgt label79
	b label29
label47:
	cmp r3, r7
	bgt label48
	b label168
.p2align 4
label390:
	cmp r3, r5
	bgt label70
	b label29
.p2align 4
label384:
	cmp r3, r7
	bgt label37
	b label168
.p2align 4
label249:
	cmp r3, r10
	bgt label57
	b label56
.p2align 4
label353:
	str r4, [sp, #0]
	cmp r3, r4
	bgt label9
	b label94
label360:
	cmp r3, r7
	bgt label48
	b label168
label217:
	add r1, r7, #1
	b label30
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r10, #290
	mov r9, #28
	mov r8, #39
	sub sp, sp, #268
	mov r4, #26
	mov r2, #23
	mov r3, #89
	mov r11, #5
	mov r7, #27
	mov r6, #254
	mov r0, #1
	movw r5, #282
	mov r1, #7
	str r1, [sp, #8]
	str r2, [sp, #12]
	str r3, [sp, #16]
	str r4, [sp, #20]
	str r5, [sp, #24]
	str r6, [sp, #28]
	str r7, [sp, #32]
	str r11, [sp, #36]
	mov r11, #83
	str r11, [sp, #40]
	movw r11, #273
	str r11, [sp, #44]
	movw r11, #574
	str r11, [sp, #48]
	movw r11, #905
	str r11, [sp, #52]
	movw r11, #354
	str r11, [sp, #56]
	movw r11, #657
	str r11, [sp, #60]
	movw r11, #935
	str r11, [sp, #64]
	mov r11, #264
	str r11, [sp, #68]
	movw r11, #639
	str r11, [sp, #72]
	movw r11, #459
	str r11, [sp, #76]
	mov r11, #29
	str r11, [sp, #80]
	mov r11, #68
	str r11, [sp, #84]
	movw r11, #929
	str r11, [sp, #88]
	mov r11, #756
	str r11, [sp, #92]
	mov r11, #452
	str r11, [sp, #96]
	movw r11, #279
	str r11, [sp, #100]
	mov r11, #58
	str r11, [sp, #104]
	mov r11, #87
	str r11, [sp, #108]
	mov r11, #96
	str r11, [sp, #112]
	mov r11, #36
	str r11, [sp, #116]
	mov r11, #5
	str r8, [sp, #120]
	str r9, [sp, #124]
	str r0, [sp, #128]
	str r10, [sp, #132]
	str r1, [sp, #136]
	str r2, [sp, #140]
	str r3, [sp, #144]
	str r4, [sp, #148]
	mov r4, #0
	str r5, [sp, #152]
	str r6, [sp, #156]
	str r7, [sp, #160]
	str r11, [sp, #164]
	mov r11, #83
	str r11, [sp, #168]
	movw r11, #273
	str r11, [sp, #172]
	movw r11, #574
	str r11, [sp, #176]
	movw r11, #905
	str r11, [sp, #180]
	movw r11, #354
	str r11, [sp, #184]
	movw r11, #657
	str r11, [sp, #188]
	movw r11, #935
	str r11, [sp, #192]
	mov r11, #264
	str r11, [sp, #196]
	movw r11, #639
	str r11, [sp, #200]
	movw r11, #459
	str r11, [sp, #204]
	mov r11, #29
	str r11, [sp, #208]
	mov r11, #68
	str r11, [sp, #212]
	movw r11, #929
	str r11, [sp, #216]
	mov r11, #756
	str r11, [sp, #220]
	mov r11, #452
	str r11, [sp, #224]
	movw r11, #279
	str r11, [sp, #228]
	mov r11, #58
	str r11, [sp, #232]
	mov r11, #87
	str r11, [sp, #236]
	mov r11, #96
	str r11, [sp, #240]
	mov r11, #36
	str r11, [sp, #244]
	str r8, [sp, #248]
	str r9, [sp, #252]
	str r0, [sp, #256]
	movw r0, #:lower16:count
	str r10, [sp, #260]
	str r0, [sp, #0]
	movt r0, #:upper16:count
	str r0, [sp, #0]
.p2align 4
label443:
	add r6, sp, #136
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label443
	mov r1, #0
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label584
label583:
	mov r4, #0
	b label452
.p2align 4
label584:
	mov r2, #0
	cmp r0, r2
	ble label587
.p2align 4
label449:
	add r6, sp, #136
	add r5, r2, #1
	add r4, r6, r2, lsl #2
	ldr r3, [r4, #0]
	ldr r4, [r4, #4]
	cmp r3, r4
	bgt label450
	mov r2, r5
	cmp r0, r5
	bgt label449
	b label1826
.p2align 4
label450:
	add r6, sp, #136
	add r2, r6, r2, lsl #2
	str r3, [r2, #4]
	str r4, [r2, #0]
	mov r2, r5
	cmp r0, r5
	bgt label449
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label584
	b label583
.p2align 4
label452:
	add r6, sp, #136
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label452
	ldr r0, [sp, #200]
	ldr r1, [sp, #196]
	add r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bl putint
	mov r2, #0
.p2align 4
label455:
	ldr r0, [sp, #0]
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
	blt label455
	ldr r0, [sp, #0]
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
	ldr r1, [sp, #136]
	add r2, r0, r1, lsl #2
	ldr r3, [r2, #0]
	adds r3, r3, #1
	str r3, [r2, #0]
	ldr r7, [sp, #140]
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
	ldr r6, [sp, #144]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #148]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #152]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #156]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #160]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #164]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #168]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #172]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #176]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #180]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #184]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #188]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #192]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #196]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #200]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #204]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #208]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #212]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #216]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #220]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #224]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #228]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #232]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #236]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #240]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #244]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #248]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #252]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #256]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r5, [sp, #260]
	add r3, r0, r5, lsl #2
	ldr r0, [r3, #0]
	add r6, r0, #1
	str r6, [r3, #0]
	mov r0, r2
	cmp r1, r6
	movlt r0, r5
	bl putint
	mov r1, r4
	ldr r0, [sp, #8]
	str r0, [sp, #136]
	ldr r0, [sp, #12]
	str r0, [sp, #140]
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
	rsb r0, r4, #32
	cmp r4, #31
	sub r0, r0, #1
	blt label1082
label1081:
	mov r4, #0
	b label465
.p2align 4
label1082:
	mov r2, #0
	cmp r0, r2
	ble label1085
.p2align 4
label462:
	add r6, sp, #136
	add r5, r2, #1
	add r4, r6, r2, lsl #2
	ldr r3, [r4, #0]
	ldr r4, [r4, #4]
	cmp r3, r4
	bgt label463
	mov r2, r5
	cmp r0, r5
	bgt label462
	b label1829
.p2align 4
label463:
	add r6, sp, #136
	add r2, r6, r2, lsl #2
	str r3, [r2, #4]
	str r4, [r2, #0]
	mov r2, r5
	cmp r0, r5
	bgt label462
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label1082
	b label1081
.p2align 4
label465:
	add r6, sp, #136
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label465
	ldr r0, [sp, #8]
	str r0, [sp, #136]
	ldr r0, [sp, #12]
	str r0, [sp, #140]
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
	mov r0, #1
	cmp r0, #32
	blt label498
label1205:
	mov r4, #0
.p2align 4
label470:
	add r6, sp, #136
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label470
	ldr r0, [sp, #8]
	add r6, sp, #136
	mov r1, #0
	mov r2, #31
	str r0, [sp, #136]
	ldr r0, [sp, #12]
	str r0, [sp, #140]
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
	mov r0, r6
	bl QuickSort
	mov r4, #0
.p2align 4
label473:
	add r6, sp, #136
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label473
	ldr r0, [sp, #8]
	mov r1, #0
	str r0, [sp, #136]
	ldr r0, [sp, #12]
	str r0, [sp, #140]
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
	mov r0, r1
	cmp r1, #32
	blt label495
	b label1413
.p2align 4
label498:
	add r6, sp, #136
	sub r2, r0, #1
	ldr r1, [r6, r0, lsl #2]
	add r3, r2, #1
	cmn r2, #1
	bgt label502
.p2align 4
label501:
	add r6, sp, #136
	add r0, r0, #1
	str r1, [r6, r3, lsl #2]
	cmp r0, #32
	blt label498
	b label1205
.p2align 4
label502:
	add r6, sp, #136
	ldr r4, [r6, r2, lsl #2]
	cmp r1, r4
	bge label501
	sub r2, r2, #1
	str r4, [r6, r3, lsl #2]
	add r3, r2, #1
	cmn r2, #1
	bgt label502
	add r0, r0, #1
	str r1, [r6, r3, lsl #2]
	cmp r0, #32
	blt label498
	b label1205
label1413:
	mov r4, #0
.p2align 4
label479:
	add r6, sp, #136
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label479
	ldr r0, [sp, #8]
	mov r2, #0
	mov r1, r2
	str r0, [sp, #136]
	ldr r0, [sp, #12]
	str r0, [sp, #140]
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
	mov r0, r2
	cmp r2, #32
	blt label486
	b label1519
.p2align 4
label495:
	add r6, sp, #136
	and r3, r0, #3
	ldr r2, [r6, r0, lsl #2]
	cmp r3, #3
	add r1, r1, r2
	add r2, r0, #1
	bne label497
	str r1, [r6, r0, lsl #2]
	mov r0, r2
	mov r1, #0
	cmp r2, #32
	blt label495
	b label1413
.p2align 4
label497:
	mov r3, #0
	add r6, sp, #136
	str r3, [r6, r0, lsl #2]
	mov r0, r2
	cmp r2, #32
	blt label495
	b label1413
label1519:
	mov r4, #0
	str r4, [sp, #256]
	str r4, [sp, #260]
	b label492
.p2align 4
label486:
	cmp r0, #2
	blt label490
	b label487
.p2align 4
label488:
	ldr r2, [sp, #136]
	movw r0, #21846
	movt r0, #21845
	smmul r0, r1, r0
	add r0, r0, r0, lsr #31
	str r0, [sp, #136]
	mov r0, #3
	cmp r0, #32
	blt label486
	b label1519
.p2align 4
label490:
	add r6, sp, #136
	ldr r3, [r6, r0, lsl #2]
	add r0, r0, #1
	add r1, r1, r3
	cmp r0, #32
	blt label486
	b label1519
.p2align 4
label492:
	add r6, sp, #136
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label492
	mov r0, #0
	add sp, sp, #268
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label487:
	cmp r0, #2
	beq label488
	add r6, sp, #136
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
	blt label486
	b label1519
.p2align 4
label1829:
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label1082
	b label1081
.p2align 4
label1826:
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label584
	b label583
label1085:
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label1082
	b label1081
label587:
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label584
	b label583
