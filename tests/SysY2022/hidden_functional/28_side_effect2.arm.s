.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, lr }
	sub sp, sp, #80
	mov r4, #0
	mov r0, #1
	mov r1, sp
	str r4, [sp, #0]
	mov r3, r4
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #12]
	str r4, [sp, #16]
	str r4, [sp, #20]
	str r4, [sp, #24]
	str r4, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	str r4, [sp, #44]
	str r4, [sp, #48]
	str r4, [sp, #52]
	str r4, [sp, #56]
	str r4, [sp, #60]
	str r4, [sp, #64]
	str r4, [sp, #68]
	str r4, [sp, #72]
	str r4, [sp, #76]
	mov r2, r4
	cmp r4, #20
	bge label202
.p2align 4
label116:
	add r5, r3, #1
	cmp r2, #1
	bge label599
	movs r6, r4
	bne label121
.p2align 4
label603:
	mov r3, r5
.p2align 4
label119:
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
.p2align 4
label121:
	add r5, r3, #2
	cmp r2, #2
	bge label609
	movs r6, r4
	beq label613
.p2align 4
label124:
	add r5, r3, #3
	cmp r2, #3
	bge label618
	movs r6, r4
	bne label127
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
.p2align 4
label599:
	str r0, [sp, #0]
	movs r6, r0
	bne label121
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
.p2align 4
label609:
	str r0, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label124
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
.p2align 4
label618:
	str r0, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	beq label930
.p2align 4
label127:
	add r5, r3, #4
	cmp r2, #4
	blt label628
	str r0, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	beq label931
.p2align 4
label130:
	add r5, r3, #5
	cmp r2, #5
	blt label637
	str r0, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	beq label603
	add r5, r3, #6
	cmp r2, #6
	blt label603
	str r0, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	beq label603
	add r5, r3, #7
	cmp r2, #7
	blt label603
	str r0, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	bne label136
	b label603
.p2align 4
label628:
	movs r6, r4
	bne label130
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label116
label202:
	mov r2, r4
label5:
	cmp r2, #20
	blt label52
	b label206
label900:
	add r5, r3, #10
	cmp r2, #5
	blt label420
label901:
	str r4, [sp, #16]
	ldr r6, [sp, #12]
	cmp r6, #0
	beq label70
label427:
	mov r3, r5
	add r2, r2, #1
	b label5
label206:
	mov r2, r0
label8:
	cmp r2, #20
	bge label11
	sub r5, r2, #1
	add r3, r3, #1
	cmp r2, r5
	ble label11
	b label46
.p2align 4
label52:
	add r5, r3, #2
	cmp r2, #1
	blt label376
	str r4, [sp, #0]
	movs r6, r4
	bne label380
	b label914
.p2align 4
label376:
	movs r6, r0
	beq label894
.p2align 4
label380:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label52
	b label206
.p2align 4
label894:
	add r5, r3, #4
	cmp r2, #2
	bge label915
.p2align 4
label385:
	movs r6, r0
	beq label896
.p2align 4
label391:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label52
	b label206
.p2align 4
label914:
	add r5, r3, #4
	cmp r2, #2
	blt label385
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label391
	add r5, r3, #6
	cmp r2, #3
	blt label396
	str r4, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	bne label403
	b label934
.p2align 4
label396:
	movs r6, r0
	bne label403
	add r5, r3, #8
	cmp r2, #4
	bge label921
.p2align 4
label408:
	movs r6, r0
	beq label900
.p2align 4
label415:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label52
	b label206
.p2align 4
label915:
	str r4, [sp, #4]
	ldr r6, [sp, #0]
	cmp r6, #0
	bne label391
	add r5, r3, #6
	cmp r2, #3
	blt label396
	str r4, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	beq label934
.p2align 4
label403:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label52
	b label206
.p2align 4
label896:
	add r5, r3, #6
	cmp r2, #3
	blt label396
	str r4, [sp, #8]
	ldr r6, [sp, #4]
	cmp r6, #0
	bne label403
	add r5, r3, #8
	cmp r2, #4
	blt label408
	b label899
label934:
	add r5, r3, #8
	cmp r2, #4
	blt label408
label899:
	str r4, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label415
label414:
	add r5, r3, #10
	cmp r2, #5
	bge label901
label420:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label52
	b label206
label921:
	str r4, [sp, #12]
	ldr r6, [sp, #8]
	cmp r6, #0
	bne label415
	b label414
label70:
	add r5, r3, #12
	cmp r2, #6
	blt label427
	str r4, [sp, #20]
	ldr r6, [sp, #16]
	cmp r6, #0
	bne label427
	add r5, r3, #14
	cmp r2, #7
	blt label427
	str r4, [sp, #24]
	ldr r6, [sp, #20]
	cmp r6, #0
	bne label427
	add r5, r3, #16
	cmp r2, #8
	blt label427
	str r4, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	bne label427
	add r5, r3, #18
	cmp r2, #9
	blt label427
	str r4, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	bne label427
	add r5, r3, #20
	cmp r2, #10
	blt label427
	str r4, [sp, #36]
	ldr r6, [sp, #32]
	cmp r6, #0
	bne label427
	add r5, r3, #22
	cmp r2, #11
	blt label427
	str r4, [sp, #40]
	ldr r6, [sp, #36]
	cmp r6, #0
	bne label427
	add r6, r3, #24
	cmp r2, #12
	bge label503
	mov r5, r0
label83:
	cmp r5, #0
	bne label508
	add r6, r3, #26
	cmp r2, #13
	bge label512
	mov r5, r0
	b label86
label11:
	ldr r2, [sp, #0]
	add r1, r3, #3
	cmp r2, #0
	bne label13
label216:
	ldr r5, [sp, #8]
	add r3, r1, #3
	add r1, r1, #6
	cmp r5, #0
	moveq r1, r3
label16:
	ldr r3, [sp, #16]
	add r5, r1, #3
	cmp r3, #0
	beq label237
	ldr r6, [sp, #20]
	add r5, r1, #6
	cmp r6, #0
	beq label243
	ldr r6, [sp, #24]
	add r5, r1, #9
	cmp r6, #0
	beq label22
	mov r1, r5
	add r1, r5, #3
	b label23
label237:
	mov r1, r5
label23:
	ldr r6, [sp, #36]
	add r5, r1, #3
	cmp r6, #0
	beq label265
	ldr r5, [sp, #40]
	add r1, r1, #6
	cmp r5, #0
	beq label25
	b label39
label265:
	mov r1, r5
	b label39
label25:
	add r5, r1, #3
	cmp r2, #0
	bne label27
	b label269
label39:
	ldr r6, [sp, #44]
	add r5, r1, #3
	cmp r6, #0
	bne label41
label322:
	mov r1, r5
	b label25
label41:
	ldr r6, [sp, #48]
	add r5, r1, #6
	cmp r6, #0
	beq label322
	ldr r6, [sp, #52]
	add r5, r1, #9
	cmp r6, #0
	beq label322
	ldr r5, [sp, #56]
	add r6, r1, #15
	cmp r5, #0
	add r5, r1, #12
	mov r1, r5
	movne r1, r6
	b label25
label269:
	mov r1, r5
label30:
	ldr r3, [sp, #20]
	add r2, r1, #3
	cmp r3, #0
	bne label295
	ldr r3, [sp, #24]
	add r2, r1, #6
	cmp r3, #0
	bne label35
	mov r0, r2
	ldr r1, [sp, #32]
	mov r2, #0
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label36
label295:
	mov r1, r2
label36:
	add r0, r1, r0
	bl putint
	add sp, sp, #80
	mov r0, r4
	pop { r4, r5, r6, pc }
label46:
	str r0, [r1, r5, lsl #2]
	cmp r5, #0
	beq label51
	sub r5, r2, #2
	ldr r5, [r1, r5, lsl #2]
label48:
	cmp r5, #0
	beq label11
	add r2, r2, #1
	b label8
label27:
	ldr r5, [sp, #8]
	add r2, r1, #6
	cmp r5, #0
	beq label276
	ldr r5, [sp, #12]
	add r2, r1, #9
	cmp r5, #0
	bne label276
	add r1, r1, #12
	cmp r3, #0
	beq label36
	b label30
label13:
	ldr r5, [sp, #4]
	add r1, r3, #6
	cmp r5, #0
	bne label16
	b label216
label243:
	mov r1, r5
label19:
	add r1, r1, #3
	b label23
label276:
	mov r1, r2
	b label30
.p2align 4
label613:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label35:
	ldr r2, [sp, #28]
	add r1, r1, #9
	cmp r2, #0
	beq label36
	mov r0, r1
	ldr r1, [sp, #32]
	mov r2, #0
	cmp r1, #0
	add r1, r0, #3
	movwne r2, #1
	mov r0, r2
	b label36
label22:
	ldr r5, [sp, #28]
	add r1, r1, #12
	cmp r5, #0
	bne label23
	b label19
.p2align 4
label930:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label136:
	add r5, r3, #8
	cmp r2, #8
	blt label603
	str r0, [sp, #28]
	ldr r6, [sp, #24]
	cmp r6, #0
	bne label138
	b label603
label637:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label931:
	mov r3, r5
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label138:
	add r5, r3, #9
	cmp r2, #9
	blt label603
	str r0, [sp, #32]
	ldr r6, [sp, #28]
	cmp r6, #0
	beq label603
	add r5, r3, #10
	cmp r2, #10
	blt label603
	str r0, [sp, #36]
	ldr r6, [sp, #32]
	cmp r6, #0
	beq label603
	add r5, r3, #11
	cmp r2, #11
	blt label603
	str r0, [sp, #40]
	ldr r6, [sp, #36]
	cmp r6, #0
	beq label603
	add r6, r3, #12
	cmp r2, #12
	blt label721
	str r0, [sp, #44]
	ldr r5, [sp, #40]
label146:
	cmp r5, #0
	bne label148
label727:
	mov r3, r6
	b label119
label148:
	add r6, r3, #13
	cmp r2, #13
	bge label732
	mov r5, r4
label150:
	cmp r5, #0
	bne label152
	b label727
label508:
	mov r3, r6
	add r2, r2, #1
	b label5
label512:
	str r4, [sp, #48]
	ldr r5, [sp, #44]
label86:
	cmp r5, #0
	bne label508
	add r6, r3, #28
	cmp r2, #14
	blt label522
	str r4, [sp, #52]
	ldr r5, [sp, #48]
label89:
	cmp r5, #0
	bne label508
	add r6, r3, #30
	cmp r2, #15
	blt label531
	str r4, [sp, #56]
	ldr r5, [sp, #52]
label92:
	cmp r5, #0
	bne label508
	add r6, r3, #32
	cmp r2, #16
	blt label540
	str r4, [sp, #60]
	ldr r5, [sp, #56]
label95:
	cmp r5, #0
	bne label508
	add r6, r3, #34
	cmp r2, #17
	blt label549
	str r4, [sp, #64]
	ldr r5, [sp, #60]
label98:
	cmp r5, #0
	bne label508
	add r6, r3, #36
	cmp r2, #18
	bge label557
	mov r5, r0
label101:
	cmp r5, #0
	bne label508
	add r6, r3, #38
	cmp r2, #19
	bge label566
	movs r5, r0
	add r3, r3, #40
	movne r3, r6
	add r2, r2, #1
	b label5
label152:
	add r6, r3, #14
	cmp r2, #14
	blt label745
	str r0, [sp, #52]
	ldr r5, [sp, #48]
	b label154
label745:
	mov r5, r4
label154:
	cmp r5, #0
	beq label727
	add r6, r3, #15
	cmp r2, #15
	bge label756
	mov r5, r4
label158:
	cmp r5, #0
	beq label727
	add r6, r3, #16
	cmp r2, #16
	blt label769
	str r0, [sp, #60]
	ldr r5, [sp, #56]
	b label162
label769:
	mov r5, r4
label162:
	cmp r5, #0
	beq label727
	add r6, r3, #17
	cmp r2, #17
	bge label780
	mov r5, r4
label166:
	cmp r5, #0
	beq label727
	add r6, r3, #18
	cmp r2, #18
	bge label792
	mov r5, r4
label170:
	cmp r5, #0
	beq label727
	add r6, r3, #19
	cmp r2, #19
	blt label805
	str r0, [sp, #72]
	ldr r5, [sp, #68]
	cmp r5, #0
	add r5, r3, #20
	mov r3, r6
	movne r3, r5
	b label119
label805:
	movs r5, r4
	add r5, r3, #20
	mov r3, r6
	movne r3, r5
	b label119
label732:
	str r0, [sp, #48]
	ldr r5, [sp, #44]
	b label150
label531:
	mov r5, r0
	b label92
label503:
	str r4, [sp, #44]
	ldr r5, [sp, #40]
	b label83
label792:
	str r0, [sp, #68]
	ldr r5, [sp, #64]
	b label170
label780:
	str r0, [sp, #64]
	ldr r5, [sp, #60]
	b label166
label557:
	str r4, [sp, #68]
	ldr r5, [sp, #64]
	b label101
label756:
	str r0, [sp, #56]
	ldr r5, [sp, #52]
	b label158
label549:
	mov r5, r0
	b label98
label540:
	mov r5, r0
	b label95
label51:
	ldr r5, [sp, #0]
	b label48
label522:
	mov r5, r0
	b label89
label721:
	mov r5, r4
	b label146
label566:
	str r4, [sp, #72]
	ldr r5, [sp, #68]
	cmp r5, #0
	add r3, r3, #40
	movne r3, r6
	add r2, r2, #1
	b label5
