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
label788:
	mov r4, #0
	mov r6, #1
	mov r5, r0
	mov r3, r4
	cmp r4, #16
	blt label765
	cmp r4, #0
	bne label1902
	b label2655
label6:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r1, #1
	mov r2, #2
	mov r0, r1
	b label7
label2068:
	movw r2, #32767
	cmp r0, r2
	bgt label763
label2623:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	b label2
label2144:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	blt label749
label2147:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label745
label2636:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label741
	b label2158
label2639:
	movw r4, #32767
	cmp r2, r4
	bgt label756
	b label2635
label741:
	and r6, r5, r8
	ands r6, r6, #1
	bne label744
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label741
	b label2158
label744:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label741
	mov r5, r4
	movs r7, r9
	bne label2144
	b label2639
label749:
	ands r6, r10, #1
	bne label750
	ands r6, r8, #1
	bne label754
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label749
	b label2646
label750:
	ands r6, r8, #1
	beq label754
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label749
	b label2147
label2646:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label745
	b label2636
label756:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r5
	bne label2069
	movw r2, #32767
	cmp r0, r2
	ble label2623
label763:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label788
	b label6
label2624:
	mov r5, r4
	mov r7, r4
	b label722
label2077:
	mov r5, r3
	movs r7, r4
	bne label2081
	mov r5, r4
	b label2143
label722:
	cmp r7, #0
	bne label2144
label2143:
	movw r4, #32767
	cmp r2, r4
	bgt label756
label2635:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	b label677
label759:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r7, r7, r6
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label758
	cmp r7, #0
	bne label2077
	b label2624
label754:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label749
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label745
	b label2636
label2151:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label741
label2158:
	mov r5, r4
	movs r7, r9
	bne label2144
	b label2639
label745:
	and r6, r7, r9
	ands r6, r6, #1
	bne label748
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label745
	b label2151
label748:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label745
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label741
	b label2158
label2081:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	blt label695
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label706
	b label2626
label2633:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label2144
	b label2143
label717:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label716
	mov r5, r3
	movs r7, r8
	bne label2081
	b label2633
label695:
	ands r6, r10, #1
	bne label699
	ands r6, r8, #1
	bne label696
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label695
	b label2631
label696:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label695
	b label2629
label699:
	ands r6, r8, #1
	beq label696
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label695
	b label2630
label2631:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label706
	b label2626
label590:
	cmp r1, #0
	beq label1905
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
label2607:
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
	subs r1, r1, r4
	mov r4, r5
	bne label1906
	mov r1, r3
	movs r4, r2
	mov r3, #0
	beq label2068
label2069:
	mov r7, #0
	mov r6, #1
	mov r8, r2
	mov r5, r7
	b label681
label1981:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	blt label662
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label648
label2608:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label658
	b label2007
label2612:
	movw r4, #32767
	cmp r1, r4
	bgt label670
	b label2607
label658:
	and r6, r5, r8
	ands r6, r6, #1
	bne label661
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label658
	b label2007
label661:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label658
	mov r5, r4
	movs r7, r9
	bne label1981
	b label2612
label662:
	ands r6, r10, #1
	bne label666
	ands r6, r8, #1
	bne label663
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label662
	b label2619
label663:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label662
	b label2617
label666:
	ands r6, r8, #1
	beq label663
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label662
	b label2618
label2619:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label648
	b label2608
label2626:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	b label711
label2630:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label706
	b label2626
label711:
	cmp r7, #16
	blt label716
label2127:
	mov r5, r3
	movs r7, r8
	bne label2081
	b label2633
label716:
	and r6, r5, r9
	ands r6, r6, #1
	bne label717
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label716
	b label2127
label2108:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label716
	b label2127
label706:
	and r6, r7, r5
	ands r6, r6, #1
	bne label707
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label706
	b label2108
label707:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label706
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label716
	b label2127
label2629:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label706
	b label2626
label2617:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label648
	b label2608
label2618:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label648
	b label2608
label1988:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label658
	b label2007
label648:
	and r6, r7, r9
	ands r6, r6, #1
	bne label651
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label648
	b label1988
