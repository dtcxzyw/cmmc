.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #4
	mov r1, #2
	mov r4, #1
	sub sp, sp, #76
	mov r6, sp
	str r6, [sp, #64]
	str r4, [sp, #0]
	str r1, [r6, #4]
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
label787:
	mov r2, #0
	mov r6, #1
	mov r3, r0
	mov r5, r2
	cmp r2, #16
	bge label589
label1897:
	and r6, r6, r3
	ands r6, r6, #1
	beq label766
	b label2731
label766:
	add r3, r3, r3, lsr #31
	add r5, r5, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r5, #16
	bge label589
	b label1897
label589:
	cmp r2, #0
	beq label1902
	mov r5, #0
	movs r2, r1
	beq label1906
	b label1905
label1902:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label677
label1906:
	mov r2, r5
	mov r4, r1
	mov r5, #0
label677:
	cmp r1, #0
	beq label681
label2068:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label693
label2086:
	and r6, r6, r7
	ands r6, r6, #1
	beq label690
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
	b label690
label693:
	cmp r3, #0
	beq label2102
	b label2101
label2168:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label2187
	b label2186
label732:
	movw r4, #32767
	cmp r1, r4
	ble label734
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label677
label734:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label681
	b label2068
label2187:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label751
	b label2210
label751:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
label752:
	cmp r7, #16
	bge label2218
label2217:
	and r6, r5, r8
	ands r6, r6, #1
	beq label2223
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label759
label2218:
	mov r5, r4
	movs r7, r9
	beq label732
	b label2168
label2223:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label752
label759:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2218
	b label2217
label2210:
	and r6, r7, r9
	ands r6, r6, #1
	beq label762
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label762
label2186:
	ands r6, r10, #1
	beq label742
	ands r6, r8, #1
	bne label744
	b label2792
label742:
	ands r6, r8, #1
	beq label744
	b label2792
label744:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label2187
	b label2186
label762:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label751
	b label2210
label2792:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label2187
	b label2186
label690:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label693
	b label2086
label2101:
	movs r7, r4
	beq label2102
label2105:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label2110
	b label2109
label708:
	cmp r7, #16
	bge label2121
	b label2120
label2121:
	mov r5, r3
	movs r7, r9
	beq label2102
	b label2105
label2126:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label708
label2109:
	ands r6, r10, #1
	beq label725
	b label2148
label2110:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label707
	b label2113
label2148:
	ands r6, r8, #1
	bne label723
	b label2782
label2120:
	and r6, r5, r8
	ands r6, r6, #1
	beq label2126
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2121
	b label2120
label2113:
	and r6, r7, r9
	ands r6, r6, #1
	beq label718
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label718:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label707
	b label2113
label2782:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label723:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label2110
	b label2109
label725:
	ands r6, r8, #1
	beq label723
	b label2782
label590:
	cmp r2, #0
	beq label1906
label1905:
	mov r6, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label603
label1909:
	and r6, r6, r3
	ands r6, r6, #1
	beq label600
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label600
label603:
	cmp r8, #0
	beq label1925
	b label1924
label639:
	cmp r7, #0
	beq label642
	b label1991
label642:
	movw r4, #32767
	cmp r2, r4
	ble label643
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label590
label643:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label1906
	b label1905
label1991:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label2010
	b label2009
label2014:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label2033
	b label2032
label2033:
	mov r5, r4
	movs r7, r9
	beq label642
	b label1991
label2009:
	ands r6, r9, #1
	beq label674
	b label2048
label2010:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label2014
label2013:
	and r6, r7, r9
	ands r6, r6, #1
	beq label656
	b label2755
label656:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label2014
	b label2013
label2032:
	and r6, r5, r8
	ands r6, r6, #1
	beq label2038
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label666
label2038:
	mov r6, r9
label666:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2033
	b label2032
label2048:
	ands r6, r8, #1
	bne label672
	b label2762
label674:
	ands r6, r8, #1
	beq label672
label2762:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
label672:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label2010
	b label2009
label2755:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label656
label707:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label708
label600:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label603
	b label1909
label1924:
	movs r7, r4
	beq label1925
label1928:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label1933
	b label1932
label607:
	cmp r9, #16
	bge label1933
	b label1932
label1933:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1937
	b label1936
label1937:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label1956
	b label1955
label1956:
	mov r5, r3
	movs r7, r9
	beq label1925
	b label1928
label1971:
	ands r6, r8, #1
	bne label634
label2747:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label607
label633:
	ands r6, r8, #1
	beq label634
	b label2747
label1955:
	and r6, r5, r8
	ands r6, r6, #1
	beq label628
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label628:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1956
	b label1955
label1932:
	ands r6, r10, #1
	beq label633
	b label1971
label634:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1933
	b label1932
label1936:
	and r6, r7, r9
	ands r6, r6, #1
	beq label619
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label619:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1937
	b label1936
label2102:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label732
	b label2168
label1925:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label639
label2731:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r2, r2, r6
	b label766
label681:
	movw r1, #32767
	cmp r0, r1
	ble label683
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label2
label683:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label6
	b label787
label6:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r4, #1
	mov r1, #2
	mov r0, r4
label7:
	cmp r0, #0
	ble label196
	b label791
label196:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #2
	str r0, [sp, #68]
	cmp r0, #16
	bge label1155
	b label1154
label1155:
	mov r1, #0
	cmp r1, #16
	bge label1159
	b label1158
label1159:
	mov r0, #0
label201:
	add sp, sp, #76
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1154:
	mov r1, #2
	mov r4, #1
	ldr r0, [sp, #68]
	cmp r0, #0
	ble label398
	b label1533
label394:
	cmp r0, #0
	ble label398
label1533:
	mov r2, #0
	mov r6, #1
	mov r3, r0
	mov r5, r2
	cmp r2, #16
	bge label404
	b label1538
label398:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #68]
	add r0, r0, #1
	str r0, [sp, #68]
	cmp r0, #16
	bge label1155
	b label1154
label407:
	cmp r1, #0
	beq label411
	b label1546
label411:
	movw r1, #32767
	cmp r0, r1
	ble label412
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label394
label412:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label398
	b label1533
label1569:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label458
	b label1635
label458:
	movw r4, #32767
	cmp r1, r4
	ble label459
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label407
label1635:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1654
label1653:
	ands r6, r9, #1
	beq label488
	b label1692
label472:
	cmp r7, #16
	bge label1665
	b label1664
label1665:
	mov r5, r4
	movs r7, r9
	beq label458
	b label1635
label1692:
	ands r6, r8, #1
	bne label486
	b label1708
label2692:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
label486:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1654
	b label1653
label488:
	ands r6, r8, #1
	beq label486
	b label2692
label1708:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1654
	b label1653
label1654:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label471
label1657:
	and r6, r7, r9
	ands r6, r6, #1
	beq label483
	b label2686
label471:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label472
label483:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label471
	b label1657
label1664:
	and r6, r5, r8
	ands r6, r6, #1
	beq label479
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label479:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1665
	b label1664
label2686:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label483
label1546:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label419
label1564:
	and r6, r6, r7
	ands r6, r6, #1
	beq label493
	b label2669
label459:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label411
	b label1546
label2669:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
label493:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label419
	b label1564
label404:
	cmp r2, #0
	beq label1543
	mov r5, #0
	movs r2, r1
	beq label1724
	b label1723
label1543:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label407
label1723:
	mov r3, #0
	mov r6, #1
	mov r7, r2
	mov r8, r3
	cmp r3, #16
	bge label504
	b label1727
label419:
	cmp r3, #0
	beq label1569
	movs r7, r4
	beq label1569
label1572:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label1577
	b label1576
label1577:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1581
label1580:
	and r6, r7, r9
	ands r6, r6, #1
	beq label434
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label434
label438:
	cmp r7, #16
	bge label1600
label1599:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1605
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label445
label1600:
	mov r5, r3
	movs r7, r9
	beq label1569
	b label1572
label1605:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label438
label445:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1600
	b label1599
label1576:
	ands r6, r10, #1
	beq label448
	ands r6, r8, #1
	bne label450
	b label2679
label448:
	ands r6, r8, #1
	beq label450
	b label2679
label434:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1581
	b label1580
label2679:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label450:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1577
	b label1576
label1581:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label438
label1727:
	and r6, r6, r7
	ands r6, r6, #1
	beq label578
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
	b label578
label504:
	cmp r3, #0
	beq label1732
	movs r7, r4
	beq label1813
	b label1812
label1732:
	mov r3, r5
	mov r5, r4
	mov r7, r4
label507:
	cmp r7, #0
	beq label510
label1735:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1754
label1753:
	ands r6, r9, #1
	beq label540
	b label1792
label523:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label1765
label1764:
	and r6, r5, r8
	ands r6, r6, #1
	beq label530
	b label2707
label1765:
	mov r5, r4
	movs r7, r9
	beq label510
	b label1735
label513:
	cmp r10, #16
	bge label1754
	b label1753
label1754:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label523
label1757:
	and r6, r7, r5
	ands r6, r6, #1
	beq label534
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label534:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label523
	b label1757
label530:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1765
	b label1764
label1812:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1817
	b label1816
label1813:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label507
label1816:
	ands r6, r9, #1
	beq label553
	ands r6, r8, #1
	bne label555
	b label2719
label553:
	ands r6, r8, #1
	beq label555
	b label2719
label562:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label1848
	b label1847
label1848:
	mov r5, r3
	movs r7, r9
	beq label1813
	b label1812
label1792:
	ands r6, r8, #1
	bne label541
	b label2713
label540:
	ands r6, r8, #1
	beq label541
	b label2714
label541:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1754
	b label1753
label2714:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label513
label2713:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	b label541
label2707:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label530
label1840:
	and r6, r7, r5
	ands r6, r6, #1
	beq label574
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label574:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label562
	b label1840
label1817:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label562
	b label1840
label1847:
	and r6, r5, r8
	ands r6, r6, #1
	beq label569
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label569:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1848
	b label1847
label2719:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
label555:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1817
	b label1816
label578:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label504
	b label1727
label1538:
	and r6, r6, r3
	ands r6, r6, #1
	beq label581
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r2, r2, r6
label581:
	add r3, r3, r3, lsr #31
	add r5, r5, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r5, #16
	bge label404
	b label1538
label510:
	movw r4, #32767
	cmp r2, r4
	ble label512
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label495
label512:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label1724
	b label1723
label495:
	cmp r2, #0
	beq label1724
	b label1723
label1724:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label407
label791:
	mov r2, #0
	mov r6, #1
	mov r3, r0
	mov r5, r2
	cmp r2, #16
	bge label16
label795:
	and r6, r6, r3
	ands r6, r6, #1
	beq label194
	b label2509
label16:
	cmp r2, #0
	beq label800
	mov r5, #0
	movs r2, r1
	beq label804
	b label803
label800:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label104
label804:
	mov r2, r5
	mov r4, r1
	mov r5, #0
label104:
	cmp r1, #0
	beq label189
	b label966
label2543:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label7
label970:
	and r6, r6, r7
	ands r6, r6, #1
	beq label115
	b label2544
label117:
	cmp r3, #0
	beq label986
	b label985
label986:
	mov r3, r5
	mov r5, r4
	mov r7, r4
label120:
	cmp r7, #0
	beq label123
	b label989
label123:
	movw r4, #32767
	cmp r1, r4
	ble label124
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label104
label189:
	movw r1, #32767
	cmp r0, r1
	ble label191
	b label2543
label989:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1008
label1007:
	ands r6, r9, #1
	beq label136
	b label1011
label1008:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label142
	b label1031
label1011:
	ands r6, r8, #1
	bne label134
	b label2553
label142:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	cmp r9, #16
	bge label1039
label1038:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1044
	b label2558
label1039:
	mov r5, r4
	movs r7, r9
	beq label123
	b label989
label1031:
	and r6, r7, r5
	ands r6, r6, #1
	beq label153
	b label2557
label153:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label142
	b label1031
label2558:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label149
label1044:
	mov r6, r9
label149:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1039
	b label1038
label2553:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
label134:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1008
	b label1007
label136:
	ands r6, r8, #1
	beq label134
	b label2553
label2557:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label153
label966:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label117
	b label970
label2544:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
label115:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label117
	b label970
label985:
	movs r7, r4
	beq label1067
label1066:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label1071
	b label1070
label180:
	cmp r7, #16
	bge label1114
	b label1113
label1114:
	mov r5, r3
	movs r7, r9
	beq label1067
	b label1066
label1113:
	and r6, r5, r8
	ands r6, r6, #1
	beq label187
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label187:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1114
	b label1113
label1070:
	ands r6, r10, #1
	beq label167
	b label1074
label1071:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1095
label1094:
	and r6, r7, r9
	ands r6, r6, #1
	beq label176
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label176
label1095:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label180
label176:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1095
	b label1094
label1074:
	ands r6, r8, #1
	bne label165
	b label1090
label2568:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label165:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1071
	b label1070
label167:
	ands r6, r8, #1
	beq label165
	b label2568
label1090:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1071
	b label1070
label803:
	mov r3, #0
	mov r6, #1
	mov r7, r2
	mov r8, r3
	cmp r3, #16
	bge label26
	b label807
label26:
	cmp r3, #0
	beq label812
	movs r7, r4
	beq label812
label815:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label820
	b label819
label820:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label844
	b label843
label51:
	cmp r7, #16
	bge label863
label862:
	and r6, r5, r8
	ands r6, r6, #1
	beq label58
	b label2522
label863:
	mov r5, r3
	movs r7, r9
	beq label812
	b label815
label30:
	cmp r10, #16
	bge label820
label819:
	ands r6, r9, #1
	beq label37
	b label823
label37:
	ands r6, r8, #1
	beq label39
	b label2517
label843:
	and r6, r7, r5
	ands r6, r6, #1
	beq label48
	b label2520
label844:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	b label51
label39:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label820
	b label819
label58:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label863
	b label862
label48:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label844
	b label843
label2522:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label58
label823:
	ands r6, r8, #1
	bne label39
label2517:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label30
label2520:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label48
label807:
	and r6, r6, r7
	ands r6, r6, #1
	beq label99
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
label99:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label26
	b label807
label2509:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r2, r2, r6
label194:
	add r3, r3, r3, lsr #31
	add r5, r5, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r5, #16
	bge label16
	b label795
label1067:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label120
label124:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label189
	b label966
label812:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label95
	b label878
label95:
	movw r4, #32767
	cmp r2, r4
	ble label97
	b label2526
label878:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label883
	b label882
label883:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label907
	b label906
label907:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label926
	b label925
label926:
	mov r5, r4
	movs r7, r9
	beq label95
	b label878
label906:
	and r6, r7, r5
	ands r6, r6, #1
	beq label82
	b label2531
label882:
	ands r6, r9, #1
	beq label71
	ands r6, r8, #1
	bne label74
label2529:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	b label74
label71:
	ands r6, r8, #1
	beq label74
	b label2529
label74:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label883
	b label882
label82:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label907
	b label906
label925:
	and r6, r5, r8
	ands r6, r6, #1
	beq label92
	b label2534
label92:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label926
	b label925
label2531:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label82
label2534:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label92
label2526:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label17
label97:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label804
	b label803
label17:
	cmp r2, #0
	beq label804
	b label803
label1158:
	mov r2, #2
	mov r5, #1
	movs r0, r1
	ble label392
	b label1162
label2586:
	mov r0, #1
	b label201
label392:
	ldr r6, [sp, #64]
	ldr r0, [r6, r1, lsl #2]
	cmp r5, r0
	beq label393
	b label2586
label393:
	add r1, r1, #1
	cmp r1, #16
	bge label1159
	b label1158
label1162:
	mov r6, #1
	mov r3, r0
	mov r7, #0
	mov r4, r7
	cmp r7, #16
	bge label216
label1166:
	and r6, r6, r3
	ands r6, r6, #1
	beq label214
	b label2587
label214:
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r4, #16
	bge label216
	b label1166
label216:
	cmp r7, #0
	beq label1182
	b label1181
label1182:
	mov r3, r5
	mov r5, r2
	mov r7, #0
	b label304
label1181:
	mov r7, #0
	movs r3, r2
	beq label1186
label1185:
	mov r6, #1
	mov r4, r3
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label230
label1189:
	and r6, r6, r4
	ands r6, r6, #1
	beq label227
	b label2592
label230:
	cmp r9, #0
	beq label1205
	b label1204
label227:
	add r4, r4, r4, lsr #31
	add r8, r8, #1
	mov r6, #0
	asr r4, r4, #1
	cmp r8, #16
	bge label230
	b label1189
label1204:
	movs r8, r5
	beq label1205
label1208:
	mov r9, r8
	mov r10, r7
	mov r4, #0
	mov r11, r4
	cmp r4, #16
	bge label1213
	b label1212
label1213:
	mov r10, #0
	mov r9, r10
	cmp r10, #16
	bge label1217
label1216:
	and r6, r8, r7
	ands r6, r6, #1
	beq label246
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r10, r10, r6
	b label246
label1217:
	ldr r6, [sp, #64]
	movw r7, #65535
	ldr r6, [r6, #4]
	mul r9, r10, r6
	mov r10, #0
	mov r8, r10
	b label249
label246:
	add r6, r7, r7, lsr #31
	add r9, r9, #1
	asr r7, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1217
	b label1216
label249:
	cmp r8, #16
	bge label1236
	b label1235
label1236:
	mov r7, r4
	movs r8, r10
	beq label1205
	b label1208
label1235:
	and r6, r7, r9
	ands r6, r6, #1
	beq label256
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r10, r10, r6
label256:
	add r6, r9, r9, lsr #31
	add r8, r8, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r8, #16
	bge label1236
	b label1235
label1212:
	ands r6, r10, #1
	beq label263
	b label1251
label2604:
	ldr r6, [sp, #64]
	ldr r6, [r6, r11, lsl #2]
	add r4, r4, r6
label259:
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1213
	b label1212
label263:
	ands r6, r9, #1
	beq label259
	b label1267
label1251:
	ands r6, r9, #1
	bne label259
	b label2604
label1267:
	ldr r6, [sp, #64]
	ldr r6, [r6, r11, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1213
	b label1212
label2592:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label227
label203:
	cmp r0, #0
	ble label392
	b label1162
label304:
	cmp r2, #0
	beq label389
	b label1348
label2629:
	ldr r6, [sp, #64]
	mov r5, r3
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r2
	mov r2, r7
	b label203
label389:
	movw r2, #32767
	cmp r0, r2
	ble label391
	b label2629
label1348:
	mov r6, #1
	mov r4, r2
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label313
label1352:
	and r6, r6, r4
	ands r6, r6, #1
	beq label387
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label387:
	add r4, r4, r4, lsr #31
	add r8, r8, #1
	mov r6, #0
	asr r4, r4, #1
	cmp r8, #16
	bge label313
	b label1352
label313:
	cmp r9, #0
	beq label1357
	movs r8, r5
	beq label1357
label1360:
	mov r9, r8
	mov r10, r7
	mov r4, #0
	mov r11, r4
	cmp r4, #16
	bge label1365
label1364:
	ands r6, r10, #1
	beq label323
	ands r6, r9, #1
	bne label325
	b label2635
label1365:
	mov r9, #0
	mov r10, r7
	mov r7, r9
	cmp r9, #16
	bge label333
label1388:
	and r6, r8, r10
	ands r6, r6, #1
	beq label344
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label344:
	add r6, r10, r10, lsr #31
	add r7, r7, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r7, #16
	bge label333
	b label1388
label2635:
	ldr r6, [sp, #64]
	ldr r6, [r6, r11, lsl #2]
	add r4, r4, r6
label325:
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1365
	b label1364
label323:
	ands r6, r9, #1
	beq label325
	b label2635
label333:
	ldr r6, [sp, #64]
	mov r10, #0
	movw r7, #65535
	mov r8, r10
	ldr r6, [r6, #4]
	mul r9, r9, r6
	cmp r10, #16
	bge label1396
label1395:
	and r6, r7, r9
	ands r6, r6, #1
	beq label341
	b label2639
label1396:
	mov r7, r4
	movs r8, r10
	beq label1357
	b label1360
label2639:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r10, r10, r6
label341:
	add r6, r9, r9, lsr #31
	add r8, r8, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r8, #16
	bge label1396
	b label1395
label1357:
	mov r4, r7
	mov r7, r5
	movs r8, r5
	beq label382
label1423:
	mov r9, r8
	mov r10, r7
	mov r5, #0
	mov r11, r5
	cmp r5, #16
	bge label1428
	b label1427
label363:
	cmp r8, #16
	bge label1439
label1438:
	and r6, r7, r9
	ands r6, r6, #1
	beq label370
	b label2648
label1439:
	mov r7, r5
	movs r8, r10
	beq label382
	b label1423
label382:
	movw r5, #32767
	cmp r2, r5
	ble label384
	b label2645
label352:
	cmp r11, #16
	bge label1428
label1427:
	ands r6, r10, #1
	beq label378
	b label1466
label1428:
	mov r10, #0
	mov r9, r10
	cmp r10, #16
	bge label362
	b label1431
label1466:
	ands r6, r9, #1
	bne label380
	b label2653
label1431:
	and r6, r8, r7
	ands r6, r6, #1
	beq label373
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r10, r10, r6
	b label373
label380:
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1428
	b label1427
label373:
	add r6, r7, r7, lsr #31
	add r9, r9, #1
	asr r7, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label362
	b label1431
label2648:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r10, r10, r6
label370:
	add r6, r9, r9, lsr #31
	add r8, r8, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r8, #16
	bge label1439
	b label1438
label378:
	ands r6, r9, #1
	beq label380
label2653:
	ldr r6, [sp, #64]
	ldr r6, [r6, r11, lsl #2]
	add r5, r5, r6
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	b label352
label362:
	ldr r6, [sp, #64]
	movw r7, #65535
	ldr r6, [r6, #4]
	mul r9, r10, r6
	mov r10, #0
	mov r8, r10
	b label363
label2645:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	sdiv r2, r2, r5
	ldr r5, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r5
	mov r5, r7
	mov r7, r4
	b label304
label384:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	sdiv r2, r2, r5
	mov r5, r7
	mov r7, r4
	cmp r2, #0
	beq label389
	b label1348
label1205:
	mov r4, r7
	mov r7, r5
	movs r8, r5
	beq label299
label1271:
	mov r9, r8
	mov r10, r7
	mov r5, #0
	mov r11, r5
	cmp r5, #16
	bge label1276
	b label1275
label269:
	cmp r11, #16
	bge label1276
label1275:
	ands r6, r10, #1
	beq label276
	b label1279
label1276:
	mov r9, #0
	mov r10, r7
	mov r7, r9
	cmp r9, #16
	bge label285
	b label1299
label1279:
	ands r6, r9, #1
	bne label277
label2615:
	ldr r6, [sp, #64]
	ldr r6, [r6, r11, lsl #2]
	add r5, r5, r6
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	b label269
label276:
	ands r6, r9, #1
	beq label277
	b label2615
label285:
	ldr r6, [sp, #64]
	mov r10, #0
	movw r7, #65535
	mov r8, r10
	ldr r6, [r6, #4]
	mul r9, r9, r6
	cmp r10, #16
	bge label1307
	b label1306
label1307:
	mov r7, r5
	movs r8, r10
	beq label299
	b label1271
label299:
	movw r5, #32767
	cmp r3, r5
	ble label301
	b label2612
label301:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	sdiv r3, r3, r5
	mov r5, r7
	mov r7, r4
	cmp r3, #0
	beq label1186
	b label1185
label1299:
	and r6, r8, r10
	ands r6, r6, #1
	beq label296
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label296
label277:
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1276
	b label1275
label1306:
	and r6, r7, r9
	ands r6, r6, #1
	beq label292
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r10, r10, r6
label292:
	add r6, r9, r9, lsr #31
	add r8, r8, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r8, #16
	bge label1307
	b label1306
label296:
	add r6, r10, r10, lsr #31
	add r7, r7, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r7, #16
	bge label285
	b label1299
label2587:
	ldr r6, [sp, #64]
	ldr r6, [r6, r4, lsl #2]
	add r7, r7, r6
	b label214
label217:
	cmp r3, #0
	beq label1186
	b label1185
label1186:
	mov r3, r7
	mov r5, r2
	mov r7, #0
	b label304
label2612:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	sdiv r3, r3, r5
	ldr r5, [r6, #60]
	add r3, r3, #65536
	sub r3, r3, r5
	mov r5, r7
	mov r7, r4
	b label217
label391:
	ldr r6, [sp, #64]
	mov r5, r3
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r7
	cmp r0, #0
	ble label392
	b label1162
label191:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label196
	b label791
