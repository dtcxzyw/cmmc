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
	str r2, [sp, #8]
label2:
	ldr r4, [sp, #8]
	cmp r4, r0
	bgt label5
	b label4
.p2align 4
label94:
	ldr r3, [sp, #4]
	ldr r5, [sp, #0]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label25
label385:
	ldr r5, [sp, #0]
	add r0, r5, #1
	b label2
.p2align 4
label17:
	ldr r3, [sp, #4]
	ldr r6, [r3, r5, lsl #2]
	str r6, [r3, r4, lsl #2]
	str r5, [sp, #0]
	sub r4, r4, #1
	cmp r4, r5
	bgt label9
	b label356
.p2align 4
label135:
	ldr r5, [sp, #0]
	cmp r5, r4
	blt label18
	cmp r4, r5
	bgt label14
	str r5, [sp, #0]
	ldr r3, [sp, #4]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	ble label385
label25:
	ldr r3, [sp, #4]
	mov r6, r4
	mov r5, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
	cmp r4, r1
	ble label29
.p2align 4
label70:
	cmp r5, r6
	blt label72
	cmp r6, r5
	ble label405
.p2align 4
label78:
	ldr r3, [sp, #4]
	ldr r3, [r3, r5, lsl #2]
	cmp r0, r3
	ble label304
	add r5, r5, #1
	cmp r6, r5
	bgt label78
	ldr r3, [sp, #4]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label33
	b label32
label29:
	ldr r3, [sp, #4]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
label30:
	cmp r6, r1
	bgt label33
	b label32
label5:
	ldr r3, [sp, #4]
	mov r5, r0
	ldr r1, [r3, r0, lsl #2]
	ldr r4, [sp, #8]
	str r0, [sp, #0]
	sub r2, r1, #1
	cmp r4, r0
	ble label94
.p2align 4
label9:
	ldr r5, [sp, #0]
	cmp r5, r4
	blt label19
	cmp r4, r5
	ble label105
.p2align 4
label14:
	ldr r3, [sp, #4]
	ldr r3, [r3, r5, lsl #2]
	cmp r1, r3
	ble label112
	add r5, r5, #1
	cmp r4, r5
	bgt label14
	str r5, [sp, #0]
	ldr r3, [sp, #4]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label25
	b label385
.p2align 4
label283:
	cmp r5, r6
	blt label75
	cmp r6, r5
	bgt label78
	ble label430
.p2align 4
label81:
	ldr r3, [sp, #4]
	ldr r7, [r3, r5, lsl #2]
	str r7, [r3, r6, lsl #2]
	sub r6, r6, #1
	cmp r6, r5
	bgt label70
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label33
label32:
	add r1, r5, #1
	b label22
.p2align 4
label75:
	ldr r3, [sp, #4]
	ldr r7, [r3, r6, lsl #2]
	str r7, [r3, r5, lsl #2]
	add r5, r5, #1
	cmp r6, r5
	bgt label78
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	ble label32
label33:
	ldr r3, [sp, #4]
	mov r8, r6
	mov r7, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
	b label34
.p2align 4
label72:
	ldr r3, [sp, #4]
	ldr r3, [r3, r6, lsl #2]
	cmp r2, r3
	bge label283
	sub r6, r6, #1
	cmp r5, r6
	blt label72
	cmp r6, r5
	bgt label78
	ldr r3, [sp, #4]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label33
	b label32
.p2align 4
label34:
	cmp r8, r7
	ble label37
.p2align 4
label58:
	cmp r7, r8
	bge label234
.p2align 4
label60:
	ldr r3, [sp, #4]
	ldr r3, [r3, r8, lsl #2]
	cmp r2, r3
	bge label241
	sub r8, r8, #1
	cmp r7, r8
	blt label60
	bge label401
.p2align 4
label63:
	ldr r3, [sp, #4]
	ldr r9, [r3, r8, lsl #2]
	str r9, [r3, r7, lsl #2]
	add r7, r7, #1
	cmp r8, r7
	ble label66
.p2align 4
label68:
	ldr r3, [sp, #4]
	ldr r3, [r3, r7, lsl #2]
	cmp r0, r3
	ble label271
	add r7, r7, #1
	cmp r8, r7
	bgt label68
	ldr r3, [sp, #4]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label40
	b label175
label37:
	ldr r3, [sp, #4]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
label38:
	cmp r8, r1
	bgt label40
label175:
	add r1, r7, #1
	b label30
label40:
	ldr r3, [sp, #4]
	mov r10, r8
	mov r9, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
	b label41
.p2align 4
label234:
	cmp r7, r8
	blt label63
	cmp r8, r7
	bgt label68
	ldr r3, [sp, #4]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label40
	b label175
.p2align 4
label41:
	cmp r10, r9
	bgt label45
label44:
	ldr r3, [sp, #4]
	sub r2, r9, #1
	str r0, [r3, r9, lsl #2]
	mov r0, r3
	bl QuickSort
	add r1, r9, #1
	b label38
.p2align 4
label45:
	cmp r9, r10
	blt label55
	b label47
.p2align 4
label51:
	ldr r3, [sp, #4]
	ldr r3, [r3, r9, lsl #2]
	cmp r0, r3
	ble label211
	add r9, r9, #1
	cmp r10, r9
	bgt label51
	b label44
.p2align 4
label55:
	ldr r3, [sp, #4]
	ldr r3, [r3, r10, lsl #2]
	cmp r2, r3
	bge label228
	sub r10, r10, #1
	cmp r9, r10
	blt label55
	cmp r10, r9
	bgt label51
	b label44
.p2align 4
label241:
	cmp r7, r8
	blt label63
	cmp r8, r7
	bgt label68
	ldr r3, [sp, #4]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label40
	b label175
.p2align 4
label401:
	cmp r8, r7
	bgt label68
	ldr r3, [sp, #4]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label40
	b label175
.p2align 4
label66:
	cmp r8, r7
	ble label258
.p2align 4
label67:
	ldr r3, [sp, #4]
	ldr r9, [r3, r7, lsl #2]
	str r9, [r3, r8, lsl #2]
	sub r8, r8, #1
	cmp r8, r7
	bgt label58
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label40
	b label175
.p2align 4
label258:
	cmp r8, r7
	bgt label58
	ldr r3, [sp, #4]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label40
	b label175
.p2align 4
label271:
	cmp r8, r7
	bgt label67
	ldr r3, [sp, #4]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label40
	b label175
.p2align 4
label430:
	cmp r6, r5
	bgt label70
	ldr r3, [sp, #4]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label33
	b label32
.p2align 4
label405:
	cmp r6, r5
	bgt label81
	ldr r3, [sp, #4]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label33
	b label32
.p2align 4
label304:
	cmp r6, r5
	bgt label81
	ldr r3, [sp, #4]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label33
	b label32
.p2align 4
label18:
	ldr r3, [sp, #4]
	ldr r6, [r3, r4, lsl #2]
	ldr r5, [sp, #0]
	str r6, [r3, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	bgt label14
	b label357
.p2align 4
label19:
	ldr r3, [sp, #4]
	ldr r3, [r3, r4, lsl #2]
	cmp r2, r3
	bge label135
	sub r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	blt label19
	cmp r4, r5
	bgt label14
	str r5, [sp, #0]
	ldr r3, [sp, #4]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label25
	b label385
.p2align 4
label356:
	ldr r3, [sp, #4]
	ldr r5, [sp, #0]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label25
	b label385
.p2align 4
label105:
	cmp r4, r5
	bgt label17
	str r5, [sp, #0]
	ldr r3, [sp, #4]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label25
	b label385
.p2align 4
label112:
	cmp r4, r5
	bgt label17
	str r5, [sp, #0]
	ldr r3, [sp, #4]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label25
	b label385
.p2align 4
label357:
	cmp r4, r5
	bgt label17
	str r5, [sp, #0]
	ldr r3, [sp, #4]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label25
	b label385
.p2align 4
label47:
	cmp r9, r10
	blt label48
	cmp r10, r9
	bgt label51
	b label44
.p2align 4
label48:
	ldr r3, [sp, #4]
	ldr r11, [r3, r10, lsl #2]
	str r11, [r3, r9, lsl #2]
	add r9, r9, #1
	cmp r10, r9
	bgt label51
	b label44
.p2align 4
label54:
	ldr r3, [sp, #4]
	ldr r11, [r3, r9, lsl #2]
	str r11, [r3, r10, lsl #2]
	sub r10, r10, #1
	cmp r10, r9
	bgt label45
	b label44
.p2align 4
label228:
	cmp r9, r10
	blt label48
	cmp r10, r9
	bgt label51
	b label44
.p2align 4
label211:
	cmp r10, r9
	bgt label54
	b label44
label22:
	cmp r4, r1
	bgt label25
	b label385
label4:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r10, #290
	mov r9, #1
	mov r8, #28
	movw r4, #282
	mov r11, #5
	sub sp, sp, #268
	mov r5, #254
	mov r6, #27
	mov r1, #23
	mov r7, #39
	mov r0, #7
	mov r3, #26
	mov r2, #89
	str r0, [sp, #8]
	str r1, [sp, #12]
	str r2, [sp, #16]
	str r3, [sp, #20]
	str r4, [sp, #24]
	str r5, [sp, #28]
	str r6, [sp, #32]
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
	str r7, [sp, #120]
	str r8, [sp, #124]
	str r9, [sp, #128]
	str r10, [sp, #132]
	str r0, [sp, #136]
	movw r0, #:lower16:count
	str r1, [sp, #140]
	movt r0, #:upper16:count
	str r2, [sp, #144]
	str r3, [sp, #148]
	str r4, [sp, #152]
	mov r4, #0
	str r5, [sp, #156]
	str r6, [sp, #160]
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
	str r7, [sp, #248]
	str r8, [sp, #252]
	str r9, [sp, #256]
	str r10, [sp, #260]
	str r0, [sp, #0]
.p2align 4
label496:
	add r6, sp, #136
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label496
	mov r0, #0
	rsb r1, r0, #32
	cmp r0, #31
	sub r1, r1, #1
	blt label637
.p2align 4
label636:
	mov r4, #0
	b label505
.p2align 4
label650:
	mov r2, r5
	cmp r1, r5
	bgt label502
	add r0, r0, #1
	rsb r1, r0, #32
	cmp r0, #31
	sub r1, r1, #1
	blt label637
	b label636
.p2align 4
label500:
	cmp r1, r2
	ble label640
.p2align 4
label502:
	add r6, sp, #136
	add r5, r2, #1
	add r4, r6, r2, lsl #2
	ldr r3, [r4, #0]
	ldr r4, [r4, #4]
	cmp r3, r4
	ble label650
	add r2, r6, r2, lsl #2
	str r3, [r2, #4]
	str r4, [r2, #0]
	mov r2, r5
	cmp r1, r5
	bgt label502
	add r0, r0, #1
	rsb r1, r0, #32
	cmp r0, #31
	sub r1, r1, #1
	bge label636
.p2align 4
label637:
	mov r2, #0
	b label500
.p2align 4
label640:
	add r0, r0, #1
	rsb r1, r0, #32
	cmp r0, #31
	sub r1, r1, #1
	blt label637
	b label636
.p2align 4
label505:
	add r6, sp, #136
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label505
	ldr r0, [sp, #200]
	ldr r1, [sp, #196]
	add r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bl putint
	mov r2, #0
.p2align 4
label508:
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
	blt label508
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
	bic r5, r3, r3, asr #31
	str r3, [r2, #0]
	ldr r7, [sp, #140]
	add r3, r0, r7, lsl #2
	ldr r2, [r3, #0]
	add r6, r2, #1
	str r6, [r3, #0]
	mov r2, #0
	movgt r2, r1
	mov r1, r5
	cmp r5, r6
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
	mov r0, r4
	rsb r1, r4, #32
	cmp r4, #31
	sub r1, r1, #1
	blt label1135
.p2align 4
label1134:
	mov r4, #0
	b label518
.p2align 4
label1138:
	add r0, r0, #1
	rsb r1, r0, #32
	cmp r0, #31
	sub r1, r1, #1
	bge label1134
.p2align 4
label1135:
	mov r2, #0
	b label513
.p2align 4
label516:
	add r6, sp, #136
	add r2, r6, r2, lsl #2
	str r3, [r2, #4]
	str r4, [r2, #0]
	mov r2, r5
	cmp r1, r5
	bgt label515
	add r0, r0, #1
	rsb r1, r0, #32
	cmp r0, #31
	sub r1, r1, #1
	blt label1135
	b label1134
.p2align 4
label513:
	cmp r1, r2
	ble label1138
.p2align 4
label515:
	add r6, sp, #136
	add r5, r2, #1
	add r4, r6, r2, lsl #2
	ldr r3, [r4, #0]
	ldr r4, [r4, #4]
	cmp r3, r4
	bgt label516
	mov r2, r5
	cmp r1, r5
	bgt label515
	add r0, r0, #1
	rsb r1, r0, #32
	cmp r0, #31
	sub r1, r1, #1
	blt label1135
	b label1134
.p2align 4
label518:
	add r6, sp, #136
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label518
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
	blt label551
.p2align 4
label1258:
	mov r4, #0
.p2align 4
label523:
	add r6, sp, #136
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label523
	b label525
.p2align 4
label551:
	add r6, sp, #136
	sub r2, r0, #1
	ldr r1, [r6, r0, lsl #2]
	add r3, r2, #1
	cmn r2, #1
	ble label554
.p2align 4
label555:
	add r6, sp, #136
	ldr r4, [r6, r2, lsl #2]
	cmp r1, r4
	bge label1639
	sub r2, r2, #1
	str r4, [r6, r3, lsl #2]
	add r3, r2, #1
	cmn r2, #1
	bgt label555
	add r0, r0, #1
	str r1, [r6, r3, lsl #2]
	cmp r0, #32
	blt label551
	b label1258
label525:
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
label526:
	add r6, sp, #136
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label526
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
	blt label548
.p2align 4
label1466:
	mov r4, #0
	b label532
.p2align 4
label548:
	add r6, sp, #136
	and r3, r0, #3
	ldr r2, [r6, r0, lsl #2]
	cmp r3, #3
	add r1, r1, r2
	add r2, r0, #1
	beq label549
	mov r3, #0
	str r3, [r6, r0, lsl #2]
	mov r0, r2
	cmp r2, #32
	blt label548
	b label1466
.p2align 4
label532:
	add r6, sp, #136
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label532
	ldr r0, [sp, #8]
	mov r2, #0
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
	mov r1, r2
	mov r0, r2
.p2align 4
label535:
	cmp r1, #32
	bge label1572
.p2align 4
label539:
	cmp r1, #2
	blt label543
	beq label541
	add r6, sp, #136
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
	b label535
.p2align 4
label1572:
	mov r4, #0
	str r4, [sp, #256]
	str r4, [sp, #260]
	b label545
.p2align 4
label543:
	add r6, sp, #136
	ldr r3, [r6, r1, lsl #2]
	add r1, r1, #1
	add r0, r0, r3
	cmp r1, #32
	blt label539
	b label1572
.p2align 4
label545:
	add r6, sp, #136
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label545
	mov r0, #0
	add sp, sp, #268
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label554:
	add r6, sp, #136
	add r0, r0, #1
	str r1, [r6, r3, lsl #2]
	cmp r0, #32
	blt label551
	b label1258
.p2align 4
label549:
	add r6, sp, #136
	str r1, [r6, r0, lsl #2]
	mov r0, r2
	mov r1, #0
	cmp r2, #32
	blt label548
	b label1466
.p2align 4
label1639:
	add r6, sp, #136
	add r0, r0, #1
	str r1, [r6, r3, lsl #2]
	cmp r0, #32
	blt label551
	b label1258
label541:
	ldr r2, [sp, #136]
	movw r1, #21846
	movt r1, #21845
	smmul r1, r0, r1
	add r1, r1, r1, lsr #31
	str r1, [sp, #136]
	mov r1, #3
	b label535
