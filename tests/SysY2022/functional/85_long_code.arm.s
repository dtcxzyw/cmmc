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
	mov r4, r2
	mov r3, r0
	sub sp, sp, #20
	str r0, [sp, #4]
	mov r0, r1
	str r2, [sp, #8]
label2:
	ldr r4, [sp, #8]
	cmp r4, r0
	bgt label4
	b label73
label123:
	ldr r5, [sp, #0]
	add r0, r5, #1
	b label2
label73:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label4:
	ldr r3, [sp, #4]
	mov r5, r0
	ldr r1, [r3, r0, lsl #2]
	ldr r4, [sp, #8]
	str r0, [sp, #0]
	sub r2, r1, #1
label5:
	ldr r5, [sp, #0]
	cmp r4, r5
	bgt label8
label86:
	ldr r3, [sp, #4]
	ldr r5, [sp, #0]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	b label19
.p2align 4
label8:
	ldr r5, [sp, #0]
	cmp r5, r4
	blt label15
.p2align 4
label10:
	cmp r4, r5
	ble label94
.p2align 4
label12:
	ldr r3, [sp, #4]
	ldr r6, [r3, r5, lsl #2]
	cmp r1, r6
	ble label13
	add r5, r5, #1
	cmp r4, r5
	bgt label12
	str r5, [sp, #0]
	b label86
.p2align 4
label15:
	ldr r3, [sp, #4]
	ldr r6, [r3, r4, lsl #2]
	cmp r2, r6
	bge label16
	sub r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	blt label15
	cmp r4, r5
	bgt label12
	str r5, [sp, #0]
	b label86
label19:
	cmp r4, r0
	bgt label21
	b label123
label168:
	add r0, r5, #1
	b label19
label21:
	ldr r3, [sp, #4]
	mov r6, r4
	mov r5, r0
	ldr r1, [r3, r0, lsl #2]
	sub r2, r1, #1
label22:
	cmp r6, r5
	ble label131
	cmp r5, r6
	blt label32
	b label27
.p2align 4
label29:
	ldr r3, [sp, #4]
	ldr r7, [r3, r5, lsl #2]
	cmp r1, r7
	ble label146
	add r5, r5, #1
	cmp r6, r5
	bgt label29
	b label131
.p2align 4
label32:
	ldr r3, [sp, #4]
	ldr r7, [r3, r6, lsl #2]
	cmp r2, r7
	bge label157
	sub r6, r6, #1
	cmp r5, r6
	blt label32
	cmp r6, r5
	bgt label29
	b label131
.p2align 4
label27:
	cmp r6, r5
	bgt label29
	b label131
label16:
	ldr r3, [sp, #4]
	ldr r5, [sp, #0]
	str r6, [r3, r5, lsl #2]
	add r5, r5, #1
	b label10
label13:
	ldr r3, [sp, #4]
	str r6, [r3, r4, lsl #2]
	str r5, [sp, #0]
	sub r4, r4, #1
	b label5
label131:
	ldr r3, [sp, #4]
	sub r6, r5, #1
	str r1, [r3, r5, lsl #2]
label36:
	cmp r6, r0
	bgt label38
	b label168
label55:
	add r0, r7, #1
	b label36
label38:
	ldr r3, [sp, #4]
	mov r8, r6
	mov r7, r0
	ldr r1, [r3, r0, lsl #2]
	sub r2, r1, #1
label39:
	cmp r8, r7
	bgt label42
label176:
	ldr r3, [sp, #4]
	sub r8, r7, #1
	str r1, [r3, r7, lsl #2]
	mov r1, r0
	b label53
.p2align 4
label42:
	cmp r7, r8
	blt label49
.p2align 4
label44:
	cmp r8, r7
	ble label184
.p2align 4
label46:
	ldr r3, [sp, #4]
	ldr r9, [r3, r7, lsl #2]
	cmp r1, r9
	ble label47
	add r7, r7, #1
	cmp r8, r7
	bgt label46
	b label176
label53:
	cmp r8, r1
	bgt label56
	b label55
.p2align 4
label60:
	cmp r9, r10
	blt label62
	cmp r10, r9
	bgt label67
	b label297
.p2align 4
label62:
	ldr r3, [sp, #4]
	ldr r11, [r3, r10, lsl #2]
	cmp r2, r11
	bge label233
	sub r10, r10, #1
	cmp r9, r10
	blt label62
	cmp r10, r9
	ble label307
.p2align 4
label67:
	ldr r3, [sp, #4]
	ldr r11, [r3, r9, lsl #2]
	cmp r0, r11
	ble label68
	add r9, r9, #1
	cmp r10, r9
	bgt label67
label70:
	ldr r3, [sp, #4]
	sub r2, r9, #1
	str r0, [r3, r9, lsl #2]
	mov r0, r3
	bl QuickSort
	add r1, r9, #1
	b label53
.p2align 4
label49:
	ldr r3, [sp, #4]
	ldr r9, [r3, r8, lsl #2]
	cmp r2, r9
	bge label202
	sub r8, r8, #1
	cmp r7, r8
	blt label49
	cmp r8, r7
	bgt label46
	b label176
label56:
	ldr r3, [sp, #4]
	mov r10, r8
	mov r9, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
label57:
	cmp r10, r9
	bgt label60
	b label70
label233:
	ldr r3, [sp, #4]
	str r11, [r3, r9, lsl #2]
	add r9, r9, #1
	cmp r10, r9
	bgt label67
	b label70
label68:
	ldr r3, [sp, #4]
	str r11, [r3, r10, lsl #2]
	sub r10, r10, #1
	b label57
label47:
	ldr r3, [sp, #4]
	str r9, [r3, r8, lsl #2]
	sub r8, r8, #1
	b label39
.p2align 4
label184:
	cmp r8, r7
	bgt label42
	b label176
.p2align 4
label94:
	str r5, [sp, #0]
	cmp r4, r5
	bgt label8
	b label86
.p2align 4
label297:
	cmp r10, r9
	bgt label60
	b label70
.p2align 4
label307:
	cmp r10, r9
	bgt label60
	b label70
label157:
	ldr r3, [sp, #4]
	str r7, [r3, r5, lsl #2]
	add r5, r5, #1
	b label27
label146:
	ldr r3, [sp, #4]
	str r7, [r3, r6, lsl #2]
	sub r6, r6, #1
	b label22
label202:
	ldr r3, [sp, #4]
	str r9, [r3, r7, lsl #2]
	add r7, r7, #1
	b label44
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r10, #290
	mov r0, #1
	mov r9, #28
	movw r5, #282
	mov r4, #26
	mov r7, #27
	mov r1, #7
	mov r2, #23
	sub sp, sp, #260
	mov r11, #5
	mov r3, #89
	mov r6, #254
	str r1, [sp, #0]
	mov r8, #39
	str r2, [sp, #4]
	str r3, [sp, #8]
	str r4, [sp, #12]
	str r5, [sp, #16]
	str r6, [sp, #20]
	str r7, [sp, #24]
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
	mov r11, #5
	str r8, [sp, #112]
	str r9, [sp, #116]
	str r0, [sp, #120]
	str r10, [sp, #124]
	str r1, [sp, #128]
	str r2, [sp, #132]
	str r3, [sp, #136]
	str r4, [sp, #140]
	mov r4, #0
	str r5, [sp, #144]
	str r6, [sp, #148]
	str r7, [sp, #152]
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
	str r8, [sp, #240]
	str r9, [sp, #244]
	str r0, [sp, #248]
	str r10, [sp, #252]
.p2align 4
label334:
	add r6, sp, #128
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label334
	mov r1, #0
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	bge label474
.p2align 4
label475:
	mov r2, #0
	cmp r0, r2
	ble label392
.p2align 4
label393:
	add r6, sp, #128
	add r5, r2, #1
	add r4, r6, r2, lsl #2
	ldr r3, [r4, #0]
	ldr r4, [r4, #4]
	cmp r3, r4
	bgt label394
	mov r2, r5
	cmp r0, r5
	bgt label393
	b label1728
.p2align 4
label394:
	add r6, sp, #128
	add r2, r6, r2, lsl #2
	str r3, [r2, #4]
	str r4, [r2, #0]
	mov r2, r5
	cmp r0, r5
	bgt label393
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label475
label474:
	mov r4, #0
.p2align 4
label338:
	add r6, sp, #128
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label338
	ldr r0, [sp, #192]
	ldr r1, [sp, #188]
	add r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bl putint
	mov r2, #0
.p2align 4
label341:
	movw r0, #:lower16:count
	movt r0, #:upper16:count
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
	blt label341
	movw r0, #:lower16:count
	movt r0, #:upper16:count
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
	ldr r1, [sp, #128]
	add r2, r0, r1, lsl #2
	ldr r3, [r2, #0]
	adds r3, r3, #1
	str r3, [r2, #0]
	ldr r7, [sp, #132]
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
	ldr r6, [sp, #136]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #140]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
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
	ldr r3, [sp, #252]
	movle r1, r5
	movlt r2, r6
	add r5, r0, r3, lsl #2
	ldr r0, [r5, #0]
	add r6, r0, #1
	str r6, [r5, #0]
	mov r0, r2
	cmp r1, r6
	movlt r0, r3
	bl putint
	mov r1, r4
	ldr r0, [sp, #0]
	str r0, [sp, #128]
	ldr r0, [sp, #4]
	str r0, [sp, #132]
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
	rsb r0, r4, #32
	cmp r4, #31
	sub r0, r0, #1
	blt label955
	b label954
.p2align 4
label1728:
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label475
	b label474
label954:
	mov r4, #0
	b label351
.p2align 4
label348:
	add r6, sp, #128
	add r5, r2, #1
	add r4, r6, r2, lsl #2
	ldr r3, [r4, #0]
	ldr r4, [r4, #4]
	cmp r3, r4
	bgt label349
	mov r2, r5
	cmp r0, r5
	bgt label348
	b label1717
.p2align 4
label349:
	add r6, sp, #128
	add r2, r6, r2, lsl #2
	str r3, [r2, #4]
	str r4, [r2, #0]
	mov r2, r5
	cmp r0, r5
	bgt label348
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label955
	b label954
.p2align 4
label351:
	add r6, sp, #128
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label351
	ldr r0, [sp, #0]
	str r0, [sp, #128]
	ldr r0, [sp, #4]
	str r0, [sp, #132]
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
	mov r0, #1
	cmp r0, #32
	blt label356
label1078:
	mov r4, #0
	b label362
.p2align 4
label356:
	add r6, sp, #128
	sub r2, r0, #1
	ldr r1, [r6, r0, lsl #2]
	add r3, r2, #1
	cmn r2, #1
	bgt label360
.p2align 4
label359:
	add r6, sp, #128
	add r0, r0, #1
	str r1, [r6, r3, lsl #2]
	cmp r0, #32
	blt label356
	b label1078
.p2align 4
label362:
	add r6, sp, #128
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label362
	ldr r0, [sp, #0]
	add r6, sp, #128
	mov r1, #0
	mov r2, #31
	str r0, [sp, #128]
	ldr r0, [sp, #4]
	str r0, [sp, #132]
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
	mov r0, r6
	bl QuickSort
	mov r4, #0
.p2align 4
label365:
	add r6, sp, #128
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label365
	ldr r0, [sp, #0]
	mov r1, #0
	str r0, [sp, #128]
	ldr r0, [sp, #4]
	str r0, [sp, #132]
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
	mov r0, r1
	cmp r1, #32
	blt label371
	b label1308
.p2align 4
label955:
	mov r2, #0
	cmp r0, r2
	bgt label348
	b label958
.p2align 4
label1717:
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label955
	b label954
.p2align 4
label360:
	add r6, sp, #128
	ldr r4, [r6, r2, lsl #2]
	cmp r1, r4
	bge label359
	sub r2, r2, #1
	str r4, [r6, r3, lsl #2]
	add r3, r2, #1
	cmn r2, #1
	bgt label360
	add r0, r0, #1
	str r1, [r6, r3, lsl #2]
	cmp r0, #32
	blt label356
	b label1078
label1308:
	mov r4, #0
	b label374
.p2align 4
label371:
	add r6, sp, #128
	and r3, r0, #3
	ldr r2, [r6, r0, lsl #2]
	cmp r3, #3
	add r1, r1, r2
	add r2, r0, #1
	bne label372
	str r1, [r6, r0, lsl #2]
	mov r0, r2
	mov r1, #0
	cmp r2, #32
	blt label371
	b label1308
.p2align 4
label372:
	mov r3, #0
	add r6, sp, #128
	str r3, [r6, r0, lsl #2]
	mov r0, r2
	cmp r2, #32
	blt label371
	b label1308
.p2align 4
label374:
	add r6, sp, #128
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label374
	ldr r0, [sp, #0]
	mov r2, #0
	mov r1, r2
	str r0, [sp, #128]
	ldr r0, [sp, #4]
	str r0, [sp, #132]
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
	mov r0, r2
	cmp r2, #32
	blt label385
label381:
	mov r4, #0
	str r4, [sp, #248]
	str r4, [sp, #252]
.p2align 4
label382:
	add r6, sp, #128
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label382
	mov r0, #0
	add sp, sp, #260
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label385:
	cmp r0, #2
	blt label389
	beq label387
	add r6, sp, #128
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
	blt label385
	b label381
.p2align 4
label389:
	add r6, sp, #128
	ldr r3, [r6, r0, lsl #2]
	add r0, r0, #1
	add r1, r1, r3
	cmp r0, #32
	blt label385
	b label381
label392:
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label475
	b label474
.p2align 4
label387:
	ldr r2, [sp, #128]
	movw r0, #21846
	movt r0, #21845
	smmul r0, r1, r0
	add r0, r0, r0, lsr #31
	str r0, [sp, #128]
	mov r0, #3
	cmp r0, #32
	blt label385
	b label381
label958:
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r0, r0, #1
	blt label955
	b label954
