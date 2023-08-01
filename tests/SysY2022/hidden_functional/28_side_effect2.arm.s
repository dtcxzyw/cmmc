.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, lr }
	mov r2, #0
	sub sp, sp, #80
	mov r1, r2
	str r2, [sp, #0]
	mov r0, sp
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
	blt label114
label198:
	mov r1, #0
	b label5
.p2align 4
label114:
	add r3, r2, #1
	cmp r1, #1
	blt label596
	mov r4, #1
	str r4, [sp, #0]
	cmp r4, #0
	bne label119
	b label925
.p2align 4
label596:
	mov r4, #0
	cmp r4, #0
	bne label119
.p2align 4
label599:
	mov r2, r3
.p2align 4
label117:
	add r1, r1, #1
	cmp r1, #20
	blt label114
	b label198
.p2align 4
label119:
	add r3, r2, #2
	cmp r1, #2
	blt label606
	mov r4, #1
	str r4, [sp, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label122
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label114
	b label198
.p2align 4
label606:
	mov r4, #0
	cmp r4, #0
	beq label609
.p2align 4
label122:
	add r3, r2, #3
	cmp r1, #3
	bge label614
	mov r4, #0
	cmp r4, #0
	beq label618
.p2align 4
label125:
	add r3, r2, #4
	cmp r1, #4
	bge label623
	mov r4, #0
	cmp r4, #0
	beq label627
.p2align 4
label128:
	add r3, r2, #5
	cmp r1, #5
	bge label632
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label114
	b label198
.p2align 4
label614:
	mov r4, #1
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label125
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label114
	b label198
.p2align 4
label623:
	mov r4, #1
	str r4, [sp, #12]
	ldr r4, [sp, #8]
	cmp r4, #0
	bne label128
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label114
	b label198
label5:
	cmp r1, #20
	blt label52
	b label202
label942:
	add r3, r2, #10
	cmp r1, #5
	blt label414
label894:
	mov r4, #0
	str r4, [sp, #16]
	ldr r4, [sp, #12]
	cmp r4, #0
	bne label421
label920:
	add r3, r2, #12
	cmp r1, #6
	bge label69
label426:
	mov r2, r3
	add r1, r1, #1
	b label5
label69:
	mov r4, #0
	str r4, [sp, #20]
	ldr r4, [sp, #16]
	cmp r4, #0
	bne label426
	add r3, r2, #14
	cmp r1, #7
	blt label426
	mov r4, #0
	str r4, [sp, #24]
	ldr r4, [sp, #20]
	cmp r4, #0
	bne label426
	add r3, r2, #16
	cmp r1, #8
	blt label426
	mov r4, #0
	str r4, [sp, #28]
	ldr r4, [sp, #24]
	cmp r4, #0
	bne label426
	add r3, r2, #18
	cmp r1, #9
	blt label426
	mov r4, #0
	str r4, [sp, #32]
	ldr r4, [sp, #28]
	cmp r4, #0
	bne label426
	add r3, r2, #20
	cmp r1, #10
	blt label426
	mov r4, #0
	str r4, [sp, #36]
	ldr r4, [sp, #32]
	cmp r4, #0
	bne label426
	add r3, r2, #22
	cmp r1, #11
	blt label426
	mov r4, #0
	str r4, [sp, #40]
	ldr r4, [sp, #36]
	cmp r4, #0
	bne label426
	add r3, r2, #24
	cmp r1, #12
	blt label426
	mov r4, #0
	str r4, [sp, #44]
	ldr r4, [sp, #40]
	cmp r4, #0
	bne label426
	add r3, r2, #26
	cmp r1, #13
	blt label510
	mov r4, #0
	str r4, [sp, #48]
	ldr r4, [sp, #44]
label83:
	cmp r4, #0
	bne label426
	add r3, r2, #28
	cmp r1, #14
	bge label518
	mov r4, #1
	b label86
label202:
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
	blt label372
	mov r4, #0
	str r4, [sp, #0]
	cmp r4, #0
	bne label376
	b label911
.p2align 4
label372:
	mov r4, #1
	cmp r4, #0
	beq label375
.p2align 4
label376:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label52
	b label202
.p2align 4
label375:
	add r3, r2, #4
	cmp r1, #2
	bge label889
.p2align 4
label381:
	mov r4, #1
	cmp r4, #0
	bne label385
	add r3, r2, #6
	cmp r1, #3
	bge label890
.p2align 4
label390:
	mov r4, #1
	cmp r4, #0
	bne label397
	add r3, r2, #8
	cmp r1, #4
	blt label402
	mov r4, #0
	str r4, [sp, #12]
	ldr r4, [sp, #8]
	cmp r4, #0
	beq label942
.p2align 4
label409:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label52
	b label202
.p2align 4
label911:
	add r3, r2, #4
	cmp r1, #2
	blt label381
	mov r4, #0
	str r4, [sp, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label385
	add r3, r2, #6
	cmp r1, #3
	blt label390
	mov r4, #0
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label397
	add r3, r2, #8
	cmp r1, #4
	blt label402
	b label950
.p2align 4
label889:
	mov r4, #0
	str r4, [sp, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label931
.p2align 4
label385:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label52
	b label202
.p2align 4
label931:
	add r3, r2, #6
	cmp r1, #3
	blt label390
	mov r4, #0
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne label397
	add r3, r2, #8
	cmp r1, #4
	blt label402
label950:
	mov r4, #0
	str r4, [sp, #12]
	ldr r4, [sp, #8]
	cmp r4, #0
	bne label409
label947:
	add r3, r2, #10
	cmp r1, #5
	blt label414
	b label894
.p2align 4
label402:
	mov r4, #1
	cmp r4, #0
	bne label409
	add r3, r2, #10
	cmp r1, #5
	bge label919
label414:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label52
	b label202
.p2align 4
label890:
	mov r4, #0
	str r4, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, #0
	beq label932
.p2align 4
label397:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label52
	b label202
label932:
	add r3, r2, #8
	cmp r1, #4
	blt label402
	mov r4, #0
	str r4, [sp, #12]
	ldr r4, [sp, #8]
	cmp r4, #0
	bne label409
	b label947
label632:
	mov r4, #1
	str r4, [sp, #16]
	ldr r4, [sp, #12]
	cmp r4, #0
	beq label904
	add r3, r2, #6
	cmp r1, #6
	blt label599
	mov r4, #1
	str r4, [sp, #20]
	ldr r4, [sp, #16]
	cmp r4, #0
	beq label599
	add r3, r2, #7
	cmp r1, #7
	blt label599
	mov r4, #1
	str r4, [sp, #24]
	ldr r4, [sp, #20]
	cmp r4, #0
	bne label134
	b label599
label919:
	mov r4, #0
	str r4, [sp, #16]
	ldr r4, [sp, #12]
	cmp r4, #0
	bne label421
	b label920
label11:
	ldr r1, [sp, #0]
	add r0, r2, #3
	cmp r1, #0
	bne label13
label212:
	ldr r3, [sp, #8]
	add r2, r0, #3
	add r0, r0, #6
	cmp r3, #0
	moveq r0, r2
label16:
	ldr r2, [sp, #16]
	add r3, r0, #3
	cmp r2, #0
	beq label233
	ldr r4, [sp, #20]
	add r3, r0, #6
	cmp r4, #0
	beq label239
	ldr r4, [sp, #24]
	add r3, r0, #9
	cmp r4, #0
	beq label22
	mov r0, r3
	add r0, r3, #3
	b label23
label233:
	mov r0, r3
label23:
	ldr r4, [sp, #36]
	add r3, r0, #3
	cmp r4, #0
	bne label44
	mov r0, r3
	b label39
label25:
	add r3, r0, #3
	cmp r1, #0
	bne label27
	b label265
label39:
	ldr r4, [sp, #44]
	add r3, r0, #3
	cmp r4, #0
	bne label41
label318:
	mov r0, r3
	b label25
label41:
	ldr r4, [sp, #48]
	add r3, r0, #6
	cmp r4, #0
	beq label318
	ldr r4, [sp, #52]
	add r3, r0, #9
	cmp r4, #0
	beq label318
	ldr r3, [sp, #56]
	add r4, r0, #15
	cmp r3, #0
	add r3, r0, #12
	mov r0, r3
	movne r0, r4
	b label25
label265:
	mov r0, r3
label30:
	ldr r2, [sp, #20]
	add r1, r0, #3
	cmp r2, #0
	beq label32
	mov r0, r1
	mov r1, #1
label36:
	add r0, r0, r1
	bl putint
	add sp, sp, #80
	mov r0, #0
	pop { r4, pc }
label32:
	ldr r2, [sp, #24]
	add r1, r0, #6
	cmp r2, #0
	beq label297
	ldr r1, [sp, #28]
	add r0, r0, #9
	cmp r1, #0
	beq label284
	b label33
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
label13:
	ldr r3, [sp, #4]
	add r0, r2, #6
	cmp r3, #0
	bne label16
	b label212
label239:
	mov r0, r3
label19:
	add r0, r0, #3
	b label23
label44:
	ldr r3, [sp, #40]
	add r0, r0, #6
	cmp r3, #0
	beq label25
	b label39
label27:
	ldr r3, [sp, #8]
	add r1, r0, #6
	cmp r3, #0
	bne label28
label272:
	mov r0, r1
	b label30
.p2align 4
label925:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label114
	b label198
label297:
	mov r0, r1
label33:
	ldr r1, [sp, #32]
	add r0, r0, #3
	cmp r1, #0
	mov r1, #0
	movwne r1, #1
	b label36
label28:
	ldr r3, [sp, #12]
	add r1, r0, #9
	cmp r3, #0
	bne label272
	add r0, r0, #12
	cmp r2, #0
	beq label284
	b label30
.p2align 4
label609:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label114
	b label198
label22:
	ldr r3, [sp, #28]
	add r0, r0, #12
	cmp r3, #0
	bne label23
	b label19
label134:
	add r3, r2, #8
	cmp r1, #8
	blt label599
	mov r4, #1
	str r4, [sp, #28]
	ldr r4, [sp, #24]
	cmp r4, #0
	bne label136
	b label599
.p2align 4
label618:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label114
	b label198
label627:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label114
	b label198
label136:
	add r3, r2, #9
	cmp r1, #9
	blt label599
	mov r4, #1
	str r4, [sp, #32]
	ldr r4, [sp, #28]
	cmp r4, #0
	bne label138
	b label599
label421:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label52
	b label202
label904:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	blt label114
	b label198
label138:
	add r3, r2, #10
	cmp r1, #10
	blt label599
	mov r4, #1
	str r4, [sp, #36]
	ldr r4, [sp, #32]
	cmp r4, #0
	beq label599
	add r3, r2, #11
	cmp r1, #11
	blt label599
	mov r4, #1
	str r4, [sp, #40]
	ldr r4, [sp, #36]
	cmp r4, #0
	beq label599
	add r3, r2, #12
	cmp r1, #12
	blt label599
	mov r4, #1
	str r4, [sp, #44]
	ldr r4, [sp, #40]
	cmp r4, #0
	beq label599
	add r3, r2, #13
	cmp r1, #13
	bge label728
	mov r4, #0
label146:
	cmp r4, #0
	beq label599
	add r3, r2, #14
	cmp r1, #14
	bge label740
	mov r4, #0
	b label150
label740:
	mov r4, #1
	str r4, [sp, #52]
	ldr r4, [sp, #48]
label150:
	cmp r4, #0
	beq label599
	add r3, r2, #15
	cmp r1, #15
	bge label752
	mov r4, #0
label154:
	cmp r4, #0
	bne label156
	b label599
label518:
	mov r4, #0
	str r4, [sp, #52]
	ldr r4, [sp, #48]
label86:
	cmp r4, #0
	bne label426
	add r3, r2, #30
	cmp r1, #15
	blt label528
	mov r4, #0
	str r4, [sp, #56]
	ldr r4, [sp, #52]
label89:
	cmp r4, #0
	bne label426
	add r3, r2, #32
	cmp r1, #16
	bge label536
	mov r4, #1
label92:
	cmp r4, #0
	bne label426
	add r3, r2, #34
	cmp r1, #17
	blt label546
	mov r4, #0
	str r4, [sp, #64]
	ldr r4, [sp, #60]
label95:
	cmp r4, #0
	bne label426
	add r3, r2, #36
	cmp r1, #18
	blt label555
	mov r4, #0
	str r4, [sp, #68]
	ldr r4, [sp, #64]
	b label98
label156:
	add r3, r2, #16
	cmp r1, #16
	bge label764
	mov r4, #0
label158:
	cmp r4, #0
	beq label599
	add r3, r2, #17
	cmp r1, #17
	blt label777
	mov r4, #1
	str r4, [sp, #64]
	ldr r4, [sp, #60]
label162:
	cmp r4, #0
	beq label599
	add r3, r2, #18
	cmp r1, #18
	bge label788
	mov r4, #0
label166:
	cmp r4, #0
	beq label599
	add r4, r2, #19
	cmp r1, #19
	bge label800
	mov r3, #0
	cmp r3, #0
	add r3, r2, #20
	mov r2, r4
	movne r2, r3
	b label117
label555:
	mov r4, #1
label98:
	cmp r4, #0
	bne label426
	add r4, r2, #38
	cmp r1, #19
	bge label563
	mov r3, #1
	cmp r3, #0
	add r2, r2, #40
	movne r2, r4
	add r1, r1, #1
	b label5
label284:
	mov r1, #1
	b label36
label536:
	mov r4, #0
	str r4, [sp, #60]
	ldr r4, [sp, #56]
	b label92
label800:
	mov r3, #1
	str r3, [sp, #72]
	ldr r3, [sp, #68]
	cmp r3, #0
	add r3, r2, #20
	mov r2, r4
	movne r2, r3
	b label117
label563:
	mov r3, #0
	str r3, [sp, #72]
	ldr r3, [sp, #68]
	cmp r3, #0
	add r2, r2, #40
	movne r2, r4
	add r1, r1, #1
	b label5
label788:
	mov r4, #1
	str r4, [sp, #68]
	ldr r4, [sp, #64]
	b label166
label777:
	mov r4, #0
	b label162
label764:
	mov r4, #1
	str r4, [sp, #60]
	ldr r4, [sp, #56]
	b label158
label528:
	mov r4, #1
	b label89
label546:
	mov r4, #1
	b label95
label752:
	mov r4, #1
	str r4, [sp, #56]
	ldr r4, [sp, #52]
	b label154
label51:
	ldr r1, [sp, #0]
	b label48
label728:
	mov r4, #1
	str r4, [sp, #48]
	ldr r4, [sp, #44]
	b label146
label510:
	mov r4, #1
	b label83
