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
	push { r4, r5, r6, r7, lr }
	mov r5, r2
	mov r4, r0
	sub sp, sp, #4
label2:
	cmp r5, r1
	ble label21
	ldr r0, [r4, r1, lsl #2]
	mov r3, r5
	mov r6, r1
	sub r2, r0, #1
	bgt label9
label8:
	str r0, [r4, r6, lsl #2]
	sub r2, r6, #1
	mov r0, r4
	bl QuickSort
	add r1, r6, #1
	b label2
.p2align 4
label9:
	cmp r6, r3
	blt label19
	cmp r3, r6
	ble label8
.p2align 4
label14:
	ldr r7, [r4, r6, lsl #2]
	cmp r0, r7
	bgt label15
	cmp r3, r6
	bgt label17
	b label8
.p2align 4
label19:
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	blt label20
	cmp r6, r3
	blt label18
	cmp r3, r6
	bgt label14
	b label8
label21:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
.p2align 4
label17:
	ldr r7, [r4, r6, lsl #2]
	str r7, [r4, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, r6
	bgt label9
	b label8
.p2align 4
label15:
	add r6, r6, #1
	cmp r3, r6
	bgt label14
	b label8
.p2align 4
label20:
	sub r3, r3, #1
	cmp r6, r3
	blt label19
	cmp r3, r6
	bgt label14
	b label8
.p2align 4
label18:
	ldr r7, [r4, r3, lsl #2]
	str r7, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r3, r6
	bgt label14
	b label8
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, #26
	sub sp, sp, #372
	mov r3, #89
	mov r8, #28
	mov r2, #23
	mov r7, #254
	mov r1, #7
	movw r6, #282
	mov r11, #27
	mov r9, #1
	movw r10, #290
	add r0, sp, #104
	add r4, sp, #240
	str r4, [sp, #92]
	str r0, [sp, #68]
	str r1, [sp, #104]
	str r2, [r0, #4]
	str r3, [r0, #8]
	str r5, [r0, #12]
	str r6, [r0, #16]
	str r7, [r0, #20]
	str r11, [sp, #88]
	str r11, [r0, #24]
	mov r11, #5
	str r11, [sp, #60]
	str r11, [r0, #28]
	mov r11, #83
	str r11, [sp, #64]
	str r11, [r0, #32]
	movw r11, #273
	str r11, [sp, #0]
	str r11, [r0, #36]
	movw r11, #574
	str r11, [sp, #4]
	str r11, [r0, #40]
	movw r11, #905
	str r11, [sp, #8]
	str r11, [r0, #44]
	movw r11, #354
	str r11, [sp, #12]
	str r11, [r0, #48]
	movw r11, #657
	str r11, [sp, #16]
	str r11, [r0, #52]
	movw r11, #935
	str r11, [sp, #20]
	str r11, [r0, #56]
	mov r11, #264
	str r11, [sp, #24]
	str r11, [r0, #60]
	movw r11, #639
	str r11, [sp, #28]
	str r11, [r0, #64]
	movw r11, #459
	str r11, [sp, #32]
	str r11, [r0, #68]
	mov r11, #29
	str r11, [sp, #36]
	str r11, [r0, #72]
	mov r11, #68
	str r11, [sp, #40]
	str r11, [r0, #76]
	movw r11, #929
	str r11, [sp, #44]
	str r11, [r0, #80]
	mov r11, #756
	str r11, [sp, #96]
	str r11, [r0, #84]
	mov r11, #452
	str r11, [sp, #48]
	str r11, [r0, #88]
	movw r11, #279
	str r11, [sp, #232]
	str r11, [r0, #92]
	mov r11, #58
	str r11, [sp, #52]
	str r11, [r0, #96]
	mov r11, #87
	str r11, [sp, #72]
	str r11, [r0, #100]
	mov r11, #96
	str r11, [sp, #76]
	str r11, [r0, #104]
	mov r11, #36
	str r11, [sp, #80]
	str r11, [r0, #108]
	mov r11, #39
	str r11, [sp, #84]
	str r11, [r0, #112]
	str r8, [r0, #116]
	str r9, [r0, #120]
	str r10, [r0, #124]
	str r1, [sp, #240]
	str r2, [r4, #4]
	str r3, [r4, #8]
	movw r3, #:lower16:count
	str r5, [r4, #12]
	movt r3, #:upper16:count
	mov r5, #0
	str r6, [r4, #16]
	str r7, [r4, #20]
	ldr r11, [sp, #88]
	str r11, [r4, #24]
	ldr r11, [sp, #60]
	str r11, [r4, #28]
	ldr r11, [sp, #64]
	str r11, [r4, #32]
	ldr r11, [sp, #0]
	str r11, [r4, #36]
	ldr r11, [sp, #4]
	str r11, [r4, #40]
	ldr r11, [sp, #8]
	str r11, [r4, #44]
	ldr r11, [sp, #12]
	str r11, [r4, #48]
	ldr r11, [sp, #16]
	str r11, [r4, #52]
	ldr r11, [sp, #20]
	str r11, [r4, #56]
	ldr r11, [sp, #24]
	str r11, [r4, #60]
	ldr r11, [sp, #28]
	str r11, [r4, #64]
	ldr r11, [sp, #32]
	str r11, [r4, #68]
	ldr r11, [sp, #36]
	str r11, [r4, #72]
	ldr r11, [sp, #40]
	str r11, [r4, #76]
	ldr r11, [sp, #44]
	str r11, [r4, #80]
	ldr r11, [sp, #96]
	str r11, [r4, #84]
	ldr r11, [sp, #48]
	str r11, [r4, #88]
	ldr r11, [sp, #232]
	str r11, [r4, #92]
	ldr r11, [sp, #52]
	str r11, [r4, #96]
	ldr r11, [sp, #72]
	str r11, [r4, #100]
	ldr r11, [sp, #76]
	str r11, [r4, #104]
	ldr r11, [sp, #80]
	str r11, [r4, #108]
	ldr r11, [sp, #84]
	str r11, [r4, #112]
	str r8, [r4, #116]
	str r9, [r4, #120]
	str r10, [r4, #124]
	str r3, [sp, #56]
.p2align 4
label125:
	ldr r4, [sp, #92]
	ldr r0, [r4, r5, lsl #2]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label125
	mov r1, #0
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label266
.p2align 4
label1538:
	mov r5, #0
	b label129
.p2align 4
label266:
	mov r0, #0
	cmp r2, r0
	bgt label184
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label266
	b label1538
.p2align 4
label129:
	ldr r4, [sp, #92]
	ldr r0, [r4, r5, lsl #2]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label129
	ldr r4, [sp, #92]
	ldr r0, [r4, #64]
	ldr r1, [r4, #60]
	add r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bl putint
	mov r2, #0
.p2align 4
label132:
	ldr r3, [sp, #56]
	mov r1, #0
	add r0, r3, r2, lsl #2
	str r1, [r3, r2, lsl #2]
	add r2, r2, #64
	str r1, [r0, #4]
	cmp r2, #960
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
	blt label132
	mov r5, #0
	add r0, r3, r2, lsl #2
	str r5, [r3, r2, lsl #2]
	str r5, [r0, #4]
	str r5, [r0, #8]
	str r5, [r0, #12]
	str r5, [r0, #16]
	str r5, [r0, #20]
	str r5, [r0, #24]
	str r5, [r0, #28]
	str r5, [r0, #32]
	str r5, [r0, #36]
	str r5, [r0, #40]
	str r5, [r0, #44]
	str r5, [r0, #48]
	str r5, [r0, #52]
	str r5, [r0, #56]
	str r5, [r0, #60]
	str r5, [r0, #64]
	str r5, [r0, #68]
	str r5, [r0, #72]
	str r5, [r0, #76]
	str r5, [r0, #80]
	str r5, [r0, #84]
	str r5, [r0, #88]
	str r5, [r0, #92]
	str r5, [r0, #96]
	str r5, [r0, #100]
	str r5, [r0, #104]
	str r5, [r0, #108]
	str r5, [r0, #112]
	str r5, [r0, #116]
	str r5, [r0, #120]
	str r5, [r0, #124]
	str r5, [r0, #128]
	str r5, [r0, #132]
	str r5, [r0, #136]
	str r5, [r0, #140]
	str r5, [r0, #144]
	str r5, [r0, #148]
	str r5, [r0, #152]
	str r5, [r0, #156]
	ldr r0, [sp, #240]
	ldr r1, [r3, r0, lsl #2]
	adds r1, r1, #1
	bic r2, r1, r1, asr #31
	str r1, [r3, r0, lsl #2]
	ldr r4, [sp, #92]
	ldr r1, [r4, #4]
	ldr r6, [r3, r1, lsl #2]
	add r7, r6, #1
	str r7, [r3, r1, lsl #2]
	mov r6, #0
	movgt r6, r0
	mov r0, r2
	cmp r2, r7
	movle r0, r7
	movlt r6, r1
	ldr r2, [r4, #8]
	ldr r1, [r3, r2, lsl #2]
	add r7, r1, #1
	str r7, [r3, r2, lsl #2]
	mov r1, r6
	cmp r0, r7
	movle r0, r7
	movlt r1, r2
	ldr r2, [r4, #12]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #16]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #20]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #24]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #28]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #32]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #36]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #40]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #44]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #48]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #52]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #56]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #60]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #64]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #68]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #72]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #76]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #80]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #84]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #88]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #92]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #96]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #100]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #104]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #108]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #112]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #116]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #120]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	movle r0, r6
	movlt r1, r2
	ldr r2, [r4, #124]
	ldr r6, [r3, r2, lsl #2]
	add r6, r6, #1
	str r6, [r3, r2, lsl #2]
	cmp r0, r6
	mov r0, r1
	movlt r0, r2
	bl putint
	ldr r0, [sp, #104]
	str r0, [sp, #240]
	ldr r0, [sp, #68]
	ldr r1, [r0, #4]
	str r1, [r4, #4]
	ldr r1, [r0, #8]
	str r1, [r4, #8]
	ldr r1, [r0, #12]
	str r1, [r4, #12]
	ldr r1, [r0, #16]
	str r1, [r4, #16]
	ldr r1, [r0, #20]
	str r1, [r4, #20]
	ldr r1, [r0, #24]
	str r1, [r4, #24]
	ldr r1, [r0, #28]
	str r1, [r4, #28]
	ldr r1, [r0, #32]
	str r1, [r4, #32]
	ldr r1, [r0, #36]
	str r1, [r4, #36]
	ldr r1, [r0, #40]
	str r1, [r4, #40]
	ldr r1, [r0, #44]
	str r1, [r4, #44]
	ldr r1, [r0, #48]
	str r1, [r4, #48]
	ldr r1, [r0, #52]
	str r1, [r4, #52]
	ldr r1, [r0, #56]
	str r1, [r4, #56]
	ldr r1, [r0, #60]
	str r1, [r4, #60]
	ldr r1, [r0, #64]
	str r1, [r4, #64]
	ldr r1, [r0, #68]
	str r1, [r4, #68]
	ldr r1, [r0, #72]
	str r1, [r4, #72]
	ldr r1, [r0, #76]
	str r1, [r4, #76]
	ldr r1, [r0, #80]
	str r1, [r4, #80]
	ldr r1, [r0, #84]
	str r1, [r4, #84]
	ldr r1, [r0, #88]
	str r1, [r4, #88]
	ldr r1, [r0, #92]
	str r1, [r4, #92]
	ldr r1, [r0, #96]
	str r1, [r4, #96]
	ldr r1, [r0, #100]
	str r1, [r4, #100]
	ldr r1, [r0, #104]
	str r1, [r4, #104]
	ldr r1, [r0, #108]
	str r1, [r4, #108]
	ldr r1, [r0, #112]
	str r1, [r4, #112]
	ldr r1, [r0, #116]
	str r1, [r4, #116]
	ldr r1, [r0, #120]
	str r1, [r4, #120]
	mov r1, r5
	ldr r0, [r0, #124]
	str r0, [r4, #124]
	rsb r0, r5, #32
	cmp r5, #31
	sub r2, r0, #1
	blt label746
	b label745
.p2align 4
label185:
	ldr r4, [sp, #92]
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r2, r6
	bgt label184
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label266
	b label1538
.p2align 4
label745:
	mov r5, #0
	b label142
.p2align 4
label746:
	mov r0, #0
	cmp r2, r0
	bgt label139
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label746
	b label745
.p2align 4
label139:
	ldr r4, [sp, #92]
	add r6, r0, #1
	ldr r3, [r4, r0, lsl #2]
	add r5, r4, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r3, r5
	bgt label140
	mov r0, r6
	cmp r2, r6
	bgt label139
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label746
	b label745
.p2align 4
label140:
	ldr r4, [sp, #92]
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r2, r6
	bgt label139
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label746
	b label745
.p2align 4
label142:
	ldr r4, [sp, #92]
	ldr r0, [r4, r5, lsl #2]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label142
	ldr r0, [sp, #104]
	str r0, [sp, #240]
	ldr r0, [sp, #68]
	ldr r1, [r0, #4]
	ldr r4, [sp, #92]
	str r1, [r4, #4]
	ldr r1, [r0, #8]
	str r1, [r4, #8]
	ldr r1, [r0, #12]
	str r1, [r4, #12]
	ldr r1, [r0, #16]
	str r1, [r4, #16]
	ldr r1, [r0, #20]
	str r1, [r4, #20]
	ldr r1, [r0, #24]
	str r1, [r4, #24]
	ldr r1, [r0, #28]
	str r1, [r4, #28]
	ldr r1, [r0, #32]
	str r1, [r4, #32]
	ldr r1, [r0, #36]
	str r1, [r4, #36]
	ldr r1, [r0, #40]
	str r1, [r4, #40]
	ldr r1, [r0, #44]
	str r1, [r4, #44]
	ldr r1, [r0, #48]
	str r1, [r4, #48]
	ldr r1, [r0, #52]
	str r1, [r4, #52]
	ldr r1, [r0, #56]
	str r1, [r4, #56]
	ldr r1, [r0, #60]
	str r1, [r4, #60]
	ldr r1, [r0, #64]
	str r1, [r4, #64]
	ldr r1, [r0, #68]
	str r1, [r4, #68]
	ldr r1, [r0, #72]
	str r1, [r4, #72]
	ldr r1, [r0, #76]
	str r1, [r4, #76]
	ldr r1, [r0, #80]
	str r1, [r4, #80]
	ldr r1, [r0, #84]
	str r1, [r4, #84]
	ldr r1, [r0, #88]
	str r1, [r4, #88]
	ldr r1, [r0, #92]
	str r1, [r4, #92]
	ldr r1, [r0, #96]
	str r1, [r4, #96]
	ldr r1, [r0, #100]
	str r1, [r4, #100]
	ldr r1, [r0, #104]
	str r1, [r4, #104]
	ldr r1, [r0, #108]
	str r1, [r4, #108]
	ldr r1, [r0, #112]
	str r1, [r4, #112]
	ldr r1, [r0, #116]
	str r1, [r4, #116]
	ldr r1, [r0, #120]
	str r1, [r4, #120]
	ldr r0, [r0, #124]
	str r0, [r4, #124]
	mov r0, #1
	cmp r0, #32
	bge label869
.p2align 4
label175:
	ldr r4, [sp, #92]
	sub r2, r0, #1
	ldr r1, [r4, r0, lsl #2]
	cmn r2, #1
	bgt label178
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r4, r2, lsl #2]
	cmp r0, #32
	blt label175
	b label869
.p2align 4
label184:
	ldr r4, [sp, #92]
	add r6, r0, #1
	ldr r3, [r4, r0, lsl #2]
	add r5, r4, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r3, r5
	bgt label185
	mov r0, r6
	cmp r2, r6
	bgt label184
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label266
	b label1538
.p2align 4
label178:
	ldr r4, [sp, #92]
	ldr r3, [r4, r2, lsl #2]
	cmp r1, r3
	blt label179
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r4, r2, lsl #2]
	cmp r0, #32
	blt label175
	b label869
.p2align 4
label179:
	add r5, r2, #1
	ldr r4, [sp, #92]
	sub r2, r2, #1
	str r3, [r4, r5, lsl #2]
	cmn r2, #1
	bgt label178
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r4, r2, lsl #2]
	cmp r0, #32
	blt label175
.p2align 4
label869:
	mov r5, #0
.p2align 4
label147:
	ldr r4, [sp, #92]
	ldr r0, [r4, r5, lsl #2]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label147
	ldr r0, [sp, #104]
	mov r2, #31
	str r0, [sp, #240]
	ldr r0, [sp, #68]
	ldr r1, [r0, #4]
	ldr r4, [sp, #92]
	str r1, [r4, #4]
	ldr r1, [r0, #8]
	str r1, [r4, #8]
	ldr r1, [r0, #12]
	str r1, [r4, #12]
	ldr r1, [r0, #16]
	str r1, [r4, #16]
	ldr r1, [r0, #20]
	str r1, [r4, #20]
	ldr r1, [r0, #24]
	str r1, [r4, #24]
	ldr r1, [r0, #28]
	str r1, [r4, #28]
	ldr r1, [r0, #32]
	str r1, [r4, #32]
	ldr r1, [r0, #36]
	str r1, [r4, #36]
	ldr r1, [r0, #40]
	str r1, [r4, #40]
	ldr r1, [r0, #44]
	str r1, [r4, #44]
	ldr r1, [r0, #48]
	str r1, [r4, #48]
	ldr r1, [r0, #52]
	str r1, [r4, #52]
	ldr r1, [r0, #56]
	str r1, [r4, #56]
	ldr r1, [r0, #60]
	str r1, [r4, #60]
	ldr r1, [r0, #64]
	str r1, [r4, #64]
	ldr r1, [r0, #68]
	str r1, [r4, #68]
	ldr r1, [r0, #72]
	str r1, [r4, #72]
	ldr r1, [r0, #76]
	str r1, [r4, #76]
	ldr r1, [r0, #80]
	str r1, [r4, #80]
	ldr r1, [r0, #84]
	str r1, [r4, #84]
	ldr r1, [r0, #88]
	str r1, [r4, #88]
	ldr r1, [r0, #92]
	str r1, [r4, #92]
	ldr r1, [r0, #96]
	str r1, [r4, #96]
	ldr r1, [r0, #100]
	str r1, [r4, #100]
	ldr r1, [r0, #104]
	str r1, [r4, #104]
	ldr r1, [r0, #108]
	str r1, [r4, #108]
	ldr r1, [r0, #112]
	str r1, [r4, #112]
	ldr r1, [r0, #116]
	str r1, [r4, #116]
	ldr r1, [r0, #120]
	str r1, [r4, #120]
	mov r1, #0
	ldr r0, [r0, #124]
	str r0, [r4, #124]
	mov r0, r4
	bl QuickSort
	mov r5, #0
.p2align 4
label150:
	ldr r4, [sp, #92]
	ldr r0, [r4, r5, lsl #2]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label150
	ldr r0, [sp, #104]
	str r0, [sp, #240]
	ldr r0, [sp, #68]
	ldr r1, [r0, #4]
	ldr r4, [sp, #92]
	str r1, [r4, #4]
	ldr r1, [r0, #8]
	str r1, [r4, #8]
	ldr r1, [r0, #12]
	str r1, [r4, #12]
	ldr r1, [r0, #16]
	str r1, [r4, #16]
	ldr r1, [r0, #20]
	str r1, [r4, #20]
	ldr r1, [r0, #24]
	str r1, [r4, #24]
	ldr r1, [r0, #28]
	str r1, [r4, #28]
	ldr r1, [r0, #32]
	str r1, [r4, #32]
	ldr r1, [r0, #36]
	str r1, [r4, #36]
	ldr r1, [r0, #40]
	str r1, [r4, #40]
	ldr r1, [r0, #44]
	str r1, [r4, #44]
	ldr r1, [r0, #48]
	str r1, [r4, #48]
	ldr r1, [r0, #52]
	str r1, [r4, #52]
	ldr r1, [r0, #56]
	str r1, [r4, #56]
	ldr r1, [r0, #60]
	str r1, [r4, #60]
	ldr r1, [r0, #64]
	str r1, [r4, #64]
	ldr r1, [r0, #68]
	str r1, [r4, #68]
	ldr r1, [r0, #72]
	str r1, [r4, #72]
	ldr r1, [r0, #76]
	str r1, [r4, #76]
	ldr r1, [r0, #80]
	str r1, [r4, #80]
	ldr r1, [r0, #84]
	str r1, [r4, #84]
	ldr r1, [r0, #88]
	str r1, [r4, #88]
	ldr r1, [r0, #92]
	str r1, [r4, #92]
	ldr r1, [r0, #96]
	str r1, [r4, #96]
	ldr r1, [r0, #100]
	str r1, [r4, #100]
	ldr r1, [r0, #104]
	str r1, [r4, #104]
	ldr r1, [r0, #108]
	str r1, [r4, #108]
	ldr r1, [r0, #112]
	str r1, [r4, #112]
	ldr r1, [r0, #116]
	str r1, [r4, #116]
	ldr r1, [r0, #120]
	str r1, [r4, #120]
	mov r1, #0
	ldr r0, [r0, #124]
	str r0, [r4, #124]
	mov r0, r1
	cmp r1, #32
	blt label156
.p2align 4
label1077:
	mov r5, #0
	b label159
.p2align 4
label156:
	ldr r4, [sp, #92]
	ldr r2, [r4, r0, lsl #2]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	bne label157
	str r1, [r4, r0, lsl #2]
	mov r1, #0
	add r0, r0, #1
	cmp r0, #32
	blt label156
	b label1077
.p2align 4
label159:
	ldr r4, [sp, #92]
	ldr r0, [r4, r5, lsl #2]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label159
	ldr r0, [sp, #104]
	mov r2, #0
	str r0, [sp, #240]
	ldr r0, [sp, #68]
	ldr r1, [r0, #4]
	ldr r4, [sp, #92]
	str r1, [r4, #4]
	ldr r1, [r0, #8]
	str r1, [r4, #8]
	ldr r1, [r0, #12]
	str r1, [r4, #12]
	ldr r1, [r0, #16]
	str r1, [r4, #16]
	ldr r1, [r0, #20]
	str r1, [r4, #20]
	ldr r1, [r0, #24]
	str r1, [r4, #24]
	ldr r1, [r0, #28]
	str r1, [r4, #28]
	ldr r1, [r0, #32]
	str r1, [r4, #32]
	ldr r1, [r0, #36]
	str r1, [r4, #36]
	ldr r1, [r0, #40]
	str r1, [r4, #40]
	ldr r1, [r0, #44]
	str r1, [r4, #44]
	ldr r1, [r0, #48]
	str r1, [r4, #48]
	ldr r1, [r0, #52]
	str r1, [r4, #52]
	ldr r1, [r0, #56]
	str r1, [r4, #56]
	ldr r1, [r0, #60]
	str r1, [r4, #60]
	ldr r1, [r0, #64]
	str r1, [r4, #64]
	ldr r1, [r0, #68]
	str r1, [r4, #68]
	ldr r1, [r0, #72]
	str r1, [r4, #72]
	ldr r1, [r0, #76]
	str r1, [r4, #76]
	ldr r1, [r0, #80]
	str r1, [r4, #80]
	ldr r1, [r0, #84]
	str r1, [r4, #84]
	ldr r1, [r0, #88]
	str r1, [r4, #88]
	ldr r1, [r0, #92]
	str r1, [r4, #92]
	ldr r1, [r0, #96]
	str r1, [r4, #96]
	ldr r1, [r0, #100]
	str r1, [r4, #100]
	ldr r1, [r0, #104]
	str r1, [r4, #104]
	ldr r1, [r0, #108]
	str r1, [r4, #108]
	ldr r1, [r0, #112]
	str r1, [r4, #112]
	ldr r1, [r0, #116]
	str r1, [r4, #116]
	ldr r1, [r0, #120]
	str r1, [r4, #120]
	ldr r0, [r0, #124]
	str r0, [r4, #124]
	mov r1, r2
	mov r0, r2
.p2align 4
label162:
	cmp r1, #32
	bge label1198
.p2align 4
label170:
	cmp r1, #2
	blt label171
	bne label173
	ldr r2, [sp, #240]
	movw r1, #21846
	movt r1, #21845
	smmul r1, r0, r1
	add r1, r1, r1, lsr #31
	str r1, [sp, #240]
	mov r1, #3
	b label162
label173:
	ldr r4, [sp, #92]
	add r3, r4, r1, lsl #2
	ldr r4, [r4, r1, lsl #2]
	add r1, r1, #1
	add r0, r0, r4
	sub r0, r0, r2
	movw r2, #21846
	movt r2, #21845
	smmul r2, r0, r2
	add r4, r2, r2, lsr #31
	ldr r2, [r3, #-8]
	str r4, [r3, #-8]
	b label162
.p2align 4
label1198:
	mov r5, #0
	ldr r4, [sp, #92]
	str r5, [r4, #120]
	str r5, [r4, #124]
.p2align 4
label167:
	ldr r4, [sp, #92]
	ldr r0, [r4, r5, lsl #2]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label167
	mov r0, #0
	add sp, sp, #372
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label171:
	ldr r4, [sp, #92]
	ldr r3, [r4, r1, lsl #2]
	add r1, r1, #1
	add r0, r0, r3
	cmp r1, #32
	blt label170
	b label1198
.p2align 4
label157:
	mov r2, #0
	ldr r4, [sp, #92]
	str r2, [r4, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	blt label156
	b label1077
