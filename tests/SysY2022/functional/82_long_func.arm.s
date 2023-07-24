.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r2, #2
	mov r1, #1
	sub sp, sp, #80
	mov r0, #4
	mov r6, sp
	str r6, [sp, #64]
	str r1, [sp, #0]
	str r2, [r6, #4]
	str r0, [r6, #8]
	mov r0, #8
	str r0, [r6, #12]
	mov r0, #16
	str r0, [r6, #16]
	mov r0, #32
	str r0, [r6, #20]
	mov r0, #64
	str r0, [r6, #24]
	mov r0, #128
	str r0, [r6, #28]
	mov r0, #256
	str r0, [r6, #32]
	mov r0, #512
	str r0, [r6, #36]
	mov r0, #1024
	str r0, [r6, #40]
	mov r0, #2048
	str r0, [r6, #44]
	mov r0, #4096
	str r0, [r6, #48]
	mov r0, #8192
	str r0, [r6, #52]
	mov r0, #16384
	str r0, [r6, #56]
	mov r0, #32768
	str r0, [r6, #60]
	mov r0, #0
label2:
	cmp r0, #0
	ble label6
	mov r4, #0
	mov r6, #1
	mov r5, r0
	mov r3, r4
	b label584
label6:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r1, #1
	mov r2, #2
	mov r0, r1
	b label7
label590:
	cmp r1, #0
	bne label1906
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label2068
label1906:
	mov r6, #1
	mov r5, r1
	mov r8, #0
	mov r7, r8
	b label594
label1980:
	movw r4, #32767
	cmp r1, r4
	bgt label670
	b label669
label1981:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	b label638
label1988:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
label653:
	cmp r7, #16
	blt label658
	mov r5, r4
	movs r7, r9
	bne label1981
	b label1980
label658:
	and r6, r5, r8
	ands r6, r6, #1
	beq label659
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label659:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	b label653
label669:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	b label590
label670:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	b label590
label2068:
	movw r2, #32767
	cmp r0, r2
	bgt label763
	b label764
label2069:
	mov r7, #0
	mov r6, #1
	mov r8, r2
	mov r5, r7
	b label681
label763:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r2
	mov r2, r3
	b label2
label638:
	cmp r9, #16
	blt label662
	mov r8, #0
	mov r9, r5
	mov r5, r8
	b label643
label662:
	ands r6, r10, #1
	bne label666
	b label667
label663:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
label664:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label638
label643:
	cmp r5, #16
	bge label1988
	and r6, r7, r9
	ands r6, r6, #1
	beq label649
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label649:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	b label643
label666:
	ands r6, r8, #1
	beq label663
	b label664
label667:
	ands r6, r8, #1
	bne label663
	b label664
label681:
	cmp r5, #16
	blt label758
	cmp r7, #0
	bne label2077
	mov r5, r4
	mov r7, r4
	b label722
label2077:
	mov r5, r3
	movs r7, r4
	bne label2081
	b label2080
label722:
	cmp r7, #0
	bne label2144
	b label2143
label758:
	and r6, r6, r8
	ands r6, r6, #1
	beq label760
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r7, r7, r6
label760:
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	b label681
label2143:
	movw r4, #32767
	cmp r2, r4
	bgt label756
	b label2206
label2144:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	b label725
label2151:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
label736:
	cmp r7, #16
	blt label741
	mov r5, r4
	movs r7, r9
	bne label2144
	b label2143
label741:
	and r6, r5, r8
	ands r6, r6, #1
	bne label2164
	b label742
label2206:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	b label677
label756:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	b label677
label725:
	cmp r9, #16
	blt label749
	mov r8, #0
	mov r9, r5
	mov r5, r8
	b label730
label749:
	ands r6, r10, #1
	bne label750
	b label753
label2192:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
label751:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label725
label753:
	ands r6, r8, #1
	bne label2192
	b label751
label730:
	cmp r5, #16
	bge label2151
	and r6, r7, r9
	ands r6, r6, #1
	beq label746
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label746:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	b label730
label2164:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label742:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	b label736
label2080:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label2144
	b label2143
label2081:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	b label690
label711:
	cmp r7, #16
	blt label716
	mov r5, r3
	movs r7, r8
	bne label2081
	b label2080
label716:
	and r6, r5, r9
	ands r6, r6, #1
	beq label718
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
label718:
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	b label711
label750:
	ands r6, r8, #1
	beq label2192
	b label751
label690:
	cmp r9, #16
	blt label695
	mov r9, #0
	mov r8, r9
	b label701
label696:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label697:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label690
label695:
	ands r6, r10, #1
	bne label699
	ands r6, r8, #1
	bne label696
	b label697
label701:
	cmp r8, #16
	blt label706
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	b label711
label706:
	and r6, r7, r5
	ands r6, r6, #1
	beq label708
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label708:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	b label701
label699:
	ands r6, r8, #1
	beq label696
	b label697
label594:
	cmp r7, #16
	blt label671
	cmp r8, #0
	bne label1914
	mov r5, r4
	mov r7, r4
	b label635
label1914:
	mov r5, r3
	movs r7, r4
	bne label1918
	b label1917
label635:
	cmp r7, #0
	bne label1981
	b label1980
label671:
	and r6, r6, r5
	ands r6, r6, #1
	beq label673
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
label673:
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	b label594
label1917:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1981
	b label1980
label1918:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	b label603
label624:
	cmp r7, #16
	blt label629
	mov r5, r3
	movs r7, r9
	bne label1918
	b label1917
label629:
	and r6, r5, r8
	ands r6, r6, #1
	beq label631
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label631:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	b label624
label603:
	cmp r9, #16
	blt label608
	mov r9, #0
	mov r8, r9
	b label614
label608:
	ands r6, r10, #1
	beq label611
	ands r6, r8, #1
	beq label610
	b label612
label611:
	ands r6, r8, #1
	bne label610
label612:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label603
label614:
	cmp r8, #16
	blt label619
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	b label624
label619:
	and r6, r7, r5
	ands r6, r6, #1
	bne label620
label621:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	b label614
label610:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	b label612
label620:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label621
label7:
	cmp r0, #0
	ble label196
	mov r6, #1
	mov r3, r0
	mov r5, #0
	mov r4, r5
	b label11
label109:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	b label7
label196:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #2
	str r0, [sp, #68]
label197:
	ldr r0, [sp, #68]
	cmp r0, #16
	blt label1155
	mov r0, #0
	str r0, [sp, #72]
	cmp r0, #16
	blt label1159
	b label1158
label1155:
	mov r2, #2
	mov r1, #1
	ldr r0, [sp, #68]
	b label394
label1158:
	mov r0, #0
	b label201
label1159:
	mov r2, #2
	mov r1, #1
	ldr r0, [sp, #72]
	b label203
label201:
	add sp, sp, #80
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label394:
	cmp r0, #0
	ble label398
	mov r4, #0
	mov r6, #1
	mov r5, r0
	mov r3, r4
	b label399
label398:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #68]
	add r0, r0, #1
	str r0, [sp, #68]
	b label197
label1546:
	movw r2, #32767
	cmp r0, r2
	bgt label413
	b label412
label1547:
	mov r6, #1
	mov r5, r2
	mov r8, #0
	mov r7, r8
	b label414
label413:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r2
	mov r2, r3
	b label394
label495:
	cmp r1, #0
	bne label1724
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1547
	b label1546
label1724:
	mov r6, #1
	mov r5, r1
	mov r8, #0
	mov r7, r8
	b label499
label1746:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1810
	b label1809
label1747:
	mov r8, r7
	mov r10, r5
	mov r3, #0
	mov r9, r3
	b label512
label1754:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
label527:
	cmp r7, #16
	blt label532
	mov r5, r3
	movs r7, r9
	bne label1747
	b label1746
label532:
	and r6, r5, r8
	ands r6, r6, #1
	beq label533
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label533:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	b label527
label1809:
	movw r4, #32767
	cmp r1, r4
	ble label579
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	b label495
label1810:
	mov r8, r7
	mov r10, r5
	mov r4, #0
	mov r9, r4
	b label547
label1837:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
label564:
	cmp r7, #16
	blt label569
	mov r5, r4
	movs r7, r8
	bne label1810
	b label1809
label569:
	and r6, r5, r9
	ands r6, r6, #1
	bne label570
label571:
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	b label564
label547:
	cmp r9, #16
	blt label552
	mov r9, #0
	mov r8, r9
	b label558
label1823:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
label554:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label547
label558:
	cmp r8, #16
	bge label1837
	and r6, r7, r5
	ands r6, r6, #1
	bne label574
	b label575
label552:
	ands r6, r10, #1
	bne label553
	ands r6, r8, #1
	bne label1823
	b label554
label553:
	ands r6, r8, #1
	beq label1823
	b label554
label574:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label575:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	b label558
label570:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label571
label512:
	cmp r9, #16
	blt label536
	mov r9, #0
	mov r8, r9
	b label517
label536:
	ands r6, r10, #1
	bne label537
	b label1789
label538:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label540:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label512
label517:
	cmp r8, #16
	bge label1754
	and r6, r7, r5
	ands r6, r6, #1
	beq label523
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label523:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	b label517
label1789:
	ands r6, r8, #1
	bne label538
	b label540
label537:
	ands r6, r8, #1
	beq label538
	b label540
label414:
	cmp r7, #16
	blt label419
	cmp r8, #0
	bne label1580
	b label1579
label419:
	and r6, r6, r5
	ands r6, r6, #1
	beq label420
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
label420:
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	b label414
label1579:
	mov r5, r4
	mov r7, r4
	b label426
label1580:
	mov r5, r3
	mov r7, r4
	b label462
label426:
	cmp r7, #0
	bne label1584
	b label1583
label462:
	cmp r7, #0
	bne label1661
	b label1660
label1583:
	movw r4, #32767
	cmp r2, r4
	ble label460
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	b label407
label1660:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1584
	b label1583
label1661:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	b label465
label482:
	cmp r7, #16
	blt label487
	mov r5, r3
	movs r7, r9
	bne label1661
	b label1660
label487:
	and r6, r5, r8
	ands r6, r6, #1
	bne label488
label489:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	b label482
label1584:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	b label429
label1591:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
label444:
	cmp r7, #16
	blt label449
	mov r5, r4
	movs r7, r9
	bne label1584
	b label1583
label449:
	and r6, r5, r8
	ands r6, r6, #1
	bne label450
	b label451
label429:
	cmp r9, #16
	blt label453
	mov r8, #0
	mov r9, r5
	mov r5, r8
label434:
	cmp r5, #16
	bge label1591
	and r6, r7, r9
	ands r6, r6, #1
	bne label1597
	b label440
label453:
	ands r6, r10, #1
	bne label456
	ands r6, r8, #1
	bne label454
label457:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label429
label454:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	b label457
label1597:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label440:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	b label434
label450:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label451:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	b label444
label456:
	ands r6, r8, #1
	beq label454
	b label457
label488:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label489
label465:
	cmp r9, #16
	blt label470
	mov r8, #0
	mov r9, r5
	mov r5, r8
	b label476
label471:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label473:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label465
label476:
	cmp r5, #16
	blt label491
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label482
label491:
	and r6, r7, r9
	ands r6, r6, #1
	bne label1713
	b label492
label470:
	ands r6, r10, #1
	bne label475
	ands r6, r8, #1
	bne label471
	b label473
label475:
	ands r6, r8, #1
	beq label471
	b label473
label1713:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label492:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	b label476
label814:
	movw r2, #32767
	cmp r0, r2
	bgt label978
	b label109
label815:
	mov r7, #0
	mov r6, #1
	mov r8, r2
	mov r5, r7
	b label27
label978:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r2
	mov r2, r3
	b label7
label111:
	cmp r1, #0
	bne label992
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label815
	b label814
label992:
	mov r6, #1
	mov r5, r1
	mov r8, #0
	mov r7, r8
	b label115
label1003:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1067
	b label1066
label1004:
	mov r8, r7
	mov r10, r5
	mov r3, #0
	mov r9, r3
	b label124
label145:
	cmp r7, #16
	blt label150
	mov r5, r3
	movs r7, r8
	bne label1004
	b label1003
label150:
	and r6, r5, r9
	ands r6, r6, #1
	beq label152
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
label152:
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	b label145
label1066:
	movw r4, #32767
	cmp r1, r4
	ble label191
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	b label111
label191:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	b label111
label499:
	cmp r7, #16
	blt label504
	cmp r8, #0
	bne label1743
	b label1742
label504:
	and r6, r6, r5
	ands r6, r6, #1
	beq label506
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
label506:
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	b label499
label1742:
	mov r5, r4
	mov r7, r4
	b label544
label1743:
	mov r5, r3
	movs r7, r4
	bne label1747
	b label1746
label544:
	cmp r7, #0
	bne label1810
	b label1809
label1067:
	mov r8, r7
	mov r10, r5
	mov r4, #0
	mov r9, r4
label159:
	cmp r9, #16
	blt label183
	mov r9, #0
	mov r8, r9
label164:
	cmp r8, #16
	blt label169
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	b label174
label169:
	and r6, r7, r5
	ands r6, r6, #1
	bne label1080
	b label170
label174:
	cmp r7, #16
	blt label179
	mov r5, r4
	movs r7, r8
	bne label1067
	b label1066
label179:
	and r6, r5, r9
	ands r6, r6, #1
	beq label180
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
label180:
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	b label174
label183:
	ands r6, r10, #1
	bne label188
	b label187
label184:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label159
label186:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	b label184
label187:
	ands r6, r8, #1
	bne label186
	b label184
label1080:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label170:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	b label164
label188:
	ands r6, r8, #1
	beq label186
	b label184
label124:
	cmp r9, #16
	blt label129
	mov r9, #0
	mov r8, r9
	b label135
label133:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label124
label135:
	cmp r8, #16
	blt label140
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	b label145
label140:
	and r6, r7, r5
	ands r6, r6, #1
	bne label141
	b label142
label129:
	ands r6, r10, #1
	bne label130
	ands r6, r8, #1
	bne label131
	b label133
label130:
	ands r6, r8, #1
	bne label133
label131:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	b label133
label141:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label142:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	b label135
label199:
	ldr r0, [sp, #72]
	cmp r0, #16
	blt label1159
	b label1158
label203:
	cmp r0, #0
	bgt label1163
	ldr r6, [sp, #64]
	ldr r0, [sp, #72]
	ldr r0, [r6, r0, lsl #2]
	cmp r1, r0
	bne label1170
	b label1169
label1163:
	mov r4, #0
	mov r6, #1
	mov r5, r0
	mov r3, r4
	b label209
label1169:
	ldr r0, [sp, #72]
	add r0, r0, #1
	str r0, [sp, #72]
	b label199
label1170:
	mov r0, #1
	b label201
label1193:
	movw r2, #32767
	cmp r0, r2
	bgt label227
	b label226
label1194:
	mov r7, #0
	mov r6, #1
	mov r8, r2
	mov r5, r7
	b label228
label226:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	b label203
label227:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r2
	mov r2, r3
	b label203
label309:
	cmp r1, #0
	bne label1371
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1194
	b label1193
label1371:
	mov r7, #0
	mov r6, #1
	mov r8, r1
	mov r5, r7
	b label313
label392:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	b label309
label1456:
	movw r4, #32767
	cmp r1, r4
	bgt label1520
	b label392
label1457:
	mov r8, r7
	mov r10, r5
	mov r4, #0
	mov r9, r4
	b label361
label1484:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
label378:
	cmp r7, #16
	blt label383
	mov r5, r4
	movs r7, r9
	bne label1457
	b label1456
label383:
	and r6, r5, r8
	ands r6, r6, #1
	beq label384
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label384:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	b label378
label1520:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	b label309
label361:
	cmp r9, #16
	blt label366
	mov r9, #0
	mov r8, r9
	b label372
label369:
	ands r6, r8, #1
	beq label367
label370:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label361
label372:
	cmp r8, #16
	bge label1484
	and r6, r7, r5
	ands r6, r6, #1
	beq label388
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label388:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	b label372
label366:
	ands r6, r10, #1
	bne label369
	ands r6, r8, #1
	beq label370
label367:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	b label370
label228:
	cmp r5, #16
	blt label305
	cmp r7, #0
	bne label1216
	mov r5, r4
	mov r7, r4
	b label269
label1216:
	mov r5, r3
	movs r7, r4
	bne label1220
	b label1219
label269:
	cmp r7, #0
	bne label1283
	b label1282
label305:
	and r6, r6, r8
	ands r6, r6, #1
	beq label306
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r7, r7, r6
label306:
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	b label228
label1282:
	movw r4, #32767
	cmp r2, r4
	bgt label303
	b label304
label1283:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	b label272
label287:
	cmp r7, #16
	blt label292
	mov r5, r4
	movs r7, r8
	bne label1283
	b label1282
label292:
	and r6, r5, r9
	ands r6, r6, #1
	bne label293
label294:
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	b label287
label303:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	b label221
label293:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label294
label272:
	cmp r9, #16
	blt label296
	mov r8, #0
	mov r9, r5
	mov r5, r8
label277:
	cmp r5, #16
	bge label1290
	and r6, r7, r9
	ands r6, r6, #1
	bne label283
	b label284
label296:
	ands r6, r10, #1
	bne label298
	b label297
label1330:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
label299:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label272
label283:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label284:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	b label277
label297:
	ands r6, r8, #1
	bne label1330
	b label299
label298:
	ands r6, r8, #1
	beq label1330
	b label299
label1219:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1283
	b label1282
label1220:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	b label237
label248:
	cmp r7, #16
	blt label253
	mov r5, r3
	movs r7, r8
	bne label1220
	b label1219
label253:
	and r6, r5, r9
	ands r6, r6, #1
	bne label254
label255:
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	b label248
label254:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label255
label237:
	cmp r9, #16
	blt label261
	mov r8, #0
	mov r9, r5
	mov r5, r8
	b label242
label261:
	ands r6, r10, #1
	bne label264
	b label265
label262:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label237
label1271:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	b label262
label265:
	ands r6, r8, #1
	bne label1271
	b label262
label242:
	cmp r5, #16
	bge label1227
	and r6, r7, r9
	ands r6, r6, #1
	beq label258
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label258:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	b label242
label264:
	ands r6, r8, #1
	beq label1271
	b label262
label1290:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	b label287
label399:
	cmp r3, #16
	blt label580
	cmp r4, #0
	bne label1543
	mov r4, r2
	mov r3, #0
	b label407
label1543:
	mov r4, r1
	mov r3, #0
	mov r1, r2
	b label495
label407:
	cmp r2, #0
	bne label1547
	b label1546
label580:
	and r6, r6, r5
	ands r6, r6, #1
	beq label581
	ldr r6, [sp, #64]
	ldr r6, [r6, r3, lsl #2]
	add r4, r4, r6
label581:
	add r5, r5, r5, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r5, r5, #1
	b label399
label27:
	cmp r5, #16
	blt label104
	cmp r7, #0
	bne label823
	mov r5, r4
	mov r7, r4
	b label35
label823:
	mov r5, r3
	mov r7, r4
	b label71
label35:
	cmp r7, #0
	bne label827
	b label826
label71:
	cmp r7, #0
	bne label904
	b label903
label104:
	and r6, r6, r8
	ands r6, r6, #1
	beq label106
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r7, r7, r6
label106:
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	b label27
label826:
	movw r4, #32767
	cmp r2, r4
	bgt label70
	b label69
label827:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	b label38
label49:
	cmp r5, #16
	blt label54
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	b label59
label54:
	and r6, r7, r9
	ands r6, r6, #1
	beq label55
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label55:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	b label49
label59:
	cmp r7, #16
	blt label64
	mov r5, r4
	movs r7, r8
	bne label827
	b label826
label64:
	and r6, r5, r9
	ands r6, r6, #1
	bne label879
	b label65
label69:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	b label23
label70:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	b label23
label38:
	cmp r9, #16
	blt label43
	mov r8, #0
	mov r9, r5
	mov r5, r8
	b label49
label46:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label38
label48:
	ands r6, r8, #1
	beq label45
	b label46
label43:
	ands r6, r10, #1
	bne label48
	ands r6, r8, #1
	beq label46
label45:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	b label46
label879:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
label65:
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	b label59
label903:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label827
	b label826
label904:
	mov r8, r7
	mov r10, r5
	mov r3, #0
	mov r9, r3
	b label74
label89:
	cmp r7, #16
	blt label94
	mov r5, r3
	movs r7, r8
	bne label904
	b label903
label94:
	and r6, r5, r9
	ands r6, r6, #1
	beq label95
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
label95:
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	b label89
label74:
	cmp r9, #16
	blt label98
	mov r8, #0
	mov r9, r5
	mov r5, r8
label79:
	cmp r5, #16
	blt label84
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	b label89
label84:
	and r6, r7, r9
	ands r6, r6, #1
	bne label85
	b label86
label98:
	ands r6, r10, #1
	beq label101
	ands r6, r8, #1
	beq label100
	b label102
label101:
	ands r6, r8, #1
	bne label100
label102:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label74
label100:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	b label102
label85:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label86:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	b label79
label1227:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	b label248
label313:
	cmp r5, #16
	blt label318
	cmp r7, #0
	bne label1390
	b label1389
label318:
	and r6, r6, r8
	ands r6, r6, #1
	beq label319
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r7, r7, r6
label319:
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	b label313
label1389:
	mov r5, r4
	mov r7, r4
	b label358
label1390:
	mov r5, r3
	movs r7, r4
	bne label1394
	b label1393
label358:
	cmp r7, #0
	bne label1457
	b label1456
label1393:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1457
	b label1456
label1394:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	b label326
label343:
	cmp r7, #16
	blt label348
	mov r5, r3
	movs r7, r8
	bne label1394
	b label1393
label348:
	and r6, r5, r9
	ands r6, r6, #1
	beq label350
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
label350:
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	b label343
label326:
	cmp r9, #16
	blt label331
	mov r8, #0
	mov r9, r5
	mov r5, r8
	b label337
label335:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label326
label337:
	cmp r5, #16
	blt label352
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	b label343
label352:
	and r6, r7, r9
	ands r6, r6, #1
	bne label1446
	b label353
label331:
	ands r6, r10, #1
	bne label334
	ands r6, r8, #1
	bne label333
	b label335
label334:
	ands r6, r8, #1
	bne label335
label333:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	b label335
label1446:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label353:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	b label337
label460:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	b label407
label115:
	cmp r7, #16
	blt label192
	cmp r8, #0
	bne label1000
	mov r5, r4
	mov r7, r4
	b label156
label1000:
	mov r5, r3
	movs r7, r4
	bne label1004
	b label1003
label156:
	cmp r7, #0
	bne label1067
	b label1066
label192:
	and r6, r6, r5
	ands r6, r6, #1
	bne label193
label194:
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	b label115
label193:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label194
label579:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	b label495
label209:
	cmp r3, #16
	blt label214
	cmp r4, #0
	bne label1190
	b label1189
label214:
	and r6, r6, r5
	ands r6, r6, #1
	beq label216
	ldr r6, [sp, #64]
	ldr r6, [r6, r3, lsl #2]
	add r4, r4, r6
label216:
	add r5, r5, r5, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r5, r5, #1
	b label209
label1189:
	mov r4, r2
	mov r3, #0
	b label221
label1190:
	mov r4, r1
	mov r3, #0
	mov r1, r2
	b label309
label221:
	cmp r2, #0
	bne label1194
	b label1193
label11:
	cmp r4, #16
	blt label16
	cmp r5, #0
	bne label811
	b label810
label16:
	and r6, r6, r3
	ands r6, r6, #1
	bne label17
label18:
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r6, #0
	asr r3, r3, #1
	b label11
label810:
	mov r4, r2
	mov r3, #0
	b label23
label811:
	mov r4, r1
	mov r3, #0
	mov r1, r2
	b label111
label23:
	cmp r2, #0
	bne label815
	b label814
label17:
	ldr r6, [sp, #64]
	ldr r6, [r6, r4, lsl #2]
	add r5, r5, r6
	b label18
label584:
	cmp r3, #16
	blt label765
	cmp r4, #0
	bne label1902
	mov r4, r2
	mov r3, #0
	b label677
label1902:
	mov r4, r1
	mov r3, #0
	mov r1, r2
	b label590
label677:
	cmp r2, #0
	bne label2069
	b label2068
label765:
	and r6, r6, r5
	ands r6, r6, #1
	beq label766
	ldr r6, [sp, #64]
	ldr r6, [r6, r3, lsl #2]
	add r4, r4, r6
label766:
	add r5, r5, r5, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r5, r5, #1
	b label584
label304:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	b label221
label412:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	b label394
label764:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	b label2
