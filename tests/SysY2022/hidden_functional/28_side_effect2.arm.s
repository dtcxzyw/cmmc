.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, lr }
	sub sp, sp, #80
	mov r2, #0
	mov r0, sp
	mov r1, r2
	str r2, [sp, #0]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #12]
	str r2, [sp, #16]
	str r2, [sp, #20]
	str r2, [sp, #24]
	str r2, [sp, #28]
	str r2, [sp, #32]
	str r2, [sp, #36]
	str r2, [sp, #40]
	str r2, [sp, #44]
	str r2, [sp, #48]
	str r2, [sp, #52]
	str r2, [sp, #56]
	str r2, [sp, #60]
	str r2, [sp, #64]
	str r2, [sp, #68]
	str r2, [sp, #72]
	str r2, [sp, #76]
	cmp r2, #20
	bge label202
.p2align 4
label116:
	add r3, r2, #1
	cmp r1, #1
	bge label599
	mov r4, #0
	cmp r4, #0
	bne label121
.p2align 4
label603:
	mov r2, r3
.p2align 4
label119:
	add r1, r1, #1
	cmp r1, #20
	blt label116
	b label202
.p2align 4
label121:
	add r3, r2, #2
	cmp r1, #2
	blt label610
	mov r4, #1
	str r4, [sp, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label124
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label116
	b label202
.p2align 4
label599:
	mov r4, #1
	str r4, [sp, #0]
	cmp r4, #0
	bne label121
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label116
	b label202
.p2align 4
label610:
	mov r4, #0
	cmp r4, #0
	beq label613
.p2align 4
label124:
	add r3, r2, #3
	cmp r1, #3
	blt label619
	mov r4, #1
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label127
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label116
	b label202
.p2align 4
label619:
	mov r4, #0
	cmp r4, #0
	beq label622
.p2align 4
label127:
	add r3, r2, #4
	cmp r1, #4
	blt label628
	mov r4, #1
	str r4, [sp, #12]
	ldr r4, [sp, #8]
	cmp r4, #0
	bne label130
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label116
	b label202
label628:
	mov r4, #0
	cmp r4, #0
	beq label631
label130:
	add r3, r2, #5
	cmp r1, #5
	blt label637
	mov r4, #1
	str r4, [sp, #16]
	ldr r4, [sp, #12]
	cmp r4, #0
	beq label603
	add r3, r2, #6
	cmp r1, #6
	blt label603
	mov r4, #1
	str r4, [sp, #20]
	ldr r4, [sp, #16]
	cmp r4, #0
	beq label603
	add r3, r2, #7
	cmp r1, #7
	blt label603
	mov r4, #1
	str r4, [sp, #24]
	ldr r4, [sp, #20]
	cmp r4, #0
	beq label603
	add r3, r2, #8
	cmp r1, #8
	blt label603
	mov r4, #1
	str r4, [sp, #28]
	ldr r4, [sp, #24]
	cmp r4, #0
	bne label138
	b label603
label202:
	mov r1, #0
label5:
	cmp r1, #20
	blt label52
	b label206
label897:
	add r3, r2, #8
	cmp r1, #4
	bge label920
label408:
	mov r4, #1
	cmp r4, #0
	bne label415
	add r3, r2, #10
	cmp r1, #5
	blt label420
label900:
	mov r4, #0
	str r4, [sp, #16]
	ldr r4, [sp, #12]
	cmp r4, #0
	beq label70
label427:
	mov r2, r3
	add r1, r1, #1
	b label5
label70:
	add r3, r2, #12
	cmp r1, #6
	blt label427
	mov r4, #0
	str r4, [sp, #20]
	ldr r4, [sp, #16]
	cmp r4, #0
	bne label427
	add r3, r2, #14
	cmp r1, #7
	blt label427
	mov r4, #0
	str r4, [sp, #24]
	ldr r4, [sp, #20]
	cmp r4, #0
	bne label427
	add r3, r2, #16
	cmp r1, #8
	blt label427
	mov r4, #0
	str r4, [sp, #28]
	ldr r4, [sp, #24]
	cmp r4, #0
	bne label427
	add r3, r2, #18
	cmp r1, #9
	blt label427
	mov r4, #0
	str r4, [sp, #32]
	ldr r4, [sp, #28]
	cmp r4, #0
	bne label427
	add r3, r2, #20
	cmp r1, #10
	blt label427
	mov r4, #0
	str r4, [sp, #36]
	ldr r4, [sp, #32]
	cmp r4, #0
	bne label427
	add r3, r2, #22
	cmp r1, #11
	blt label427
	mov r4, #0
	str r4, [sp, #40]
	ldr r4, [sp, #36]
	cmp r4, #0
	bne label427
	add r3, r2, #24
	cmp r1, #12
	bge label503
	mov r4, #1
label83:
	cmp r4, #0
	bne label427
	add r3, r2, #26
	cmp r1, #13
	bge label512
	mov r4, #1
	b label86
label206:
	mov r3, #1
label8:
	cmp r3, #20
	bge label11
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	ble label11
	b label46
.p2align 4
label52:
	add r3, r2, #2
	cmp r1, #1
	blt label376
	mov r4, #0
	str r4, [sp, #0]
	cmp r4, #0
	bne label380
	b label913
.p2align 4
label376:
	mov r4, #1
	cmp r4, #0
	beq label893
.p2align 4
label380:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label52
	b label206
.p2align 4
label913:
	add r3, r2, #4
	cmp r1, #2
	bge label931
.p2align 4
label385:
	mov r4, #1
	cmp r4, #0
	beq label895
.p2align 4
label391:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label52
	b label206
.p2align 4
label893:
	add r3, r2, #4
	cmp r1, #2
	blt label385
	mov r4, #0
	str r4, [sp, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label391
	add r3, r2, #6
	cmp r1, #3
	blt label396
	mov r4, #0
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label403
label933:
	add r3, r2, #8
	cmp r1, #4
	blt label408
	b label898
.p2align 4
label895:
	add r3, r2, #6
	cmp r1, #3
	bge label917
.p2align 4
label396:
	mov r4, #1
	cmp r4, #0
	beq label897
.p2align 4
label403:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label52
	b label206
.p2align 4
label931:
	mov r4, #0
	str r4, [sp, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label391
	add r3, r2, #6
	cmp r1, #3
	blt label396
	mov r4, #0
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label403
	b label933
label917:
	mov r4, #0
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label403
	add r3, r2, #8
	cmp r1, #4
	blt label408
label898:
	mov r4, #0
	str r4, [sp, #12]
	ldr r4, [sp, #8]
	cmp r4, #0
	beq label414
label415:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label52
	b label206
label920:
	mov r4, #0
	str r4, [sp, #12]
	ldr r4, [sp, #8]
	cmp r4, #0
	bne label415
label414:
	add r3, r2, #10
	cmp r1, #5
	bge label900
label420:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label52
	b label206
label11:
	ldr r1, [sp, #0]
	add r0, r2, #3
	cmp r1, #0
	bne label13
label216:
	ldr r3, [sp, #8]
	add r2, r0, #3
	add r0, r0, #6
	cmp r3, #0
	moveq r0, r2
label16:
	ldr r2, [sp, #16]
	add r3, r0, #3
	cmp r2, #0
	beq label237
	ldr r4, [sp, #20]
	add r3, r0, #6
	cmp r4, #0
	beq label243
	ldr r4, [sp, #24]
	add r3, r0, #9
	cmp r4, #0
	beq label22
	mov r0, r3
	add r0, r3, #3
	b label23
label237:
	mov r0, r3
label23:
	ldr r4, [sp, #36]
	add r3, r0, #3
	cmp r4, #0
	beq label265
	ldr r3, [sp, #40]
	add r0, r0, #6
	cmp r3, #0
	beq label25
	b label39
label265:
	mov r0, r3
	b label39
label25:
	add r3, r0, #3
	cmp r1, #0
	bne label27
	b label269
label39:
	ldr r4, [sp, #44]
	add r3, r0, #3
	cmp r4, #0
	bne label41
label322:
	mov r0, r3
	b label25
label41:
	ldr r4, [sp, #48]
	add r3, r0, #6
	cmp r4, #0
	beq label322
	ldr r4, [sp, #52]
	add r3, r0, #9
	cmp r4, #0
	beq label322
	ldr r3, [sp, #56]
	add r4, r0, #12
	cmp r3, #0
	add r3, r0, #15
	mov r0, r4
	movne r0, r3
	b label25
label269:
	mov r0, r3
label30:
	ldr r2, [sp, #20]
	add r1, r0, #3
	cmp r2, #0
	bne label295
	ldr r2, [sp, #24]
	add r1, r0, #6
	cmp r2, #0
	bne label35
	mov r0, r1
label33:
	ldr r1, [sp, #32]
	add r0, r0, #3
	cmp r1, #0
	mov r1, #0
	movwne r1, #1
	b label36
label295:
	mov r0, r1
	mov r1, #1
label36:
	add r0, r0, r1
	bl putint
	add sp, sp, #80
	mov r0, #0
	pop { r4, pc }
label46:
	mov r4, #1
	cmp r1, #0
	str r4, [r0, r1, lsl #2]
	beq label51
	sub r1, r3, #2
	ldr r1, [r0, r1, lsl #2]
label48:
	cmp r1, #0
	beq label11
	add r3, r3, #1
	b label8
label51:
	ldr r1, [sp, #0]
	b label48
label243:
	mov r0, r3
label19:
	add r0, r0, #3
	b label23
label13:
	ldr r3, [sp, #4]
	add r0, r2, #6
	cmp r3, #0
	bne label16
	b label216
label27:
	ldr r3, [sp, #8]
	add r1, r0, #6
	cmp r3, #0
	beq label276
	ldr r3, [sp, #12]
	add r1, r0, #9
	cmp r3, #0
	bne label276
	add r0, r0, #12
	cmp r2, #0
	beq label288
	b label30
label276:
	mov r0, r1
	b label30
.p2align 4
label613:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label116
	b label202
label288:
	mov r1, #1
	b label36
label35:
	ldr r1, [sp, #28]
	add r0, r0, #9
	cmp r1, #0
	beq label288
	b label33
label22:
	ldr r3, [sp, #28]
	add r0, r0, #12
	cmp r3, #0
	bne label23
	b label19
label622:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label116
	b label202
label631:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label116
	b label202
label637:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label116
	b label202
label138:
	add r3, r2, #9
	cmp r1, #9
	blt label603
	mov r4, #1
	str r4, [sp, #32]
	ldr r4, [sp, #28]
	cmp r4, #0
	beq label603
	add r3, r2, #10
	cmp r1, #10
	blt label603
	mov r4, #1
	str r4, [sp, #36]
	ldr r4, [sp, #32]
	cmp r4, #0
	beq label603
	add r3, r2, #11
	cmp r1, #11
	blt label603
	mov r4, #1
	str r4, [sp, #40]
	ldr r4, [sp, #36]
	cmp r4, #0
	beq label603
	add r3, r2, #12
	cmp r1, #12
	blt label721
	mov r4, #1
	str r4, [sp, #44]
	ldr r4, [sp, #40]
	b label146
label721:
	mov r4, #0
label146:
	cmp r4, #0
	beq label603
	add r3, r2, #13
	cmp r1, #13
	bge label732
	mov r4, #0
label150:
	cmp r4, #0
	bne label152
	b label603
label512:
	mov r4, #0
	str r4, [sp, #48]
	ldr r4, [sp, #44]
label86:
	cmp r4, #0
	bne label427
	add r3, r2, #28
	cmp r1, #14
	blt label522
	mov r4, #0
	str r4, [sp, #52]
	ldr r4, [sp, #48]
label89:
	cmp r4, #0
	bne label427
	add r3, r2, #30
	cmp r1, #15
	blt label531
	mov r4, #0
	str r4, [sp, #56]
	ldr r4, [sp, #52]
label92:
	cmp r4, #0
	bne label427
	add r3, r2, #32
	cmp r1, #16
	blt label540
	mov r4, #0
	str r4, [sp, #60]
	ldr r4, [sp, #56]
label95:
	cmp r4, #0
	bne label427
	add r3, r2, #34
	cmp r1, #17
	blt label549
	mov r4, #0
	str r4, [sp, #64]
	ldr r4, [sp, #60]
label98:
	cmp r4, #0
	bne label427
	add r3, r2, #36
	cmp r1, #18
	bge label557
	mov r4, #1
label101:
	cmp r4, #0
	bne label427
	add r4, r2, #38
	cmp r1, #19
	bge label566
	mov r3, #1
	cmp r3, #0
	add r2, r2, #40
	movne r2, r4
	add r1, r1, #1
	b label5
label152:
	add r3, r2, #14
	cmp r1, #14
	blt label745
	mov r4, #1
	str r4, [sp, #52]
	ldr r4, [sp, #48]
	b label154
label745:
	mov r4, #0
label154:
	cmp r4, #0
	beq label603
	add r3, r2, #15
	cmp r1, #15
	bge label756
	mov r4, #0
label158:
	cmp r4, #0
	beq label603
	add r3, r2, #16
	cmp r1, #16
	blt label769
	mov r4, #1
	str r4, [sp, #60]
	ldr r4, [sp, #56]
	b label162
label769:
	mov r4, #0
label162:
	cmp r4, #0
	beq label603
	add r3, r2, #17
	cmp r1, #17
	bge label780
	mov r4, #0
label166:
	cmp r4, #0
	beq label603
	add r3, r2, #18
	cmp r1, #18
	bge label792
	mov r4, #0
label170:
	cmp r4, #0
	beq label603
	add r4, r2, #19
	cmp r1, #19
	blt label805
	mov r3, #1
	str r3, [sp, #72]
	ldr r3, [sp, #68]
	cmp r3, #0
	add r3, r2, #20
	mov r2, r4
	movne r2, r3
	b label119
label805:
	mov r3, #0
	cmp r3, #0
	add r3, r2, #20
	mov r2, r4
	movne r2, r3
	b label119
label522:
	mov r4, #1
	b label89
label732:
	mov r4, #1
	str r4, [sp, #48]
	ldr r4, [sp, #44]
	b label150
label792:
	mov r4, #1
	str r4, [sp, #68]
	ldr r4, [sp, #64]
	b label170
label780:
	mov r4, #1
	str r4, [sp, #64]
	ldr r4, [sp, #60]
	b label166
label756:
	mov r4, #1
	str r4, [sp, #56]
	ldr r4, [sp, #52]
	b label158
label549:
	mov r4, #1
	b label98
label540:
	mov r4, #1
	b label95
label531:
	mov r4, #1
	b label92
label503:
	mov r4, #0
	str r4, [sp, #44]
	ldr r4, [sp, #40]
	b label83
label557:
	mov r4, #0
	str r4, [sp, #68]
	ldr r4, [sp, #64]
	b label101
label566:
	mov r3, #0
	str r3, [sp, #72]
	ldr r3, [sp, #68]
	cmp r3, #0
	add r2, r2, #40
	movne r2, r4
	add r1, r1, #1
	b label5