label651:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label648
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label658
label2007:
	mov r5, r4
	movs r7, r9
	bne label1981
	b label2612
label7:
	cmp r0, #0
	ble label196
label792:
	mov r6, #1
	mov r3, r0
	mov r5, #0
	mov r4, r5
	cmp r5, #16
	blt label16
label795:
	cmp r5, #0
	bne label811
	b label2411
label16:
	and r6, r6, r3
	ands r6, r6, #1
	bne label17
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label16
	b label795
label814:
	movw r2, #32767
	cmp r0, r2
	bgt label110
label2414:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	b label7
label110:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label792
label196:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #2
	str r0, [sp, #68]
	cmp r0, #16
	blt label1155
	mov r0, #0
	str r0, [sp, #72]
	cmp r0, #16
	blt label1159
	b label2469
label1155:
	mov r2, #2
	mov r1, #1
	ldr r0, [sp, #68]
	cmp r0, #0
	bgt label1534
	b label398
label394:
	cmp r0, #0
	ble label398
label1534:
	mov r4, #0
	mov r6, #1
	mov r5, r0
	mov r3, r4
	cmp r4, #16
	blt label580
	cmp r4, #0
	bne label1543
	b label2813
label1546:
	movw r2, #32767
	cmp r0, r2
	bgt label413
label2541:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r3
	b label394
label2590:
	movw r4, #32767
	cmp r1, r4
	bgt label578
	b label2582
label570:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label569
	mov r5, r4
	movs r7, r8
	bne label1810
	b label2590
label578:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r5
	bne label1724
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1547
	b label1546
label413:
	ldr r6, [sp, #64]
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1534
	b label398
label1583:
	movw r4, #32767
	cmp r2, r4
	bgt label461
label2549:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	b label407
label461:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r5
	bne label1547
	movw r2, #32767
	cmp r0, r2
	bgt label413
	b label2541
label1661:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	b label465
label2567:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1584
	b label1583
label488:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label487
	mov r5, r3
	movs r7, r9
	bne label1661
	b label2567
label1584:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	b label429
label1610:
	mov r5, r4
	movs r7, r9
	bne label1584
label2554:
	movw r4, #32767
	cmp r2, r4
	bgt label461
	b label2549
label450:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label449
	mov r5, r4
	movs r7, r9
	bne label1584
	b label2554
label429:
	cmp r9, #16
	blt label453
	b label1587
label2823:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label429
label453:
	ands r6, r10, #1
	bne label456
	ands r6, r8, #1
	bne label454
	b label2823
label1587:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label439
	b label2550
label454:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label453
	b label1587
label456:
	ands r6, r8, #1
	beq label454
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label453
	b label1587
label1591:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label449
	b label1610
label439:
	and r6, r7, r9
	ands r6, r6, #1
	bne label442
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label439
	b label1591
label442:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label439
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label449
	b label1610
label2550:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label1610
label449:
	and r6, r5, r8
	ands r6, r6, #1
	bne label450
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label449
	b label1610
label465:
	cmp r9, #16
	bge label1664
label470:
	ands r6, r10, #1
	bne label475
	ands r6, r8, #1
	bne label471
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label465
label471:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label470
	b label1664
label475:
	ands r6, r8, #1
	beq label471
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label470
	b label2565
label495:
	cmp r1, #0
	beq label1723
label1724:
	mov r6, #1
	mov r5, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label504
label1727:
	cmp r8, #0
	bne label1743
	b label2571
label504:
	and r6, r6, r5
	ands r6, r6, #1
	bne label505
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label504
	b label1727
label1743:
	mov r5, r3
	movs r7, r4
	bne label1747
	mov r5, r4
label1809:
	movw r4, #32767
	cmp r1, r4
	bgt label578
label2582:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	b label495
label1810:
	mov r8, r7
	mov r10, r5
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label552
label1813:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label573
label2583:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	b label564
label552:
	ands r6, r10, #1
	bne label553
	ands r6, r8, #1
	bne label556
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label552
	b label2587
label553:
	ands r6, r8, #1
	beq label556
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label552
	b label1813
label556:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label552
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label573
	b label2583
label2587:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label573
	b label2583
label564:
	cmp r7, #16
	blt label569
label1844:
	mov r5, r4
	movs r7, r8
	bne label1810
	b label2590
label569:
	and r6, r5, r9
	ands r6, r6, #1
	bne label570
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label569
	b label1844
label2561:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label482
label2565:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label491
	b label2561
label482:
	cmp r7, #16
	bge label1695
label487:
	and r6, r5, r8
	ands r6, r6, #1
	bne label488
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label487
	b label1695
label1688:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label487
label1695:
	mov r5, r3
	movs r7, r9
	bne label1661
	b label2567
label491:
	and r6, r7, r9
	ands r6, r6, #1
	bne label494
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label491
	b label1688
label494:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label491
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	blt label487
	b label1695
label1664:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label491
	b label2561
label1837:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label569
	b label1844
label573:
	and r6, r7, r5
	ands r6, r6, #1
	bne label574
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label573
	b label1837
label574:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label573
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label569
	b label1844
label1747:
	mov r8, r7
	mov r10, r5
	mov r3, #0
	mov r9, r3
	b label512
label2573:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label532
label1773:
	mov r5, r3
	movs r7, r9
	bne label1747
label2577:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1810
	b label1809
label532:
	and r6, r5, r8
	ands r6, r6, #1
	bne label535
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label532
	b label1773
label535:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label532
	mov r5, r3
	movs r7, r9
	bne label1747
	b label2577
label1754:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label532
	b label1773
label522:
	and r6, r7, r5
	ands r6, r6, #1
	bne label525
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label522
	b label1754
label525:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label522
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label532
	b label1773
label512:
	cmp r9, #16
	blt label536
	b label1750
label2861:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label512
label536:
	ands r6, r10, #1
	bne label537
	ands r6, r8, #1
	bne label538
	b label2861
label1750:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label522
	b label2573
label538:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label536
	b label1750
label537:
	ands r6, r8, #1
	beq label538
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label536
	b label1750
label1547:
	mov r6, #1
	mov r5, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label419
	cmp r8, #0
	bne label1580
	b label2816
label1723:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1547
	b label1546
label2816:
	mov r5, r4
	mov r7, r4
	b label426
label1564:
	cmp r8, #0
	bne label1580
	b label2816
label419:
	and r6, r6, r5
	ands r6, r6, #1
	bne label422
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label419
	b label1564
label422:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label419
	cmp r8, #0
	beq label2816
label1580:
	mov r5, r3
	movs r7, r4
	bne label1661
	mov r5, r4
label426:
	cmp r7, #0
	bne label1584
	b label1583
label1543:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label1724
	mov r1, r3
	mov r4, r2
label407:
	cmp r2, #0
	bne label1547
	b label1546
label815:
	mov r7, #0
	mov r6, #1
	mov r8, r2
	mov r5, r7
	b label27
label2451:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label179
	b label1093
label2455:
	movw r4, #32767
	cmp r1, r4
	bgt label190
	b label2450
label179:
	and r6, r5, r9
	ands r6, r6, #1
	bne label182
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label179
	b label1093
label182:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label179
	mov r5, r4
	movs r7, r8
	bne label1067
	b label2455
label2458:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label183
	b label2462
label186:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label183
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label169
	b label2451
label2462:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label169
	b label2451
label188:
	ands r6, r8, #1
	beq label186
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label183
	b label2464
label190:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r5
	bne label992
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label815
	b label814
label27:
	cmp r5, #16
	blt label104
label818:
	cmp r7, #0
	beq label2415
label823:
	mov r5, r3
	movs r7, r4
	bne label904
	mov r5, r4
label35:
	cmp r7, #0
	bne label827
	b label826
label104:
	and r6, r6, r8
	ands r6, r6, #1
	bne label105
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label104
	b label818
label827:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	b label38
label2426:
	movw r4, #32767
	cmp r2, r4
	ble label2418
label70:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r5
	bne label815
	movw r2, #32767
	cmp r0, r2
	bgt label110
	b label2414
label38:
	cmp r9, #16
	bge label830
label43:
	ands r6, r10, #1
	bne label48
	ands r6, r8, #1
	bne label45
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label38
label48:
	ands r6, r8, #1
	beq label45
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label43
	b label2423
label826:
	movw r4, #32767
	cmp r2, r4
	bgt label70
label2418:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	b label23
label2434:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label827
	b label826
label2419:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	b label59
label2423:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label54
	b label2419
label59:
	cmp r7, #16
	bge label873
label64:
	and r6, r5, r9
	ands r6, r6, #1
	bne label67
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label64
	b label873
label67:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label64
	mov r5, r4
	movs r7, r8
	bne label827
	b label2426
label45:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label43
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label54
	b label2419
label854:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label64
	b label873
label54:
	and r6, r7, r9
	ands r6, r6, #1
	bne label57
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label54
	b label854
label57:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label54
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label64
	b label873
label830:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label54
	b label2419
label873:
	mov r5, r4
	movs r7, r8
	bne label827
	b label2426
label111:
	cmp r1, #0
	beq label991
label992:
	mov r6, #1
	mov r5, r1
	mov r8, #0
	mov r7, r8
	b label115
label2442:
	mov r5, r4
	mov r7, r4
	b label156
label1000:
	mov r5, r3
	movs r7, r4
	bne label1004
	mov r5, r4
	b label1066
label156:
	cmp r7, #0
	bne label1067
label1066:
	movw r4, #32767
	cmp r1, r4
	bgt label190
label2450:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	b label111
label193:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label192
	cmp r8, #0
	bne label1000
	b label2442
label2571:
	mov r5, r4
	mov r7, r4
	b label544
label505:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label504
	cmp r8, #0
	bne label1743
	b label2571
label544:
	cmp r7, #0
	bne label1810
	b label1809
label904:
	mov r8, r7
	mov r10, r5
	mov r3, #0
	mov r9, r3
	b label74
label2431:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label930
label94:
	and r6, r5, r9
	ands r6, r6, #1
	bne label97
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label94
	b label930
label97:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label94
	mov r5, r3
	movs r7, r8
	bne label904
	b label2434
label911:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label94
	b label930
label84:
	and r6, r7, r9
	ands r6, r6, #1
	bne label85
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label84
	b label911
label930:
	mov r5, r3
	movs r7, r8
	bne label904
	b label2434
label74:
	cmp r9, #16
	blt label98
	b label907
label2678:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label74
label98:
	ands r6, r10, #1
	bne label99
	ands r6, r8, #1
	bne label100
	b label2678
label907:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label84
	b label2431
label99:
	ands r6, r8, #1
	beq label100
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label98
	b label907
label85:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label84
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label94
	b label930
label100:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label98
	b label907
label1074:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label179
	b label1093
label169:
	and r6, r7, r5
	ands r6, r6, #1
	bne label172
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label169
	b label1074
label172:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label169
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label179
label1093:
	mov r5, r4
	movs r7, r8
	bne label1067
	b label2455
label2464:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label169
	b label2451
label1067:
	mov r8, r7
	mov r10, r5
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label183
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label169
	b label2451
label183:
	ands r6, r10, #1
	bne label188
	ands r6, r8, #1
	bne label186
	b label2458
label1004:
	mov r8, r7
	mov r10, r5
	mov r3, #0
	mov r9, r3
	b label124
label2448:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1067
	b label1066
label151:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label150
	mov r5, r3
	movs r7, r8
	bne label1004
	b label2448
label124:
	cmp r9, #16
	bge label1007
label129:
	ands r6, r10, #1
	bne label130
	ands r6, r8, #1
	bne label131
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label124
label130:
	ands r6, r8, #1
	beq label131
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label129
	b label1007
label2444:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label150
label1050:
	mov r5, r3
	movs r7, r8
	bne label1004
	b label2448
label150:
	and r6, r5, r9
	ands r6, r6, #1
	bne label151
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label150
	b label1050
label1007:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label140
	b label2444
label1031:
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label150
	b label1050
label140:
	and r6, r7, r5
	ands r6, r6, #1
	bne label141
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label140
	b label1031
label141:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label140
	ldr r6, [sp, #64]
	mov r8, #0
	mov r7, r8
	ldr r5, [r6, #4]
	mul r9, r9, r5
	movw r5, #65535
	cmp r8, #16
	blt label150
	b label1050
label131:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label129
	b label1007
label199:
	ldr r0, [sp, #72]
	cmp r0, #16
	bge label2469
label1159:
	mov r2, #2
	mov r1, #1
	ldr r0, [sp, #72]
	cmp r0, #0
	bgt label1163
	ldr r6, [sp, #64]
	ldr r0, [r6, r0, lsl #2]
	cmp r1, r0
	bne label1170
label2731:
	ldr r0, [sp, #72]
	add r0, r0, #1
	str r0, [sp, #72]
	b label199
label398:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #68]
	add r0, r0, #1
	str r0, [sp, #68]
	cmp r0, #16
	blt label1155
	mov r0, #0
	str r0, [sp, #72]
	cmp r0, #16
	blt label1159
	b label2469
label203:
	cmp r0, #0
	ble label1162
label1163:
	mov r4, #0
	mov r6, #1
	mov r5, r0
	mov r3, r4
	cmp r4, #16
	blt label214
	cmp r4, #0
	bne label1190
	b label2732
label1193:
	movw r2, #32767
	cmp r0, r2
	bgt label227
label2478:
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
	subs r0, r0, r2
	mov r2, r3
	bgt label1163
	ldr r0, [sp, #72]
	ldr r0, [r6, r0, lsl #2]
	cmp r1, r0
	bne label1170
	b label2731
label1370:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	beq label1193
label1194:
	mov r7, #0
	mov r6, #1
	mov r8, r2
	mov r5, r7
	cmp r7, #16
	blt label305
	cmp r7, #0
	beq label2737
label1216:
	mov r5, r3
	movs r7, r4
	bne label1220
	mov r5, r4
	b label1282
label309:
	cmp r1, #0
	beq label1370
label1371:
	mov r7, #0
	mov r6, #1
	mov r8, r1
	mov r5, r7
	cmp r7, #16
	blt label318
label1374:
	cmp r7, #0
	bne label1390
label2511:
	mov r5, r4
	mov r7, r4
	b label358
label318:
	and r6, r6, r8
	ands r6, r6, #1
	bne label321
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label318
	b label1374
label321:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r7, r7, r6
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label318
	cmp r7, #0
	beq label2511
label1390:
	mov r5, r3
	movs r7, r4
	bne label1394
	mov r5, r4
	b label1456
label358:
	cmp r7, #0
	bne label1457
label1456:
	movw r4, #32767
	cmp r1, r4
	bgt label393
label2523:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	b label309
label393:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r5
	bne label1371
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1194
	b label1193
label1282:
	movw r4, #32767
	cmp r2, r4
	bgt label303
label2497:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	b label221
label303:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r5
	bne label1194
	movw r2, #32767
	cmp r0, r2
	bgt label227
	b label2478
label1283:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	b label272
label283:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label282
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label292
label1309:
	mov r5, r4
	movs r7, r8
	bne label1283
label2501:
	movw r4, #32767
	cmp r2, r4
	bgt label303
	b label2497
label293:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label292
	mov r5, r4
	movs r7, r8
	bne label1283
	b label2501
label2498:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label1309
label292:
	and r6, r5, r9
	ands r6, r6, #1
	bne label293
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label292
	b label1309
label272:
	cmp r9, #16
	blt label296
	b label1286
label2759:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label272
label296:
	ands r6, r10, #1
	bne label298
	ands r6, r8, #1
	beq label2759
label301:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label296
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label282
	b label2498
label1290:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label292
	b label1309
label282:
	and r6, r7, r9
	ands r6, r6, #1
	bne label283
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label282
	b label1290
label1286:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label282
	b label2498
label298:
	ands r6, r8, #1
	beq label301
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label296
	b label1286
label1457:
	mov r8, r7
	mov r10, r5
	mov r4, #0
	mov r9, r4
	b label361
label2524:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label383
label1491:
	mov r5, r4
	movs r7, r9
	bne label1457
label2529:
	movw r4, #32767
	cmp r1, r4
	bgt label393
	b label2523
label383:
	and r6, r5, r8
	ands r6, r6, #1
	bne label386
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label383
	b label1491
label386:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label383
	mov r5, r4
	movs r7, r9
	bne label1457
	b label2529
label366:
	ands r6, r10, #1
	bne label369
	ands r6, r8, #1
	beq label2525
label367:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label366
	b label1460
label369:
	ands r6, r8, #1
	beq label367
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label366
	b label1460
label1220:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	blt label261
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label257
	b label2484
label1227:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label253
label1234:
	mov r5, r3
	movs r7, r8
	bne label1220
	b label2487
label257:
	and r6, r7, r9
	ands r6, r6, #1
	bne label260
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label257
	b label1227
label260:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label257
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label253
	b label1234
label261:
	ands r6, r10, #1
	bne label264
	ands r6, r8, #1
	bne label266
	b label2491
label2487:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1283
	b label1282
label254:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label253
	mov r5, r3
	movs r7, r8
	bne label1220
	b label2487
label2484:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label1234
label253:
	and r6, r5, r9
	ands r6, r6, #1
	bne label254
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label253
	b label1234
label2494:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label257
	b label2484
label2491:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label261
	b label2495
label264:
	ands r6, r8, #1
	beq label266
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label261
	b label2494
label2495:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label257
	b label2484
label266:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label261
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label257
	b label2484
label1460:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label387
	b label2524
label1484:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label383
	b label1491
label387:
	and r6, r7, r5
	ands r6, r6, #1
	bne label390
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label387
	b label1484
label390:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label387
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label383
	b label1491
label1394:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	b label326
label2514:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label348
label1428:
	mov r5, r3
	movs r7, r8
	bne label1394
	b label2519
label348:
	and r6, r5, r9
	ands r6, r6, #1
	bne label349
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label348
	b label1428
label331:
	ands r6, r10, #1
	bne label334
	ands r6, r8, #1
	bne label333
	b label2515
label334:
	ands r6, r8, #1
	beq label333
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label331
	b label1397
label2519:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1457
	b label1456
label349:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r9, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label348
	mov r5, r3
	movs r7, r8
	bne label1394
	b label2519
label1421:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label348
	b label1428
label352:
	and r6, r7, r9
	ands r6, r6, #1
	bne label355
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label352
	b label1421
label355:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	blt label352
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r9, r8, r5
	movw r5, #65535
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label348
	b label1428
label1397:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	blt label352
	b label2514
label333:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label331
	b label1397
label361:
	cmp r9, #16
	blt label366
	b label1460
label2525:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label361
label326:
	cmp r9, #16
	blt label331
	b label1397
label2515:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label326
label2737:
	mov r5, r4
	mov r7, r4
	b label269
label1211:
	cmp r7, #0
	bne label1216
	b label2737
label269:
	cmp r7, #0
	bne label1283
	b label1282
label305:
	and r6, r6, r8
	ands r6, r6, #1
	bne label308
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label305
	b label1211
label308:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r7, r7, r6
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label305
	cmp r7, #0
	bne label1216
	b label2737
label2813:
	mov r4, r2
	mov r3, #0
	b label407
label1538:
	cmp r4, #0
	bne label1543
	b label2813
label580:
	and r6, r6, r5
	ands r6, r6, #1
	bne label583
	add r5, r5, r5, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r3, #16
	blt label580
	b label1538
label583:
	ldr r6, [sp, #64]
	ldr r6, [r6, r3, lsl #2]
	add r4, r4, r6
	add r5, r5, r5, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r3, #16
	blt label580
	cmp r4, #0
	bne label1543
	b label2813
label2415:
	mov r5, r4
	mov r7, r4
	b label35
label105:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r7, r7, r6
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label104
	cmp r7, #0
	bne label823
	b label2415
label681:
	cmp r5, #16
	blt label758
label2072:
	cmp r7, #0
	bne label2077
	b label2624
label758:
	and r6, r6, r8
	ands r6, r6, #1
	bne label759
	add r6, r8, r8, lsr #31
	add r5, r5, #1
	asr r8, r6, #1
	mov r6, #0
	cmp r5, #16
	blt label758
	b label2072
label2732:
	mov r4, r2
	mov r3, #0
	b label221
label1174:
	cmp r4, #0
	bne label1190
	b label2732
label214:
	and r6, r6, r5
	ands r6, r6, #1
	bne label215
	add r5, r5, r5, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r3, #16
	blt label214
	b label1174
label1190:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label1371
	mov r1, r3
	mov r4, r2
label221:
	cmp r2, #0
	bne label1194
	b label1193
label2411:
	mov r4, r2
	mov r3, #0
	b label23
label17:
	ldr r6, [sp, #64]
	ldr r6, [r6, r4, lsl #2]
	add r5, r5, r6
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label16
	cmp r5, #0
	beq label2411
label811:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label992
	mov r1, r3
	mov r4, r2
label23:
	cmp r2, #0
	bne label815
	b label814
label991:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label815
	b label814
label1905:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label2068
label115:
	cmp r7, #16
	blt label192
label995:
	cmp r8, #0
	bne label1000
	b label2442
label192:
	and r6, r6, r5
	ands r6, r6, #1
	bne label193
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label192
	b label995
label594:
	cmp r7, #16
	blt label671
label1909:
	cmp r8, #0
	bne label1914
	b label2599
label671:
	and r6, r6, r5
	ands r6, r6, #1
	bne label672
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label671
	b label1909
label2599:
	mov r5, r4
	mov r7, r4
	b label635
label1914:
	mov r5, r3
	movs r7, r4
	bne label1918
	mov r5, r4
	b label1980
label635:
	cmp r7, #0
	bne label1981
	b label1980
label672:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	add r5, r5, r5, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r7, #16
	blt label671
	cmp r8, #0
	bne label1914
	b label2599
label1918:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	b label603
label1945:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label629
	b label1964
label619:
	and r6, r7, r5
	ands r6, r6, #1
	bne label620
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label619
	b label1945
label1964:
	mov r5, r3
	movs r7, r9
	bne label1918
	b label2605
label603:
	cmp r9, #16
	bge label1921
label608:
	ands r6, r10, #1
	bne label609
	ands r6, r8, #1
	bne label610
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label603
label2605:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	bne label1981
	b label1980
label630:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label629
	mov r5, r3
	movs r7, r9
	bne label1918
	b label2605
label2601:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	bge label1964
label629:
	and r6, r5, r8
	ands r6, r6, #1
	bne label630
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	blt label629
	b label1964
label620:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	blt label619
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	blt label629
	b label1964
label1921:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label619
	b label2601
label610:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label608
	b label1921
label609:
	ands r6, r8, #1
	beq label610
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	blt label608
	b label1921
label1162:
	ldr r6, [sp, #64]
	ldr r0, [sp, #72]
	ldr r0, [r6, r0, lsl #2]
	cmp r1, r0
	bne label1170
	b label2731
label215:
	ldr r6, [sp, #64]
	ldr r6, [r6, r3, lsl #2]
	add r4, r4, r6
	add r5, r5, r5, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r3, #16
	blt label214
	cmp r4, #0
	bne label1190
	b label2732
label1902:
	mov r4, r1
	mov r3, #0
	mov r1, r2
	b label590
label2655:
	mov r4, r2
	mov r3, #0
	b label677
label1897:
	cmp r4, #0
	bne label1902
	b label2655
label677:
	cmp r2, #0
	bne label2069
	b label2068
label765:
	and r6, r6, r5
	ands r6, r6, #1
	bne label768
	add r5, r5, r5, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r3, #16
	blt label765
	b label1897
label768:
	ldr r6, [sp, #64]
	ldr r6, [r6, r3, lsl #2]
	add r4, r4, r6
	add r5, r5, r5, lsr #31
	add r3, r3, #1
	mov r6, #0
	asr r5, r5, #1
	cmp r3, #16
	blt label765
	cmp r4, #0
	bne label1902
	b label2655
label1170:
	mov r0, #1
	b label201
label2469:
	mov r0, #0
label201:
	add sp, sp, #80
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
