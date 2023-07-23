.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, lr }
	mov r1, #0
	sub sp, sp, #84
	mov r2, r1
	str r1, [sp, #0]
	mov r0, sp
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
	cmp r1, #20
	bge label202
label116:
	add r3, r1, #1
	cmp r2, #1
	blt label600
	mov r4, #1
	str r4, [sp, #0]
	cmp r4, #0
	bne label119
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
label1098:
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label1143:
	mov r1, r3
	ldr r4, [r0, #8]
	add r3, r3, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r3
label20:
	ldr r3, [r0, #16]
	add r4, r1, #3
	cmp r3, #0
	beq label246
	b label245
label52:
	add r3, r1, #2
	cmp r2, #1
	blt label376
	mov r4, #0
	str r4, [sp, #0]
	cmp r4, #0
	bne label380
	add r3, r1, #4
	cmp r2, #2
	blt label386
	b label923
label376:
	mov r4, #1
	cmp r4, #0
	bne label380
	add r3, r1, #4
	cmp r2, #2
	blt label386
	mov r4, #0
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	b label60
label923:
	mov r4, #0
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label392
	b label391
label380:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label386:
	mov r4, #1
	cmp r4, #0
	bne label392
	add r3, r1, #6
	cmp r2, #3
	blt label397
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	b label63
label60:
	cmp r4, #0
	bne label392
label391:
	add r3, r1, #6
	cmp r2, #3
	blt label397
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	bne label401
	b label400
label63:
	cmp r4, #0
	bne label401
label400:
	add r3, r1, #8
	cmp r2, #4
	blt label406
	b label928
label401:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label406:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label11:
	sub r3, r2, #1
	add r1, r1, #1
	cmp r2, r3
	ble label18
	mov r4, #1
	cmp r3, #0
	str r4, [r0, r3, lsl #2]
	beq label17
	sub r3, r2, #2
	ldr r3, [r0, r3, lsl #2]
	cmp r3, #0
	bne label16
	ldr r2, [sp, #0]
	add r3, r1, #3
	cmp r2, #0
	bne label51
	b label898
label17:
	ldr r3, [sp, #0]
	cmp r3, #0
	bne label16
	ldr r2, [sp, #0]
	add r3, r1, #3
	cmp r2, #0
	bne label51
	mov r1, r3
	ldr r4, [r0, #8]
	add r3, r3, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r3
	ldr r3, [r0, #16]
	add r4, r1, #3
	cmp r3, #0
	beq label246
	b label245
label18:
	ldr r2, [sp, #0]
	add r3, r1, #3
	cmp r2, #0
	bne label51
	mov r1, r3
	ldr r4, [r0, #8]
	add r3, r3, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r3
	ldr r3, [r0, #16]
	add r4, r1, #3
	cmp r3, #0
	beq label246
	ldr r5, [r0, #20]
	add r4, r1, #6
	cmp r5, #0
	bne label23
	b label902
label51:
	ldr r3, [r0, #4]
	add r1, r1, #6
	cmp r3, #0
	bne label20
	ldr r4, [r0, #8]
	add r3, r1, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r3
	ldr r3, [r0, #16]
	add r4, r1, #3
	cmp r3, #0
	beq label246
	ldr r5, [r0, #20]
	add r4, r1, #6
	cmp r5, #0
	bne label23
	mov r1, r4
	add r1, r4, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	bne label29
	b label274
label1040:
	add r3, r1, #10
	cmp r2, #5
	blt label418
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	bne label425
	add r3, r1, #12
	cmp r2, #6
	blt label430
	mov r4, #0
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	bne label437
	b label1048
label418:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label1048:
	add r3, r1, #14
	cmp r2, #7
	blt label442
	b label1050
label425:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label1050:
	mov r4, #0
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	bne label449
	b label1052
label430:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label1052:
	add r3, r1, #16
	cmp r2, #8
	blt label454
	mov r4, #0
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	bne label461
	add r3, r1, #18
	cmp r2, #9
	blt label466
	mov r4, #0
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	bne label473
	b label1060
label454:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label1060:
	add r3, r1, #20
	cmp r2, #10
	blt label478
	mov r4, #0
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	bne label485
	add r3, r1, #22
	cmp r2, #11
	blt label490
	mov r4, #0
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	b label80
label473:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label80:
	cmp r4, #0
	beq label493
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label490:
	mov r4, #1
	b label80
label493:
	add r3, r1, #24
	cmp r2, #12
	blt label499
	mov r4, #0
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	bne label503
	b label502
label499:
	mov r4, #1
	cmp r4, #0
	beq label502
label503:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label502:
	add r3, r1, #26
	cmp r2, #13
	blt label508
	mov r4, #0
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	bne label515
	b label514
label508:
	mov r4, #1
	cmp r4, #0
	bne label515
	add r3, r1, #28
	cmp r2, #14
	blt label520
	mov r4, #0
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	beq label526
label527:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label514:
	add r3, r1, #28
	cmp r2, #14
	blt label520
	mov r4, #0
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	bne label527
label526:
	add r3, r1, #30
	cmp r2, #15
	blt label532
	mov r4, #0
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	bne label536
label535:
	add r3, r1, #32
	cmp r2, #16
	blt label541
	mov r4, #0
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	bne label545
	b label544
label536:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label541:
	mov r4, #1
	cmp r4, #0
	bne label545
label544:
	add r3, r1, #34
	cmp r2, #17
	blt label550
	mov r4, #0
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	bne label557
	b label556
label550:
	mov r4, #1
	cmp r4, #0
	bne label557
	add r3, r1, #36
	cmp r2, #18
	blt label562
	mov r4, #0
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	b label104
label556:
	add r3, r1, #36
	cmp r2, #18
	blt label562
	mov r4, #0
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	bne label566
	b label565
label557:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label562:
	mov r4, #1
label104:
	cmp r4, #0
	bne label566
label565:
	add r4, r1, #38
	cmp r2, #19
	blt label571
	mov r3, #0
	str r3, [r0, #72]
	ldr r3, [r0, #68]
	cmp r3, #0
	add r1, r1, #40
	movne r1, r4
	add r2, r2, #1
	cmp r2, #20
	blt label52
	b label977
label566:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label928:
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label1040
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label891:
	mov r2, #1
	cmp r2, #20
	blt label11
label1004:
	ldr r2, [sp, #0]
	add r3, r1, #3
	cmp r2, #0
	bne label51
	b label1143
label136:
	add r3, r1, #9
	cmp r2, #9
	blt label690
	mov r4, #1
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	bne label138
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label690:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label977:
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r1, #3
	cmp r2, #0
	bne label51
	b label1143
label202:
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label150:
	add r3, r1, #14
	cmp r2, #14
	blt label744
	mov r4, #1
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	bne label154
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label1124
label744:
	mov r4, #0
	cmp r4, #0
	bne label154
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label1124:
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label154:
	add r3, r1, #15
	cmp r2, #15
	blt label756
	mov r4, #1
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	bne label158
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label1126
label756:
	mov r4, #0
	cmp r4, #0
	bne label158
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label1126:
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label158:
	add r3, r1, #16
	cmp r2, #16
	blt label768
	mov r4, #1
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	bne label161
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label1128
label768:
	mov r4, #0
	cmp r4, #0
	bne label161
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
label1128:
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label161:
	add r3, r1, #17
	cmp r2, #17
	blt label777
	mov r4, #1
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	bne label164
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label1130
label777:
	mov r4, #0
	cmp r4, #0
	bne label164
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
label1130:
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label164:
	add r3, r1, #18
	cmp r2, #18
	blt label786
	mov r4, #1
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	bne label167
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label1132
label786:
	mov r4, #0
	cmp r4, #0
	bne label167
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
label1132:
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label167:
	add r4, r1, #19
	cmp r2, #19
	blt label795
	mov r3, #1
	str r3, [r0, #72]
	ldr r3, [r0, #68]
	cmp r3, #0
	add r3, r1, #20
	mov r1, r4
	movne r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label795:
	mov r3, #0
	cmp r3, #0
	add r3, r1, #20
	mov r1, r4
	movne r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	mov r2, #0
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	b label1004
label138:
	add r3, r1, #10
	cmp r2, #10
	blt label702
	mov r4, #1
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	bne label140
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label702:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label140:
	add r3, r1, #11
	cmp r2, #11
	blt label714
	mov r4, #1
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	cmp r4, #0
	bne label144
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label1118
label714:
	mov r4, #0
	cmp r4, #0
	bne label144
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label1118:
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label144:
	add r3, r1, #12
	cmp r2, #12
	blt label726
	mov r4, #1
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	bne label147
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label1120
label726:
	mov r4, #0
	cmp r4, #0
	bne label147
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
label1120:
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label147:
	add r3, r1, #13
	cmp r2, #13
	blt label735
	mov r4, #1
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	bne label150
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label1122
label735:
	mov r4, #0
	cmp r4, #0
	bne label150
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
label1122:
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label119:
	add r3, r1, #2
	cmp r2, #2
	blt label609
	mov r4, #1
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	bne label122
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label1100
label609:
	mov r4, #0
	cmp r4, #0
	bne label122
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
label1100:
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label122:
	add r3, r1, #3
	cmp r2, #3
	blt label618
	mov r4, #1
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	bne label126
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label1102
label618:
	mov r4, #0
	cmp r4, #0
	bne label126
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label1102:
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label126:
	add r3, r1, #4
	cmp r2, #4
	blt label630
	mov r4, #1
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	bne label128
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label630:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label128:
	add r3, r1, #5
	cmp r2, #5
	blt label642
	mov r4, #1
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	bne label130
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label642:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label130:
	add r3, r1, #6
	cmp r2, #6
	blt label654
	mov r4, #1
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	bne label132
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label654:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label132:
	add r3, r1, #7
	cmp r2, #7
	blt label666
	mov r4, #1
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	bne label134
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label666:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label134:
	add r3, r1, #8
	cmp r2, #8
	blt label678
	mov r4, #1
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	bne label136
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label202
label678:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	mov r2, #0
	cmp r2, #20
	blt label52
	b label891
label600:
	mov r4, #0
	cmp r4, #0
	bne label119
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label116
	b label1098
label515:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label520:
	mov r4, #1
	cmp r4, #0
	bne label527
	add r3, r1, #30
	cmp r2, #15
	blt label532
	mov r4, #0
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	b label94
label532:
	mov r4, #1
label94:
	cmp r4, #0
	bne label536
	b label535
label485:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label392:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label397:
	mov r4, #1
	b label63
label449:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label466:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label437:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label442:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label461:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label478:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label571:
	mov r3, #1
	cmp r3, #0
	add r1, r1, #40
	movne r1, r4
	add r2, r2, #1
	cmp r2, #20
	blt label52
	b label977
label545:
	mov r1, r3
	add r2, r2, #1
	cmp r2, #20
	blt label52
	mov r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r3, #3
	cmp r2, #0
	bne label51
	b label1143
label898:
	mov r1, r3
	ldr r4, [r0, #8]
	add r3, r3, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r3
	ldr r3, [r0, #16]
	add r4, r1, #3
	cmp r3, #0
	beq label246
label245:
	ldr r5, [r0, #20]
	add r4, r1, #6
	cmp r5, #0
	bne label23
label902:
	mov r1, r4
	add r1, r4, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	bne label29
	b label274
label246:
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	bne label29
	mov r1, r4
	ldr r5, [r0, #44]
	add r4, r4, #3
	cmp r5, #0
	beq label289
	ldr r5, [r0, #48]
	add r4, r1, #6
	cmp r5, #0
	beq label296
label1017:
	ldr r5, [r0, #52]
	add r4, r1, #9
	cmp r5, #0
	beq label303
	b label1162
label16:
	add r2, r2, #1
	cmp r2, #20
	blt label11
	ldr r2, [sp, #0]
	add r3, r1, #3
	cmp r2, #0
	bne label51
	mov r1, r3
	ldr r4, [r0, #8]
	add r3, r3, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r3
	ldr r3, [r0, #16]
	add r4, r1, #3
	cmp r3, #0
	beq label246
	b label245
label1162:
	ldr r4, [r0, #56]
	add r5, r1, #15
	cmp r4, #0
	add r4, r1, #12
	mov r1, r4
	movne r1, r5
label35:
	add r4, r1, #3
	cmp r2, #0
	bne label40
	b label312
label913:
	ldr r3, [r0, #24]
	add r2, r1, #6
	cmp r3, #0
	bne label46
	b label1164
label40:
	ldr r4, [r0, #8]
	add r2, r1, #6
	cmp r4, #0
	bne label41
	mov r1, r2
	ldr r3, [r0, #20]
	add r2, r2, #3
	cmp r3, #0
	bne label340
	ldr r3, [r0, #24]
	add r2, r1, #6
	cmp r3, #0
	bne label46
	b label1164
label42:
	add r1, r1, #12
	cmp r3, #0
	beq label333
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	bne label340
	ldr r3, [r0, #24]
	add r2, r1, #6
	cmp r3, #0
	bne label46
	b label1164
label340:
	mov r0, r2
	mov r1, #1
label37:
	add r0, r0, r1
	bl putint
	add sp, sp, #84
	mov r0, #0
	pop { r4, r5, pc }
label353:
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
	b label37
label41:
	ldr r4, [r0, #12]
	add r2, r1, #9
	cmp r4, #0
	beq label42
	mov r1, r2
	ldr r3, [r0, #20]
	add r2, r2, #3
	cmp r3, #0
	bne label340
	ldr r3, [r0, #24]
	add r2, r1, #6
	cmp r3, #0
	bne label46
	b label1164
label29:
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	beq label35
	ldr r5, [r0, #44]
	add r4, r1, #3
	cmp r5, #0
	beq label289
	ldr r5, [r0, #48]
	add r4, r1, #6
	cmp r5, #0
	beq label296
	ldr r5, [r0, #52]
	add r4, r1, #9
	cmp r5, #0
	beq label303
	b label1162
label289:
	mov r1, r4
	add r4, r4, #3
	cmp r2, #0
	bne label40
	mov r1, r4
	ldr r3, [r0, #20]
	add r2, r4, #3
	cmp r3, #0
	bne label340
	ldr r3, [r0, #24]
	add r2, r4, #6
	cmp r3, #0
	bne label46
	b label1164
label296:
	mov r1, r4
	add r4, r4, #3
	cmp r2, #0
	bne label40
	mov r1, r4
	ldr r3, [r0, #20]
	add r2, r4, #3
	cmp r3, #0
	bne label340
	ldr r3, [r0, #24]
	add r2, r4, #6
	cmp r3, #0
	beq label1164
label46:
	ldr r2, [r0, #28]
	add r1, r1, #9
	cmp r2, #0
	beq label333
	b label353
label23:
	ldr r5, [r0, #24]
	add r4, r1, #9
	cmp r5, #0
	beq label24
	mov r1, r4
	add r1, r4, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	bne label29
	mov r1, r4
	ldr r5, [r0, #44]
	add r4, r4, #3
	cmp r5, #0
	beq label289
	b label905
label24:
	ldr r4, [r0, #28]
	add r1, r1, #12
	cmp r4, #0
	bne label27
	add r1, r1, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	bne label29
	mov r1, r4
	ldr r5, [r0, #44]
	add r4, r4, #3
	cmp r5, #0
	beq label289
label905:
	ldr r5, [r0, #48]
	add r4, r1, #6
	cmp r5, #0
	beq label296
	b label1017
label27:
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	bne label29
label274:
	mov r1, r4
	ldr r5, [r0, #44]
	add r4, r4, #3
	cmp r5, #0
	beq label289
	b label905
label303:
	mov r1, r4
	add r4, r4, #3
	cmp r2, #0
	bne label40
	mov r1, r4
	ldr r3, [r0, #20]
	add r2, r4, #3
	cmp r3, #0
	bne label340
	ldr r3, [r0, #24]
	add r2, r4, #6
	cmp r3, #0
	bne label46
	b label1164
label312:
	mov r1, r4
	ldr r3, [r0, #20]
	add r2, r4, #3
	cmp r3, #0
	bne label340
	b label913
label1164:
	mov r1, r2
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
	b label37
label333:
	mov r0, r1
	mov r1, #1
	b label37
