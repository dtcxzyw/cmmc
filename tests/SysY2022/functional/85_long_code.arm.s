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
.p2align 4
label76:
	ldr r3, [sp, #8]
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
	cmp r6, r5
	bge label256
.p2align 4
label80:
	ldr r7, [r4, #0]
	cmp r2, r7
	bge label81
	sub r5, r5, #1
	sub r4, r4, #4
	ldr r6, [sp, #4]
	cmp r6, r5
	blt label80
	ldr r3, [sp, #8]
	cmp r5, r6
	add r3, r3, r6, lsl #2
	ble label335
.p2align 4
label87:
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label88
	add r6, r6, #1
	add r3, r3, #4
	cmp r5, r6
	bgt label87
	str r6, [sp, #4]
	b label9
.p2align 4
label256:
	ldr r3, [sp, #8]
	ldr r6, [sp, #4]
	cmp r5, r6
	add r3, r3, r6, lsl #2
	bgt label87
	str r6, [sp, #4]
	b label9
label4:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label13:
	ldr r3, [sp, #8]
	mov r4, r0
	ldr r1, [r3, r0, lsl #2]
	ldr r6, [sp, #0]
	sub r2, r1, #1
label14:
	cmp r6, r4
	bgt label62
label17:
	ldr r3, [sp, #8]
	sub r5, r4, #1
	str r1, [r3, r4, lsl #2]
label18:
	cmp r5, r0
	bgt label21
	add r0, r4, #1
	b label10
.p2align 4
label62:
	ldr r3, [sp, #8]
	add r5, r3, r6, lsl #2
	cmp r4, r6
	blt label67
	cmp r6, r4
	add r3, r3, r4, lsl #2
	bgt label73
	b label320
label68:
	ldr r3, [sp, #8]
	str r7, [r3, r4, lsl #2]
	add r4, r4, #1
	add r3, r3, r4, lsl #2
	cmp r6, r4
	ble label242
.p2align 4
label73:
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label74
	add r4, r4, #1
	add r3, r3, #4
	cmp r6, r4
	bgt label73
	b label17
.p2align 4
label67:
	ldr r7, [r5, #0]
	cmp r2, r7
	bge label68
	sub r6, r6, #1
	sub r5, r5, #4
	cmp r4, r6
	blt label67
	ldr r3, [sp, #8]
	cmp r6, r4
	add r3, r3, r4, lsl #2
	bgt label73
	b label17
label21:
	ldr r3, [sp, #8]
	mov r8, r5
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	sub r2, r1, #1
label22:
	cmp r8, r6
	ble label25
.p2align 4
label48:
	ldr r3, [sp, #8]
	add r7, r3, r8, lsl #2
	cmp r6, r8
	blt label59
	add r3, r3, r6, lsl #2
.p2align 4
label52:
	cmp r8, r6
	ble label196
.p2align 4
label55:
	ldr r9, [r3, #0]
	cmp r1, r9
	ble label201
	add r6, r6, #1
	add r3, r3, #4
	cmp r8, r6
	bgt label55
	b label25
.p2align 4
label59:
	ldr r9, [r7, #0]
	cmp r2, r9
	bge label211
	sub r8, r8, #1
	sub r7, r7, #4
	cmp r6, r8
	blt label59
	ldr r3, [sp, #8]
	cmp r8, r6
	add r3, r3, r6, lsl #2
	bgt label55
	b label25
label81:
	ldr r3, [sp, #8]
	ldr r6, [sp, #4]
	str r7, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	cmp r5, r6
	bgt label87
	str r6, [sp, #4]
	b label9
label88:
	str r7, [r4, #0]
	sub r5, r5, #1
	str r6, [sp, #4]
	b label6
label74:
	str r7, [r5, #0]
	sub r6, r6, #1
	b label14
label25:
	ldr r3, [sp, #8]
	sub r7, r6, #1
	str r1, [r3, r6, lsl #2]
	mov r1, r0
label26:
	cmp r7, r1
	bgt label28
	b label141
.p2align 4
label32:
	ldr r3, [sp, #8]
	add r9, r3, r10, lsl #2
	cmp r8, r10
	blt label36
	cmp r10, r8
	add r3, r3, r8, lsl #2
	bgt label43
	b label327
.p2align 4
label36:
	ldr r11, [r9, #0]
	cmp r2, r11
	bge label37
	sub r10, r10, #1
	sub r9, r9, #4
	cmp r8, r10
	blt label36
	ldr r3, [sp, #8]
	cmp r10, r8
	add r3, r3, r8, lsl #2
	ble label328
.p2align 4
label43:
	ldr r11, [r3, #0]
	cmp r0, r11
	ble label178
	add r8, r8, #1
	add r3, r3, #4
	cmp r10, r8
	bgt label43
label46:
	ldr r3, [sp, #8]
	sub r2, r8, #1
	str r0, [r3, r8, lsl #2]
	mov r0, r3
	bl QuickSort
	add r1, r8, #1
	b label26
label28:
	ldr r3, [sp, #8]
	mov r10, r7
	mov r8, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
label29:
	cmp r10, r8
	bgt label32
	b label46
label37:
	ldr r3, [sp, #8]
	str r11, [r3, r8, lsl #2]
	add r8, r8, #1
	add r3, r3, r8, lsl #2
	cmp r10, r8
	bgt label43
	b label46
.p2align 4
label196:
	cmp r8, r6
	bgt label48
	b label25
.p2align 4
label327:
	cmp r10, r8
	bgt label32
	b label46
.p2align 4
label320:
	cmp r6, r4
	bgt label62
	b label17
.p2align 4
label335:
	str r6, [sp, #4]
	cmp r5, r6
	bgt label76
	b label9
.p2align 4
label328:
	cmp r10, r8
	bgt label32
	b label46
label242:
	cmp r6, r4
	bgt label62
	b label17
label178:
	str r11, [r9, #0]
	sub r10, r10, #1
	b label29
label211:
	ldr r3, [sp, #8]
	str r9, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	b label52
label141:
	add r0, r6, #1
	b label18
label201:
	str r9, [r7, #0]
	sub r8, r8, #1
	b label22
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r1, #1
	mov r4, #26
	mov r8, #5
	movw r11, #574
	mov r9, #83
	mov r2, #23
	movw r10, #273
	sub sp, sp, #276
	mov r3, #89
	mov r0, #7
	mov r7, #27
	movw r5, #282
	str r0, [sp, #16]
	mov r6, #254
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
	str r0, [sp, #144]
	str r2, [sp, #148]
	str r3, [sp, #152]
	str r4, [sp, #156]
	add r4, sp, #144
	str r5, [sp, #160]
	mov r5, #0
	str r6, [sp, #164]
	str r7, [sp, #168]
	str r8, [sp, #172]
	str r9, [sp, #176]
	str r10, [sp, #180]
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
	movw r11, #290
	str r1, [sp, #264]
	str r11, [sp, #268]
.p2align 4
label363:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label581
	add r4, r4, #4
	mov r5, r0
	b label363
label581:
	mov r0, #0
	str r0, [sp, #4]
label367:
	ldr r0, [sp, #4]
	cmp r0, #31
	blt label487
label369:
	add r4, sp, #144
	mov r5, #0
.p2align 4
label370:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label374
	add r4, r4, #4
	mov r5, r0
	b label370
.p2align 4
label487:
	ldr r0, [sp, #4]
	rsb r0, r0, #32
	sub r1, r0, #1
	cmp r1, #4
	sub r0, r0, #5
	str r1, [sp, #12]
	ble label488
	add r4, sp, #144
	mov r2, #0
	mov r1, r4
	ldr r3, [r4, #0]
	ldr r4, [r4, #4]
	cmp r3, r4
	bgt label493
	b label1695
.p2align 4
label1756:
	ldr r0, [sp, #4]
	add r0, r0, #1
	cmp r0, #31
	str r0, [sp, #4]
	blt label487
	b label369
.p2align 4
label493:
	str r3, [r1, #4]
	str r4, [r1, #0]
	add r3, r2, #1
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label502
	add r3, r2, #2
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label496
	add r3, r2, #3
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	ble label2041
.p2align 4
label498:
	add r4, sp, #144
	add r3, r4, r3, lsl #2
	str r5, [r3, #4]
	str r6, [r3, #0]
	add r2, r2, #4
	cmp r0, r2
	ble label1737
.p2align 4
label500:
	add r1, r1, #16
	ldr r3, [r1, #0]
	ldr r4, [r1, #4]
	cmp r3, r4
	bgt label493
	add r3, r2, #1
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label502
	add r3, r2, #2
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label496
	add r3, r2, #3
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label498
	add r2, r2, #4
	cmp r0, r2
	bgt label500
	add r4, sp, #144
	add r4, r4, r2, lsl #2
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	bgt label506
	b label2091
.p2align 4
label496:
	add r4, sp, #144
	add r3, r4, r3, lsl #2
	str r5, [r3, #4]
	str r6, [r3, #0]
	add r3, r2, #3
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label498
	add r2, r2, #4
	cmp r0, r2
	bgt label500
	b label2042
.p2align 4
label502:
	add r4, sp, #144
	add r3, r4, r3, lsl #2
	str r5, [r3, #4]
	str r6, [r3, #0]
	add r3, r2, #2
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label496
	add r3, r2, #3
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label498
	add r2, r2, #4
	cmp r0, r2
	bgt label500
	add r4, sp, #144
	add r4, r4, r2, lsl #2
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	bgt label506
	add r2, r2, #1
	ldr r1, [sp, #12]
	cmp r1, r2
	bgt label508
	b label2046
.p2align 4
label2042:
	add r4, sp, #144
	add r4, r4, r2, lsl #2
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	ble label2078
.p2align 4
label506:
	str r0, [r4, #4]
	str r1, [r4, #0]
	add r2, r2, #1
	ldr r1, [sp, #12]
	cmp r1, r2
	ble label1756
.p2align 4
label508:
	add r4, r4, #4
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	bgt label506
	add r2, r2, #1
	ldr r1, [sp, #12]
	cmp r1, r2
	bgt label508
	ldr r0, [sp, #4]
	add r0, r0, #1
	cmp r0, #31
	str r0, [sp, #4]
	blt label487
	b label369
.p2align 4
label1737:
	add r4, sp, #144
	add r4, r4, r2, lsl #2
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	bgt label506
	add r2, r2, #1
	ldr r1, [sp, #12]
	cmp r1, r2
	bgt label508
	ldr r0, [sp, #4]
	add r0, r0, #1
	cmp r0, #31
	str r0, [sp, #4]
	blt label487
	b label369
.p2align 4
label1695:
	add r3, r2, #1
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label502
	add r3, r2, #2
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label496
	add r3, r2, #3
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label498
	add r2, r2, #4
	cmp r0, r2
	bgt label500
	add r4, sp, #144
	add r4, r4, r2, lsl #2
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	bgt label506
	b label2091
label374:
	ldr r0, [sp, #208]
	ldr r1, [sp, #204]
	add r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bl putint
	mov r2, #0
	movw r0, #:lower16:count
	movt r0, #:upper16:count
.p2align 4
label375:
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
	bge label379
	add r0, r0, #256
	b label375
.p2align 4
label488:
	add r4, sp, #144
	mov r2, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	bgt label506
	add r2, r2, #1
	ldr r1, [sp, #12]
	cmp r1, r2
	bgt label508
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	b label367
.p2align 4
label2041:
	add r2, r2, #4
	cmp r0, r2
	bgt label500
	add r4, sp, #144
	add r4, r4, r2, lsl #2
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	bgt label506
label2091:
	add r2, r2, #1
	ldr r1, [sp, #12]
	cmp r1, r2
	bgt label508
	b label2046
.p2align 4
label2078:
	add r2, r2, #1
	ldr r1, [sp, #12]
	cmp r1, r2
	bgt label508
label2046:
	ldr r0, [sp, #4]
	add r0, r0, #1
	cmp r0, #31
	str r0, [sp, #4]
	blt label487
	b label369
label379:
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
	ldr r1, [sp, #144]
	add r2, r0, r1, lsl #2
	ldr r3, [r2, #0]
	adds r3, r3, #1
	str r3, [r2, #0]
	ldr r7, [sp, #148]
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
	ldr r6, [sp, #260]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #264]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	ldr r3, [sp, #268]
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
	str r4, [sp, #0]
	cmp r4, #31
	blt label382
label1062:
	add r4, sp, #144
	mov r5, #0
	b label406
.p2align 4
label382:
	ldr r4, [sp, #0]
	rsb r0, r4, #32
	sub r1, r0, #1
	cmp r1, #4
	sub r0, r0, #5
	str r1, [sp, #8]
	ble label1069
	add r4, sp, #144
	mov r2, #0
	mov r1, r4
	ldr r3, [r4, #0]
	ldr r4, [r4, #4]
	cmp r3, r4
	bgt label396
	b label387
.p2align 4
label1137:
	ldr r4, [sp, #0]
	add r4, r4, #1
	cmp r4, #31
	str r4, [sp, #0]
	blt label382
	b label1062
label2084:
	add r2, r2, #1
	ldr r1, [sp, #8]
	cmp r1, r2
	bgt label402
	b label2018
.p2align 4
label391:
	add r4, sp, #144
	add r3, r4, r3, lsl #2
	str r5, [r3, #4]
	str r6, [r3, #0]
	add r2, r2, #4
	cmp r0, r2
	ble label1117
.p2align 4
label393:
	add r1, r1, #16
	ldr r3, [r1, #0]
	ldr r4, [r1, #4]
	cmp r3, r4
	bgt label396
	b label2014
.p2align 4
label2052:
	add r3, r2, #2
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label395
	add r3, r2, #3
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label391
	b label2087
.p2align 4
label396:
	str r3, [r1, #4]
	add r3, r2, #1
	str r4, [r1, #0]
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label388
	add r3, r2, #2
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label395
	add r3, r2, #3
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label391
	add r2, r2, #4
	cmp r0, r2
	bgt label393
	add r4, sp, #144
	add r4, r4, r2, lsl #2
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	bgt label400
	b label2084
.p2align 4
label388:
	add r4, sp, #144
	add r3, r4, r3, lsl #2
	str r5, [r3, #4]
	str r6, [r3, #0]
	add r3, r2, #2
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label395
	b label390
.p2align 4
label2014:
	add r3, r2, #1
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label388
	b label2052
.p2align 4
label395:
	add r4, sp, #144
	add r3, r4, r3, lsl #2
	str r5, [r3, #4]
	str r6, [r3, #0]
	add r3, r2, #3
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label391
	add r2, r2, #4
	cmp r0, r2
	bgt label393
	add r4, sp, #144
	add r4, r4, r2, lsl #2
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	bgt label400
	add r2, r2, #1
	ldr r1, [sp, #8]
	cmp r1, r2
	bgt label402
.p2align 4
label2018:
	ldr r4, [sp, #0]
	add r4, r4, #1
	cmp r4, #31
	str r4, [sp, #0]
	blt label382
	b label1062
.p2align 4
label1117:
	add r4, sp, #144
	add r4, r4, r2, lsl #2
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	bgt label400
	add r2, r2, #1
	ldr r1, [sp, #8]
	cmp r1, r2
	bgt label402
	b label2070
.p2align 4
label400:
	str r0, [r4, #4]
	str r1, [r4, #0]
	add r2, r2, #1
	ldr r1, [sp, #8]
	cmp r1, r2
	ble label1137
.p2align 4
label402:
	add r4, r4, #4
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	bgt label400
	add r2, r2, #1
	ldr r1, [sp, #8]
	cmp r1, r2
	bgt label402
	ldr r4, [sp, #0]
	add r4, r4, #1
	cmp r4, #31
	str r4, [sp, #0]
	blt label382
	b label1062
.p2align 4
label390:
	add r3, r2, #3
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label391
	add r2, r2, #4
	cmp r0, r2
	bgt label393
	add r4, sp, #144
	add r4, r4, r2, lsl #2
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	bgt label400
	add r2, r2, #1
	ldr r1, [sp, #8]
	cmp r1, r2
	bgt label402
	b label2018
.p2align 4
label406:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label409
	add r4, r4, #4
	mov r5, r0
	b label406
.p2align 4
label387:
	add r3, r2, #1
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label388
	add r3, r2, #2
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label395
	add r3, r2, #3
	add r4, sp, #144
	add r4, r4, r3, lsl #2
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	cmp r5, r6
	bgt label391
	add r2, r2, #4
	cmp r0, r2
	bgt label393
	add r4, sp, #144
	add r4, r4, r2, lsl #2
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	bgt label400
	b label2084
.p2align 4
label1069:
	add r4, sp, #144
	mov r2, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	bgt label400
	add r2, r2, #1
	ldr r1, [sp, #8]
	cmp r1, r2
	bgt label402
	b label2018
.p2align 4
label2087:
	add r2, r2, #4
	cmp r0, r2
	bgt label393
	add r4, sp, #144
	add r4, r4, r2, lsl #2
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	cmp r0, r1
	bgt label400
	b label2084
label409:
	ldr r0, [sp, #16]
	add r4, sp, #144
	str r0, [sp, #144]
	add r0, r4, #4
	ldr r1, [sp, #20]
	str r1, [sp, #148]
	ldr r1, [sp, #24]
	str r1, [sp, #152]
	ldr r1, [sp, #28]
	str r1, [sp, #156]
	ldr r1, [sp, #32]
	str r1, [sp, #160]
	ldr r1, [sp, #36]
	str r1, [sp, #164]
	ldr r1, [sp, #40]
	str r1, [sp, #168]
	ldr r1, [sp, #44]
	str r1, [sp, #172]
	ldr r1, [sp, #48]
	str r1, [sp, #176]
	ldr r1, [sp, #52]
	str r1, [sp, #180]
	ldr r1, [sp, #56]
	str r1, [sp, #184]
	ldr r1, [sp, #60]
	str r1, [sp, #188]
	ldr r1, [sp, #64]
	str r1, [sp, #192]
	ldr r1, [sp, #68]
	str r1, [sp, #196]
	ldr r1, [sp, #72]
	str r1, [sp, #200]
	ldr r1, [sp, #76]
	str r1, [sp, #204]
	ldr r1, [sp, #80]
	str r1, [sp, #208]
	ldr r1, [sp, #84]
	str r1, [sp, #212]
	ldr r1, [sp, #88]
	str r1, [sp, #216]
	ldr r1, [sp, #92]
	str r1, [sp, #220]
	ldr r1, [sp, #96]
	str r1, [sp, #224]
	ldr r1, [sp, #100]
	str r1, [sp, #228]
	ldr r1, [sp, #104]
	str r1, [sp, #232]
	ldr r1, [sp, #108]
	str r1, [sp, #236]
	ldr r1, [sp, #112]
	str r1, [sp, #240]
	ldr r1, [sp, #116]
	str r1, [sp, #244]
	ldr r1, [sp, #120]
	str r1, [sp, #248]
	ldr r1, [sp, #124]
	str r1, [sp, #252]
	ldr r1, [sp, #128]
	str r1, [sp, #256]
	ldr r1, [sp, #132]
	str r1, [sp, #260]
	ldr r1, [sp, #136]
	str r1, [sp, #264]
	ldr r1, [sp, #140]
	str r1, [sp, #268]
	mov r1, #1
	cmp r1, #32
	blt label479
label413:
	add r4, sp, #144
	mov r5, #0
	b label414
.p2align 4
label479:
	ldr r2, [r0, #0]
	sub r5, r1, #1
	add r4, sp, #144
	add r3, r4, r5, lsl #2
	add r6, r5, #1
	cmn r5, #1
	bgt label484
.p2align 4
label483:
	add r4, sp, #144
	add r1, r1, #1
	add r0, r0, #4
	str r2, [r4, r6, lsl #2]
	cmp r1, #32
	blt label479
	b label413
.p2align 4
label484:
	ldr r7, [r3, #0]
	cmp r2, r7
	bge label483
	add r4, sp, #144
	sub r5, r5, #1
	sub r3, r3, #4
	str r7, [r4, r6, lsl #2]
	cmn r5, #1
	add r6, r5, #1
	bgt label484
	add r1, r1, #1
	add r0, r0, #4
	str r2, [r4, r6, lsl #2]
	cmp r1, #32
	blt label479
	b label413
.p2align 4
label414:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label418
	add r4, r4, #4
	mov r5, r0
	b label414
label418:
	ldr r0, [sp, #16]
	add r4, sp, #144
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
	mov r0, r4
	bl QuickSort
	mov r5, #0
.p2align 4
label419:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label422
	add r4, r4, #4
	mov r5, r0
	b label419
label422:
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
	mov r0, #4
	add r4, sp, #144
	ldr r3, [r4, r1, lsl #2]
	add r2, r1, r3
	and r3, r1, #3
	cmp r3, #3
	bne label477
	b label427
label430:
	add r4, sp, #144
	str r2, [r4, r3, lsl #2]
	mov r2, #0
	add r3, r1, #2
	ldr r4, [r4, r3, lsl #2]
	add r2, r2, r4
	and r4, r3, #3
	cmp r4, #3
	bne label475
	b label1478
label477:
	mov r3, #0
	add r4, sp, #144
	str r3, [r4, r1, lsl #2]
	add r3, r1, #1
	ldr r4, [r4, r3, lsl #2]
	add r2, r2, r4
	and r4, r3, #3
	cmp r4, #3
	bne label476
	b label430
label1478:
	add r4, sp, #144
	str r2, [r4, r3, lsl #2]
	mov r2, #0
	add r1, r1, #3
	ldr r3, [r4, r1, lsl #2]
	add r2, r2, r3
	and r3, r1, #3
	cmp r3, #3
	bne label473
	b label1488
.p2align 4
label1494:
	mov r1, r0
	add r4, sp, #144
	mov r0, r3
	ldr r3, [r4, r1, lsl #2]
	add r2, r2, r3
	and r3, r1, #3
	cmp r3, #3
	bne label477
	b label2022
label473:
	mov r3, #0
	add r4, sp, #144
	str r3, [r4, r1, lsl #2]
	add r3, r0, #4
	cmp r3, #32
	blt label1494
	b label1493
label475:
	mov r5, #0
	add r4, sp, #144
	add r1, r1, #3
	str r5, [r4, r3, lsl #2]
	ldr r3, [r4, r1, lsl #2]
	add r2, r2, r3
	and r3, r1, #3
	cmp r3, #3
	bne label473
	b label1488
label476:
	mov r5, #0
	add r4, sp, #144
	str r5, [r4, r3, lsl #2]
	add r3, r1, #2
	ldr r4, [r4, r3, lsl #2]
	add r2, r2, r4
	and r4, r3, #3
	cmp r4, #3
	bne label475
	b label1478
label1488:
	add r4, sp, #144
	str r2, [r4, r1, lsl #2]
	mov r2, #0
	add r3, r0, #4
	cmp r3, #32
	blt label1494
label1493:
	add r4, sp, #144
	add r1, r4, r0, lsl #2
	ldr r3, [r1, #0]
	add r2, r2, r3
	and r3, r0, #3
	cmp r3, #3
	bne label471
label1503:
	str r2, [r1, #0]
	mov r2, #0
	add r0, r0, #1
	cmp r0, #32
	bge label444
label469:
	add r1, r1, #4
	ldr r3, [r1, #0]
	add r2, r2, r3
	and r3, r0, #3
	cmp r3, #3
	beq label1503
label471:
	mov r3, #0
	add r0, r0, #1
	str r3, [r1, #0]
	cmp r0, #32
	blt label469
	b label444
label2022:
	add r4, sp, #144
	add r3, r1, #1
	str r2, [r4, r1, lsl #2]
	ldr r4, [r4, r3, lsl #2]
	mov r2, #0
	add r2, r2, r4
	and r4, r3, #3
	cmp r4, #3
	bne label476
	b label430
label444:
	add r4, sp, #144
	mov r5, #0
.p2align 4
label445:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label448
	add r4, r4, #4
	mov r5, r0
	b label445
label448:
	ldr r0, [sp, #16]
	add r4, sp, #144
	mov r1, #0
	mov r3, r1
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
	mov r2, r1
	mov r0, r4
	cmp r1, #2
	blt label467
	beq label466
	b label465
.p2align 4
label457:
	add r0, r0, #4
	cmp r1, #2
	blt label467
	beq label466
	b label465
label2025:
	mov r5, #0
	add r4, sp, #144
	str r5, [sp, #264]
	str r5, [sp, #268]
	b label459
.p2align 4
label466:
	ldr r2, [sp, #144]
	movw r4, #21846
	movt r4, #21845
	add r1, r1, #1
	smmul r4, r3, r4
	cmp r1, #32
	add r4, r4, r4, lsr #31
	str r4, [sp, #144]
	blt label457
	b label2025
.p2align 4
label467:
	ldr r4, [r0, #0]
	add r1, r1, #1
	cmp r1, #32
	add r3, r3, r4
	blt label457
	b label2025
.p2align 4
label459:
	ldr r0, [r4, #0]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	bge label463
	add r4, r4, #4
	b label459
.p2align 4
label465:
	add r4, sp, #144
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
	blt label457
	b label2025
label463:
	mov r0, #0
	add sp, sp, #276
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label427:
	add r4, sp, #144
	str r2, [r4, r1, lsl #2]
	mov r2, #0
	add r3, r1, #1
	ldr r4, [r4, r3, lsl #2]
	add r2, r2, r4
	and r4, r3, #3
	cmp r4, #3
	bne label476
	b label430
label2070:
	ldr r4, [sp, #0]
	add r4, r4, #1
	cmp r4, #31
	str r4, [sp, #0]
	blt label382
	b label1062
