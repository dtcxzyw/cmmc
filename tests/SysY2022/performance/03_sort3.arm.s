.arch armv7ve
.data
.bss
.align 8
a:
	.zero	120000040
.text
.syntax unified
.arm
.fpu vfpv4
radixSort:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #220
	mov r7, r0
	mov r8, r1
	mov r9, r2
	str r2, [sp, #4]
	mov r6, r3
	str r0, [sp, #8]
	add r0, r2, #1
	str r1, [sp, #16]
	cmp r3, r0
	add r1, r7, #1
	mov r0, #0
	clz r1, r1
	movwle r0, #1
	lsr r1, r1, #5
	orrs r0, r0, r1
	mov r0, #0
	str r0, [sp, #24]
	str r0, [sp, #28]
	str r0, [sp, #32]
	str r0, [sp, #36]
	str r0, [sp, #40]
	str r0, [sp, #44]
	str r0, [sp, #48]
	str r0, [sp, #52]
	str r0, [sp, #56]
	str r0, [sp, #60]
	str r0, [sp, #64]
	str r0, [sp, #68]
	str r0, [sp, #72]
	str r0, [sp, #76]
	str r0, [sp, #80]
	str r0, [sp, #84]
	str r0, [sp, #88]
	str r0, [sp, #92]
	str r0, [sp, #96]
	str r0, [sp, #100]
	str r0, [sp, #104]
	str r0, [sp, #108]
	str r0, [sp, #112]
	str r0, [sp, #116]
	str r0, [sp, #120]
	str r0, [sp, #124]
	str r0, [sp, #128]
	str r0, [sp, #132]
	str r0, [sp, #136]
	str r0, [sp, #140]
	str r0, [sp, #144]
	str r0, [sp, #148]
	str r0, [sp, #152]
	str r0, [sp, #156]
	str r0, [sp, #160]
	str r0, [sp, #164]
	str r0, [sp, #168]
	str r0, [sp, #172]
	str r0, [sp, #176]
	str r0, [sp, #180]
	str r0, [sp, #184]
	str r0, [sp, #188]
	str r0, [sp, #192]
	str r0, [sp, #196]
	str r0, [sp, #200]
	str r0, [sp, #204]
	str r0, [sp, #208]
	str r0, [sp, #212]
	bne label90
	movw r0, #43692
	ldr r7, [sp, #8]
	movt r0, #65535
	sub r1, r7, #20
	sub r2, r7, #84
	sub r3, r7, #340
	add r10, r7, r0
	movw r0, #60076
	str r10, [sp, #0]
	movt r0, #65535
	add r5, r7, r0
	movw r0, #64172
	movt r0, #65535
	add r4, r7, r0
	sub r0, r7, #4
	sub r7, r7, #1
	str r7, [sp, #12]
	ldr r9, [sp, #4]
	cmp r9, r6
	blt label56
label3:
	ldr r9, [sp, #4]
	str r9, [sp, #24]
	ldr r6, [sp, #152]
	add r6, r9, r6
	str r6, [sp, #88]
	str r6, [sp, #28]
	ldr r7, [sp, #156]
	add r6, r6, r7
	str r6, [sp, #92]
	str r6, [sp, #32]
	ldr r7, [sp, #160]
	add r6, r6, r7
	str r6, [sp, #96]
	str r6, [sp, #36]
	ldr r7, [sp, #164]
	add r6, r6, r7
	str r6, [sp, #100]
	str r6, [sp, #40]
	ldr r7, [sp, #168]
	add r6, r6, r7
	str r6, [sp, #104]
	str r6, [sp, #44]
	ldr r7, [sp, #172]
	add r6, r6, r7
	str r6, [sp, #108]
	str r6, [sp, #48]
	ldr r7, [sp, #176]
	add r6, r6, r7
	str r6, [sp, #112]
	str r6, [sp, #52]
	ldr r7, [sp, #180]
	add r6, r6, r7
	str r6, [sp, #116]
	str r6, [sp, #56]
	ldr r7, [sp, #184]
	add r6, r6, r7
	str r6, [sp, #120]
	str r6, [sp, #60]
	ldr r7, [sp, #188]
	add r6, r6, r7
	str r6, [sp, #124]
	str r6, [sp, #64]
	ldr r7, [sp, #192]
	add r6, r6, r7
	str r6, [sp, #128]
	str r6, [sp, #68]
	ldr r7, [sp, #196]
	add r6, r6, r7
	str r6, [sp, #132]
	str r6, [sp, #72]
	ldr r7, [sp, #200]
	add r6, r6, r7
	str r6, [sp, #136]
	str r6, [sp, #76]
	ldr r7, [sp, #204]
	add r6, r6, r7
	str r6, [sp, #140]
	str r6, [sp, #80]
	ldr r7, [sp, #208]
	add r6, r6, r7
	str r6, [sp, #144]
	str r6, [sp, #84]
	ldr r7, [sp, #212]
	add r6, r6, r7
	str r6, [sp, #148]
	mov r6, #0
	cmp r6, #16
	blt label15
	b label6
.p2align 4
label56:
	ldr r8, [sp, #16]
	ldr r10, [r8, r9, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label58
	cmp r7, #4
	ble label415
	cmp r0, #16
	ble label418
	cmp r1, #64
	bgt label65
	b label421
.p2align 4
label483:
	mov r8, r7
	add r8, r7, #1
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #8]
	cmp r7, r8
	ble label597
.p2align 4
label87:
	add r8, r8, #1
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label87
	and r8, r10, #15
	add r7, sp, #152
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
.p2align 4
label65:
	cmp r2, #256
	ble label429
	cmp r3, #1024
	ble label432
	cmp r4, #4096
	ble label435
	cmp r5, #16384
	ble label443
	ldr r10, [sp, #0]
	cmp r10, #262144
	ble label446
	mov r7, #0
.p2align 4
label72:
	add r8, r7, #524288
	ldr r10, [sp, #0]
	add r7, r7, #262144
	cmp r10, r8
	bgt label72
.p2align 4
label74:
	add r8, r7, #65536
	ldr r10, [sp, #0]
	cmp r10, r8
	ble label457
	mov r7, r8
	b label74
.p2align 4
label63:
	add r7, r7, #16
	cmp r1, r7
	bgt label63
	mov r8, #0
	add r7, r7, #4
	asr r10, r8, #31
	cmp r0, r7
	add r8, r8, r10, lsr #16
	asr r10, r8, #16
	bgt label484
	b label592
.p2align 4
label68:
	add r7, r7, #1024
	cmp r4, r7
	bgt label68
.p2align 4
label440:
	add r7, r7, #256
	cmp r3, r7
	bgt label80
	b label593
label457:
	add r7, r7, #16384
	ldr r10, [sp, #0]
	cmp r10, r7
	ble label78
.p2align 4
label76:
	add r7, r7, #16384
	ldr r10, [sp, #0]
	cmp r10, r7
	bgt label76
.p2align 4
label78:
	add r7, r7, #4096
	cmp r5, r7
	bgt label78
	add r7, r7, #1024
	cmp r4, r7
	bgt label68
	b label440
.p2align 4
label80:
	add r7, r7, #256
	cmp r3, r7
	bgt label80
.p2align 4
label82:
	add r7, r7, #64
	cmp r2, r7
	bgt label82
.p2align 4
label477:
	add r7, r7, #16
	cmp r1, r7
	bgt label63
	mov r8, #0
	add r7, r7, #4
	asr r10, r8, #31
	cmp r0, r7
	add r8, r8, r10, lsr #16
	asr r10, r8, #16
	bgt label484
	b label592
.p2align 4
label84:
	add r7, r7, #4
	asr r10, r8, #31
	cmp r0, r7
	add r8, r8, r10, lsr #16
	asr r10, r8, #16
	ble label483
.p2align 4
label484:
	mov r8, r10
	b label84
label6:
	ldr r9, [sp, #4]
	mov r4, #0
	str r9, [sp, #24]
	ldr r0, [sp, #152]
	add r0, r9, r0
	str r0, [sp, #88]
	cmp r4, #16
	blt label9
	b label90
.p2align 4
label15:
	add r8, sp, #24
	ldr r7, [r8, r6, lsl #2]
	add r9, sp, #88
	ldr r8, [r9, r6, lsl #2]
	cmp r7, r8
	blt label18
	b label291
.p2align 4
label576:
	add r6, r6, #1
	cmp r6, #16
	blt label15
	b label6
.p2align 4
label18:
	add r8, sp, #24
	ldr r7, [r8, r6, lsl #2]
	ldr r8, [sp, #16]
	ldr r9, [r8, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	bgt label25
	b label300
.p2align 4
label23:
	add r8, sp, #24
	add r7, r8, r6, lsl #2
	ldr r10, [r7, #0]
	ldr r8, [sp, #16]
	str r9, [r8, r10, lsl #2]
	add r8, r10, #1
	str r8, [r7, #0]
	mov r7, r8
	add r9, sp, #88
	ldr r8, [r9, r6, lsl #2]
	cmp r7, r8
	blt label18
	b label576
.p2align 4
label24:
	add r8, sp, #24
	add r7, r8, r7, lsl #2
	ldr r10, [r7, #0]
	ldr r8, [sp, #16]
	add r11, r8, r10, lsl #2
	ldr r8, [r11, #0]
	str r9, [r11, #0]
	add r9, r10, #1
	str r9, [r7, #0]
	mov r9, r8
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label577
.p2align 4
label25:
	ldr r7, [sp, #8]
	cmp r7, #4
	ble label321
	cmp r0, #16
	ble label324
	cmp r1, #64
	bgt label30
	b label327
.p2align 4
label389:
	mov r8, r7
	add r8, r7, #1
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #8]
	cmp r7, r8
	ble label589
.p2align 4
label52:
	add r8, r8, #1
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label52
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label23
.p2align 4
label30:
	cmp r2, #256
	ble label335
	cmp r3, #1024
	ble label343
	cmp r4, #4096
	ble label351
	cmp r5, #16384
	ble label354
	ldr r10, [sp, #0]
	cmp r10, #262144
	ble label362
	mov r7, #0
.p2align 4
label41:
	add r8, r7, #524288
	ldr r10, [sp, #0]
	add r7, r7, #262144
	cmp r10, r8
	bgt label41
	b label43
.p2align 4
label362:
	mov r7, #0
	add r8, r7, #65536
	ldr r10, [sp, #0]
	cmp r10, r8
	bgt label374
	b label585
.p2align 4
label43:
	add r8, r7, #65536
	ldr r10, [sp, #0]
	cmp r10, r8
	ble label373
.p2align 4
label374:
	mov r7, r8
	b label43
.p2align 4
label28:
	add r7, r7, #16
	cmp r1, r7
	bgt label28
	mov r8, #0
	add r7, r7, #4
	asr r10, r8, #31
	cmp r0, r7
	add r8, r8, r10, lsr #16
	asr r10, r8, #16
	bgt label390
	b label580
.p2align 4
label31:
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	add r7, r7, #16
	cmp r1, r7
	bgt label28
	b label581
.p2align 4
label34:
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	b label582
.p2align 4
label38:
	add r7, r7, #4096
	cmp r5, r7
	bgt label38
	add r7, r7, #1024
	cmp r4, r7
	bgt label47
	b label584
.p2align 4
label373:
	add r7, r7, #16384
	ldr r10, [sp, #0]
	cmp r10, r7
	ble label586
.p2align 4
label45:
	add r7, r7, #16384
	ldr r10, [sp, #0]
	cmp r10, r7
	bgt label45
	add r7, r7, #4096
	cmp r5, r7
	bgt label38
	b label587
.p2align 4
label47:
	add r7, r7, #1024
	cmp r4, r7
	bgt label47
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	b label588
.p2align 4
label49:
	add r7, r7, #4
	asr r10, r8, #31
	cmp r0, r7
	add r8, r8, r10, lsr #16
	asr r10, r8, #16
	ble label389
.p2align 4
label390:
	mov r8, r10
	b label49
.p2align 4
label580:
	mov r8, r7
	add r8, r7, #1
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label52
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label23
.p2align 4
label581:
	mov r8, #0
	add r7, r7, #4
	asr r10, r8, #31
	cmp r0, r7
	add r8, r8, r10, lsr #16
	asr r10, r8, #16
	bgt label390
	mov r8, r7
	add r8, r7, #1
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label52
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label23
.p2align 4
label582:
	add r7, r7, #16
	cmp r1, r7
	bgt label28
	mov r8, #0
	add r7, r7, #4
	asr r10, r8, #31
	cmp r0, r7
	add r8, r8, r10, lsr #16
	asr r10, r8, #16
	bgt label390
	mov r8, r7
	add r8, r7, #1
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label52
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label23
.p2align 4
label321:
	mov r8, #0
	mov r10, r9
	add r8, r8, #1
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label52
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label23
.p2align 4
label586:
	add r7, r7, #4096
	cmp r5, r7
	bgt label38
	add r7, r7, #1024
	cmp r4, r7
	bgt label47
	add r7, r7, #256
	cmp r3, r7
	bgt label34
.p2align 4
label633:
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	add r7, r7, #16
	cmp r1, r7
	bgt label28
	b label641
.p2align 4
label588:
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	add r7, r7, #16
	cmp r1, r7
	bgt label28
	mov r8, #0
	add r7, r7, #4
	asr r10, r8, #31
	cmp r0, r7
	add r8, r8, r10, lsr #16
	asr r10, r8, #16
	bgt label390
.p2align 4
label635:
	mov r8, r7
	add r8, r7, #1
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label52
.p2align 4
label642:
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label23
.p2align 4
label324:
	mov r8, r9
	mov r7, #0
	add r7, r7, #4
	asr r10, r9, #31
	cmp r0, r7
	add r8, r9, r10, lsr #16
	asr r10, r8, #16
	bgt label390
	mov r8, r7
	add r8, r7, #1
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label52
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label23
.p2align 4
label584:
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	add r7, r7, #16
	cmp r1, r7
	bgt label28
	mov r8, #0
	add r7, r7, #4
	asr r10, r8, #31
	cmp r0, r7
	add r8, r8, r10, lsr #16
	asr r10, r8, #16
	bgt label390
label638:
	mov r8, r7
	add r8, r7, #1
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label52
	b label642
.p2align 4
label587:
	add r7, r7, #1024
	cmp r4, r7
	bgt label47
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	add r7, r7, #16
	cmp r1, r7
	bgt label28
label641:
	mov r8, #0
	add r7, r7, #4
	asr r10, r8, #31
	cmp r0, r7
	add r8, r8, r10, lsr #16
	asr r10, r8, #16
	bgt label390
	b label638
.p2align 4
label351:
	mov r7, #0
	add r7, r7, #1024
	cmp r4, r7
	bgt label47
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	add r7, r7, #64
	cmp r2, r7
	bgt label31
	add r7, r7, #16
	cmp r1, r7
	bgt label28
	mov r8, #0
	add r7, r7, #4
	asr r10, r8, #31
	cmp r0, r7
	add r8, r8, r10, lsr #16
	asr r10, r8, #16
	bgt label390
	b label635
.p2align 4
label589:
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label24
	b label23
.p2align 4
label585:
	add r7, r7, #16384
	ldr r10, [sp, #0]
	cmp r10, r7
	bgt label45
	add r7, r7, #4096
	cmp r5, r7
	bgt label38
	add r7, r7, #1024
	cmp r4, r7
	bgt label47
	add r7, r7, #256
	cmp r3, r7
	bgt label34
	b label633
.p2align 4
label300:
	mov r10, r9
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r7, r9, r7, lsl #4
	cmp r6, r7
	bne label24
	b label23
.p2align 4
label9:
	cmp r4, #0
	bgt label14
	b label262
.p2align 4
label10:
	ldr r8, [sp, #16]
	ldr r7, [sp, #12]
	mov r0, r7
	mov r1, r8
	bl radixSort
	add r4, r4, #1
	cmp r4, #16
	blt label9
	b label90
label14:
	sub r0, r4, #1
	add r9, sp, #88
	add r8, sp, #24
	add r7, sp, #152
	ldr r2, [r9, r0, lsl #2]
	str r2, [r8, r4, lsl #2]
	ldr r0, [r7, r4, lsl #2]
	add r3, r2, r0
	str r3, [r9, r4, lsl #2]
	b label10
.p2align 4
label577:
	mov r10, r9
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r7, r9, r7, lsl #4
	cmp r6, r7
	bne label24
	b label23
label592:
	mov r8, r7
	add r8, r7, #1
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label87
label597:
	and r8, r10, #15
	add r7, sp, #152
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
label593:
	add r7, r7, #64
	cmp r2, r7
	bgt label82
	b label477
label90:
	add sp, sp, #220
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label58:
	and r8, r10, #15
	add r7, sp, #152
	add r9, r9, #1
	add r7, r7, r8, lsl #2
	cmp r6, r9
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label56
	b label3
label291:
	add r6, r6, #1
	cmp r6, #16
	blt label15
	b label6
.p2align 4
label354:
	mov r7, #0
	b label38
.p2align 4
label343:
	mov r7, #0
	b label34
label432:
	mov r7, #0
	b label80
label262:
	add r8, sp, #24
	add r9, sp, #88
	ldr r2, [r8, r4, lsl #2]
	ldr r3, [r9, r4, lsl #2]
	b label10
label418:
	mov r8, r10
	mov r7, #0
	b label84
.p2align 4
label335:
	mov r7, #0
	b label31
label415:
	mov r8, #0
	b label87
.p2align 4
label327:
	mov r7, #0
	b label28
label421:
	mov r7, #0
	b label63
label443:
	mov r7, #0
	b label78
label435:
	mov r7, #0
	b label68
label446:
	mov r7, #0
	b label74
label429:
	mov r7, #0
	b label82
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r6, #:lower16:a
	sub sp, sp, #4
	movt r6, #:upper16:a
	mov r0, r6
	mov r4, r6
	bl getarray
	mov r5, r0
	mov r0, #90
	bl _sysy_starttime
	mov r2, #0
	mov r1, r6
	mov r0, #8
	mov r3, r5
	bl radixSort
	cmp r5, #0
	ble label706
	sub r2, r5, #4
	cmp r5, #4
	ble label711
	mov r1, #0
	mov r0, r1
label694:
	add r7, r4, r1, lsl #2
	add r6, r1, #3
	ldr r3, [r7, #0]
	ldr r8, [r7, #4]
	sdiv r9, r8, r6
	mls r8, r9, r6, r8
	mla r9, r8, r1, r8
	add r8, r1, #2
	sdiv r10, r3, r8
	mls r3, r10, r8, r3
	ldr r10, [r7, #8]
	ldr r7, [r7, #12]
	mla r9, r1, r3, r9
	add r3, r1, #4
	add r1, r1, #5
	cmp r2, r3
	sdiv r11, r10, r3
	mls r10, r11, r3, r10
	mla r8, r8, r10, r9
	sdiv r9, r7, r1
	mls r1, r9, r1, r7
	mla r1, r6, r1, r8
	add r0, r0, r1
	ble label697
	mov r1, r3
	b label694
label697:
	ldr r1, [r4, r3, lsl #2]
	add r2, r3, #2
	sdiv r6, r1, r2
	mls r1, r6, r2, r1
	mla r0, r3, r1, r0
	add r3, r3, #1
	cmp r5, r3
	bgt label697
	mov r4, r0
label700:
	mov r0, #102
	bl _sysy_stoptime
	movs r0, r4
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label711:
	mov r0, #0
	mov r3, r0
	b label697
label706:
	mov r4, #0
	b label700
