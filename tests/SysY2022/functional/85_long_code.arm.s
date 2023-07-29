.arch armv7ve
.data
.bss
.align 4
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
	ble label4
	ldr r0, [r4, r1, lsl #2]
	mov r3, r5
	mov r6, r1
	sub r2, r0, #1
	b label6
label4:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
.p2align 4
label6:
	cmp r3, r6
	bgt label10
label9:
	str r0, [r4, r6, lsl #2]
	sub r2, r6, #1
	mov r0, r4
	bl QuickSort
	add r1, r6, #1
	b label2
.p2align 4
label10:
	cmp r6, r3
	blt label20
	cmp r3, r6
	ble label9
.p2align 4
label15:
	ldr r7, [r4, r6, lsl #2]
	cmp r0, r7
	bgt label16
	cmp r3, r6
	bgt label18
	b label9
.p2align 4
label20:
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	blt label21
	cmp r6, r3
	blt label19
	cmp r3, r6
	bgt label15
	b label9
.p2align 4
label18:
	ldr r7, [r4, r6, lsl #2]
	str r7, [r4, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, r6
	bgt label10
	b label9
.p2align 4
label16:
	add r6, r6, #1
	cmp r3, r6
	bgt label15
	b label9
.p2align 4
label21:
	sub r3, r3, #1
	cmp r6, r3
	blt label20
	cmp r3, r6
	bgt label15
	b label9
.p2align 4
label19:
	ldr r7, [r4, r3, lsl #2]
	str r7, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r3, r6
	bgt label15
	b label9
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r3, #89
	sub sp, sp, #364
	mov r2, #23
	mov r8, #28
	mov r1, #7
	movw r6, #282
	mov r7, #254
	mov r11, #27
	mov r5, #26
	mov r9, #1
	movw r10, #290
	add r0, sp, #100
	add r4, sp, #232
	str r4, [sp, #92]
	str r0, [sp, #68]
	str r1, [sp, #100]
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
	str r11, [sp, #228]
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
	str r1, [sp, #232]
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
	ldr r11, [sp, #228]
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
	b label134
.p2align 4
label133:
	ldr r4, [sp, #92]
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r2, r6
	bgt label132
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label266
	b label1538
.p2align 4
label134:
	ldr r4, [sp, #92]
	ldr r0, [r4, r5, lsl #2]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label134
	ldr r4, [sp, #92]
	ldr r0, [r4, #64]
	ldr r1, [r4, #60]
	add r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bl putint
	mov r2, #0
	b label137
.p2align 4
label266:
	mov r0, #0
	cmp r2, r0
	bgt label132
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label266
	b label1538
.p2align 4
label132:
	ldr r4, [sp, #92]
	add r6, r0, #1
	ldr r3, [r4, r0, lsl #2]
	add r5, r4, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r3, r5
	bgt label133
	mov r0, r6
	cmp r2, r6
	bgt label132
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label266
	b label1538
.p2align 4
label137:
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
	blt label137
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
	ldr r1, [sp, #232]
	ldr r0, [r3, r1, lsl #2]
	adds r0, r0, #1
	bic r2, r0, r0, asr #31
	str r0, [r3, r1, lsl #2]
	ldr r4, [sp, #92]
	ldr r0, [r4, #4]
	ldr r6, [r3, r0, lsl #2]
	add r7, r6, #1
	str r7, [r3, r0, lsl #2]
	mov r6, #0
	movgt r6, r1
	mov r1, r2
	cmp r2, r7
	movle r1, r7
	movlt r6, r0
	ldr r7, [r4, #8]
	mov r2, r6
	ldr r0, [r3, r7, lsl #2]
	add r8, r0, #1
	str r8, [r3, r7, lsl #2]
	mov r0, r1
	cmp r1, r8
	movle r0, r8
	movlt r2, r7
	ldr r6, [r4, #12]
	ldr r1, [r3, r6, lsl #2]
	add r7, r1, #1
	str r7, [r3, r6, lsl #2]
	mov r1, r2
	cmp r0, r7
	movle r0, r7
	movlt r1, r6
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
	ldr r0, [sp, #100]
	str r0, [sp, #232]
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
	blt label764
.p2align 4
label763:
	mov r5, #0
	b label147
.p2align 4
label764:
	mov r0, #0
	cmp r2, r0
	bgt label144
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label764
	b label763
.p2align 4
label144:
	ldr r4, [sp, #92]
	add r6, r0, #1
	ldr r3, [r4, r0, lsl #2]
	add r5, r4, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r3, r5
	bgt label145
	mov r0, r6
	cmp r2, r6
	bgt label144
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label764
	b label763
.p2align 4
label147:
	ldr r4, [sp, #92]
	ldr r0, [r4, r5, lsl #2]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label147
	ldr r0, [sp, #100]
	str r0, [sp, #232]
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
	bge label887
.p2align 4
label180:
	ldr r4, [sp, #92]
	sub r2, r0, #1
	ldr r1, [r4, r0, lsl #2]
	cmn r2, #1
	bgt label183
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r4, r2, lsl #2]
	cmp r0, #32
	blt label180
	b label887
.p2align 4
label145:
	ldr r4, [sp, #92]
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r2, r6
	bgt label144
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label764
	b label763
.p2align 4
label183:
	ldr r4, [sp, #92]
	ldr r3, [r4, r2, lsl #2]
	cmp r1, r3
	blt label184
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r4, r2, lsl #2]
	cmp r0, #32
	blt label180
	b label887
.p2align 4
label184:
	add r5, r2, #1
	ldr r4, [sp, #92]
	sub r2, r2, #1
	str r3, [r4, r5, lsl #2]
	cmn r2, #1
	bgt label183
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r4, r2, lsl #2]
	cmp r0, #32
	blt label180
.p2align 4
label887:
	mov r5, #0
.p2align 4
label152:
	ldr r4, [sp, #92]
	ldr r0, [r4, r5, lsl #2]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label152
	ldr r0, [sp, #100]
	mov r2, #31
	str r0, [sp, #232]
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
label155:
	ldr r4, [sp, #92]
	ldr r0, [r4, r5, lsl #2]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label155
	ldr r0, [sp, #100]
	str r0, [sp, #232]
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
	bge label1095
.p2align 4
label161:
	ldr r4, [sp, #92]
	ldr r2, [r4, r0, lsl #2]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	bne label162
	str r1, [r4, r0, lsl #2]
	mov r1, #0
	add r0, r0, #1
	cmp r0, #32
	blt label161
	b label1095
.p2align 4
label162:
	mov r2, #0
	ldr r4, [sp, #92]
	str r2, [r4, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	blt label161
.p2align 4
label1095:
	mov r5, #0
.p2align 4
label164:
	ldr r4, [sp, #92]
	ldr r0, [r4, r5, lsl #2]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label164
	ldr r0, [sp, #100]
	mov r2, #0
	str r0, [sp, #232]
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
label167:
	cmp r1, #32
	bge label1216
.p2align 4
label171:
	cmp r1, #2
	blt label172
	bne label174
	ldr r2, [sp, #232]
	movw r1, #21846
	movt r1, #21845
	smmul r1, r0, r1
	add r1, r1, r1, lsr #31
	str r1, [sp, #232]
	mov r1, #3
	b label167
label174:
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
	b label167
.p2align 4
label1216:
	mov r5, #0
	ldr r4, [sp, #92]
	str r5, [r4, #120]
	str r5, [r4, #124]
	b label177
.p2align 4
label172:
	ldr r4, [sp, #92]
	ldr r3, [r4, r1, lsl #2]
	add r1, r1, #1
	add r0, r0, r3
	cmp r1, #32
	blt label171
	b label1216
.p2align 4
label177:
	ldr r4, [sp, #92]
	ldr r0, [r4, r5, lsl #2]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label177
	mov r0, #0
	add sp, sp, #364
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
