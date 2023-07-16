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
	bge label593
label1897:
	and r6, r6, r3
	ands r6, r6, #1
	beq label591
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r2, r2, r6
label591:
	add r3, r3, r3, lsr #31
	add r5, r5, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r5, #16
	bge label593
	b label1897
label593:
	cmp r2, #0
	beq label1913
	mov r5, #0
	movs r2, r1
	beq label2094
	b label2093
label1913:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label596
label2093:
	mov r6, #1
	mov r3, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label697
	b label2097
label2094:
	mov r2, r5
	mov r4, r1
	mov r5, #0
label596:
	cmp r1, #0
	beq label681
	b label1916
label2745:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label2
label1991:
	mov r4, #0
	mov r8, r7
	mov r10, r5
	mov r9, r4
	cmp r4, #16
	bge label1996
	b label1995
label2761:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label596
label661:
	cmp r7, #16
	bge label2027
label2026:
	and r6, r5, r8
	ands r6, r6, #1
	beq label2032
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label668
label2027:
	mov r5, r4
	movs r7, r9
	beq label674
	b label1991
label2032:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label661
label668:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2027
	b label2026
label674:
	movw r4, #32767
	cmp r1, r4
	ble label676
	b label2761
label676:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label681
	b label1916
label681:
	movw r1, #32767
	cmp r0, r1
	ble label683
	b label2745
label683:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label6
	b label787
label1995:
	ands r6, r10, #1
	beq label653
	ands r6, r8, #1
	bne label651
label2764:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r4, r4, r6
label651:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1996
	b label1995
label653:
	ands r6, r8, #1
	beq label651
	b label2764
label1996:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label660
label2019:
	and r6, r7, r9
	ands r6, r6, #1
	beq label672
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label672:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label660
	b label2019
label660:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label661
label1916:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label605
label1920:
	and r6, r6, r7
	ands r6, r6, #1
	beq label679
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
label679:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label605
	b label1920
label605:
	cmp r3, #0
	beq label1925
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
label1933:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label625
	b label1956
label626:
	cmp r7, #16
	bge label1964
label1963:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1969
	b label2756
label1964:
	mov r5, r3
	movs r7, r9
	beq label1925
	b label1928
label1969:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label626
label1932:
	ands r6, r10, #1
	beq label619
	ands r6, r8, #1
	bne label617
	b label2751
label619:
	ands r6, r8, #1
	beq label617
	b label2751
label1956:
	and r6, r7, r9
	ands r6, r6, #1
	beq label637
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label637:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label625
	b label1956
label625:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label626
label2756:
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
	bge label1964
	b label1963
label2751:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label617:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1933
	b label1932
label2097:
	and r6, r6, r3
	ands r6, r6, #1
	beq label695
	b label2780
label695:
	add r3, r3, r3, lsr #31
	add r7, r7, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r7, #16
	bge label697
	b label2097
label697:
	cmp r8, #0
	beq label2113
	b label2112
label2113:
	mov r3, r5
	mov r5, r4
	mov r7, r4
label700:
	cmp r7, #0
	beq label733
	b label2116
label2785:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label684
label733:
	movw r4, #32767
	cmp r2, r4
	ble label735
	b label2785
label735:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label2094
	b label2093
label2116:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label2121
	b label2120
label2121:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label2145
	b label2144
label2145:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	cmp r9, #16
	bge label2164
	b label2163
label2164:
	mov r5, r4
	movs r7, r9
	beq label733
	b label2116
label703:
	cmp r10, #16
	bge label2121
label2120:
	ands r6, r9, #1
	beq label710
	ands r6, r8, #1
	bne label711
label2788:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label703
label710:
	ands r6, r8, #1
	beq label711
	b label2788
label2144:
	and r6, r7, r9
	ands r6, r6, #1
	beq label720
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label720:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label2145
	b label2144
label711:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label2121
	b label2120
label2163:
	and r6, r5, r8
	ands r6, r6, #1
	beq label2169
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label730
label2169:
	mov r6, r9
label730:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2164
	b label2163
label2112:
	movs r7, r4
	beq label2194
	b label2193
label2194:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label700
label2193:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label2198
	b label2197
label2198:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label2222
label2221:
	and r6, r7, r9
	ands r6, r6, #1
	beq label756
	b label2809
label760:
	cmp r7, #16
	bge label2241
	b label2240
label2241:
	mov r5, r3
	movs r7, r9
	beq label2194
	b label2193
label2240:
	and r6, r5, r8
	ands r6, r6, #1
	beq label767
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label767:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label2241
	b label2240
label2197:
	ands r6, r10, #1
	beq label748
	b label2201
label746:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label2198
	b label2197
label756:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label2222
	b label2221
label2201:
	ands r6, r8, #1
	bne label746
	b label2804
label748:
	ands r6, r8, #1
	beq label746
label2804:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	b label746
label2809:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label756
label2222:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label760
label2780:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r8, r8, r6
	b label695
label1925:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label674
	b label1991
label684:
	cmp r2, #0
	beq label2094
	b label2093
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
	b label201
label1154:
	mov r1, #2
	mov r4, #1
	ldr r0, [sp, #68]
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
label1538:
	and r6, r6, r3
	ands r6, r6, #1
	beq label581
	b label2666
label581:
	add r3, r3, r3, lsr #31
	add r5, r5, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r5, #16
	bge label404
	b label1538
label2666:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r2, r2, r6
	b label581
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
label407:
	cmp r1, #0
	beq label411
	b label1546
label1635:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1654
	b label1653
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
label482:
	cmp r7, #16
	bge label1697
label1696:
	and r6, r5, r8
	ands r6, r6, #1
	beq label489
	b label2699
label1697:
	mov r5, r4
	movs r7, r9
	beq label458
	b label1635
label1653:
	ands r6, r9, #1
	beq label469
	b label1657
label1654:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label1678
	b label1677
label2691:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
label467:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1654
	b label1653
label469:
	ands r6, r8, #1
	beq label467
	b label2691
label1678:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label482
label1677:
	and r6, r7, r9
	ands r6, r6, #1
	beq label479
	b label2697
label479:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label1678
	b label1677
label2699:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label489:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1697
	b label1696
label1657:
	ands r6, r8, #1
	bne label467
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
label2697:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
	b label479
label495:
	cmp r2, #0
	beq label1724
label1723:
	mov r3, #0
	mov r6, #1
	mov r7, r2
	mov r8, r3
	cmp r3, #16
	bge label504
	b label1727
label1724:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label407
label504:
	cmp r3, #0
	beq label1732
	movs r7, r4
	beq label1732
label1735:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1740
label1739:
	ands r6, r9, #1
	beq label515
	ands r6, r8, #1
	bne label516
	b label2710
label543:
	movw r4, #32767
	cmp r2, r4
	ble label545
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label495
label545:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label1724
	b label1723
label508:
	cmp r10, #16
	bge label1740
	b label1739
label1740:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1764
	b label1763
label2710:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label508
label1763:
	and r6, r7, r5
	ands r6, r6, #1
	beq label526
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label526
label516:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1740
	b label1739
label526:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label1764
	b label1763
label515:
	ands r6, r8, #1
	beq label516
	b label2710
label1546:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label419
	b label1564
label459:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label411
	b label1546
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
	bge label439
	b label1600
label439:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
label440:
	cmp r7, #16
	bge label1608
label1607:
	and r6, r5, r8
	ands r6, r6, #1
	beq label1613
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r6, r9, r6
	b label447
label1608:
	mov r5, r3
	movs r7, r9
	beq label1569
	b label1572
label1613:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label440
label447:
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	mov r9, r6
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1608
	b label1607
label1576:
	ands r6, r10, #1
	beq label429
	ands r6, r8, #1
	bne label431
	b label2676
label429:
	ands r6, r8, #1
	beq label431
	b label2676
label1600:
	and r6, r7, r9
	ands r6, r6, #1
	beq label450
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label450:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label439
	b label1600
label2676:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
label431:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1577
	b label1576
label1564:
	and r6, r6, r7
	ands r6, r6, #1
	beq label492
	b label2671
label492:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label419
	b label1564
label2671:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
	b label492
label1727:
	and r6, r6, r7
	ands r6, r6, #1
	beq label577
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
label577:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label504
	b label1727
label1764:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label1783
	b label1782
label1783:
	mov r5, r3
	movs r7, r9
	beq label1732
	b label1735
label1782:
	and r6, r5, r8
	ands r6, r6, #1
	beq label535
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label535:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1783
	b label1782
label1569:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label458
	b label1635
label1732:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label543
label1798:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1817
label1816:
	ands r6, r9, #1
	beq label553
	b label1820
label1817:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label562
	b label1840
label562:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	bge label1848
label1847:
	and r6, r5, r8
	ands r6, r6, #1
	beq label569
	b label2730
label1848:
	mov r5, r4
	movs r7, r9
	beq label543
	b label1798
label1840:
	and r6, r7, r5
	ands r6, r6, #1
	beq label573
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label573:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label562
	b label1840
label569:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1848
	b label1847
label1820:
	ands r6, r8, #1
	bne label554
label2725:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	b label554
label553:
	ands r6, r8, #1
	beq label554
	b label2725
label554:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1817
	b label1816
label2730:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label569
label791:
	mov r2, #0
	mov r6, #1
	mov r3, r0
	mov r5, r2
	cmp r2, #16
	bge label20
	b label795
label394:
	cmp r0, #0
	ble label398
	b label1533
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
label795:
	and r6, r6, r3
	ands r6, r6, #1
	beq label18
	b label2509
label18:
	add r3, r3, r3, lsr #31
	add r5, r5, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r5, #16
	bge label20
	b label795
label20:
	cmp r2, #0
	beq label811
	mov r5, #0
	movs r2, r1
	beq label992
	b label991
label811:
	mov r2, r4
	mov r4, r1
	mov r5, #0
	b label23
label991:
	mov r3, #0
	mov r6, #1
	mov r7, r2
	mov r8, r3
	cmp r3, #16
	bge label124
	b label995
label992:
	mov r2, r5
	mov r4, r1
	mov r5, #0
	b label23
label124:
	cmp r3, #0
	beq label1011
	b label1010
label995:
	and r6, r6, r7
	ands r6, r6, #1
	beq label121
	b label2555
label121:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label124
	b label995
label1010:
	movs r7, r4
	beq label1011
label1014:
	mov r8, r7
	mov r9, r5
	mov r3, #0
	mov r10, r3
	cmp r3, #16
	bge label1019
	b label1018
label145:
	cmp r7, #16
	bge label1050
label1049:
	and r6, r5, r8
	ands r6, r6, #1
	beq label152
	b label2570
label1050:
	mov r5, r3
	movs r7, r9
	beq label1011
	b label1014
label152:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1050
	b label1049
label1018:
	ands r6, r9, #1
	beq label138
	b label1022
label1019:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label144
	b label1042
label1022:
	ands r6, r8, #1
	bne label135
	b label2563
label138:
	ands r6, r8, #1
	beq label135
	b label1038
label1042:
	and r6, r7, r5
	ands r6, r6, #1
	beq label156
	b label2569
label144:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	b label145
label156:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label144
	b label1042
label135:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1019
	b label1018
label2570:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label152
label2569:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label156
label1038:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1019
	b label1018
label2563:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r3, r3, r6
	b label135
label2555:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
	b label121
label412:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label398
	b label1533
label23:
	cmp r1, #0
	beq label108
	b label814
label2514:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	ldr r1, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r1
	mov r1, r5
	b label7
label2521:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	ldr r4, [r6, #60]
	add r1, r1, #65536
	sub r1, r1, r4
	mov r4, r5
	mov r5, r3
	b label23
label108:
	movw r1, #32767
	cmp r0, r1
	ble label110
	b label2514
label110:
	ldr r6, [sp, #64]
	mov r4, r2
	ldr r1, [r6, #4]
	sdiv r0, r0, r1
	mov r1, r5
	cmp r0, #0
	ble label196
	b label791
label814:
	mov r3, #0
	mov r6, #1
	mov r7, r1
	mov r8, r3
	cmp r3, #16
	bge label36
label818:
	and r6, r6, r7
	ands r6, r6, #1
	beq label33
	b label2515
label36:
	cmp r3, #0
	beq label834
	movs r7, r4
	beq label915
	b label914
label834:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label39
label914:
	mov r3, #0
	mov r8, r7
	mov r10, r5
	mov r9, r3
	cmp r3, #16
	bge label919
	b label918
label919:
	mov r8, #0
	mov r9, r5
	mov r5, r8
	cmp r8, #16
	bge label923
	b label922
label39:
	cmp r7, #0
	beq label72
	b label837
label72:
	movw r4, #32767
	cmp r1, r4
	ble label73
	b label2521
label915:
	mov r3, r5
	mov r5, r4
	mov r7, r4
	b label39
label93:
	cmp r7, #16
	bge label942
label941:
	and r6, r5, r8
	ands r6, r6, #1
	beq label100
	b label2545
label942:
	mov r5, r3
	movs r7, r9
	beq label915
	b label914
label837:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label842
label841:
	ands r6, r9, #1
	beq label51
	b label845
label842:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label58
	b label865
label845:
	ands r6, r8, #1
	bne label48
	b label861
label48:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label842
	b label841
label51:
	ands r6, r8, #1
	beq label48
	b label856
label861:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label842
	b label841
label59:
	cmp r7, #16
	bge label873
label872:
	and r6, r5, r8
	ands r6, r6, #1
	beq label878
	b label2533
label873:
	mov r5, r4
	movs r7, r9
	beq label72
	b label837
label878:
	mov r6, r9
	add r8, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r8, #1
	asr r5, r5, #1
	b label59
label865:
	and r6, r7, r5
	ands r6, r6, #1
	beq label69
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label69:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label58
	b label865
label2533:
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
	bge label873
	b label872
label918:
	ands r6, r10, #1
	beq label104
	ands r6, r8, #1
	bne label105
	b label2548
label105:
	add r6, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label919
	b label918
label922:
	and r6, r7, r9
	ands r6, r6, #1
	beq label89
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r8, r8, r6
label89:
	add r6, r9, r9, lsr #31
	add r5, r5, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r5, #16
	bge label923
	b label922
label856:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label842
	b label841
label100:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label942
	b label941
label2545:
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label100
label2548:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r3, r3, r6
	b label105
label104:
	ands r6, r8, #1
	beq label105
	b label2548
label58:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	mov r9, #0
	movw r5, #65535
	mov r7, r9
	b label59
label33:
	add r6, r7, r7, lsr #31
	add r8, r8, #1
	asr r7, r6, #1
	mov r6, #0
	cmp r8, #16
	bge label36
	b label818
label923:
	ldr r6, [sp, #64]
	mov r9, #0
	mov r7, r9
	ldr r5, [r6, #4]
	mul r8, r8, r5
	movw r5, #65535
	b label93
label2515:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r3, r3, r6
	b label33
label73:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r1, r1, r4
	mov r4, r5
	mov r5, r3
	cmp r1, #0
	beq label108
	b label814
label1011:
	mov r3, r5
	mov r5, r4
	movs r7, r4
	beq label193
	b label1077
label193:
	movw r4, #32767
	cmp r2, r4
	ble label195
	b label2575
label1077:
	mov r8, r7
	mov r9, r5
	mov r4, #0
	mov r10, r4
	cmp r4, #16
	bge label1082
	b label1081
label1082:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label1086
label1085:
	and r6, r7, r5
	ands r6, r6, #1
	beq label175
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label175
label1086:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	mul r8, r9, r5
	movw r5, #65535
	mov r9, #0
	mov r7, r9
	b label178
label175:
	add r5, r5, r5, lsr #31
	add r8, r8, #1
	add r6, r7, r7, lsr #31
	asr r5, r5, #1
	asr r7, r6, #1
	cmp r8, #16
	bge label1086
	b label1085
label178:
	cmp r7, #16
	bge label1105
label1104:
	and r6, r5, r8
	ands r6, r6, #1
	beq label184
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
	b label184
label1105:
	mov r5, r4
	movs r7, r9
	beq label193
	b label1077
label184:
	add r6, r8, r8, lsr #31
	add r7, r7, #1
	add r5, r5, r5, lsr #31
	asr r8, r6, #1
	asr r5, r5, #1
	cmp r7, #16
	bge label1105
	b label1104
label1081:
	ands r6, r9, #1
	beq label190
	b label1120
label191:
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r10, #16
	bge label1082
	b label1081
label1120:
	ands r6, r8, #1
	bne label191
	b label2583
label2584:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	add r6, r9, r9, lsr #31
	add r10, r10, #1
	asr r9, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	b label163
label190:
	ands r6, r8, #1
	beq label191
	b label2584
label163:
	cmp r10, #16
	bge label1082
	b label1081
label2583:
	ldr r6, [sp, #64]
	ldr r6, [r6, r10, lsl #2]
	add r4, r4, r6
	b label191
label2509:
	ldr r6, [sp, #64]
	ldr r6, [r6, r5, lsl #2]
	add r2, r2, r6
	b label18
label2575:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	ldr r4, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r4
	mov r4, r5
	mov r5, r3
	b label111
label195:
	ldr r6, [sp, #64]
	ldr r4, [r6, #4]
	sdiv r2, r2, r4
	mov r4, r5
	mov r5, r3
	cmp r2, #0
	beq label992
	b label991
label111:
	cmp r2, #0
	beq label992
	b label991
label1158:
	mov r2, #2
	mov r5, #1
	movs r0, r1
	ble label207
	b label1162
label201:
	add sp, sp, #76
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label207:
	ldr r6, [sp, #64]
	ldr r0, [r6, r1, lsl #2]
	cmp r5, r0
	beq label208
	mov r0, #1
	b label201
label208:
	add r1, r1, #1
	cmp r1, #16
	bge label1159
	b label1158
label203:
	cmp r0, #0
	ble label207
label1162:
	mov r6, #1
	mov r3, r0
	mov r7, #0
	mov r4, r7
	cmp r7, #16
	bge label218
	b label1174
label218:
	cmp r7, #0
	beq label1190
	b label1189
label306:
	cmp r2, #0
	beq label310
	b label1356
label310:
	movw r2, #32767
	cmp r0, r2
	ble label312
	ldr r6, [sp, #64]
	mov r5, r3
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	ldr r2, [r6, #60]
	add r0, r0, #65536
	sub r0, r0, r2
	mov r2, r7
	b label203
label312:
	ldr r6, [sp, #64]
	mov r5, r3
	ldr r2, [r6, #4]
	sdiv r0, r0, r2
	mov r2, r7
	cmp r0, #0
	ble label207
	b label1162
label1356:
	mov r6, #1
	mov r4, r2
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label318
label1374:
	and r6, r6, r4
	ands r6, r6, #1
	beq label392
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
	b label392
label318:
	cmp r9, #0
	beq label1379
	movs r8, r5
	beq label1379
label1382:
	mov r9, r8
	mov r10, r7
	mov r4, #0
	mov r11, r4
	cmp r4, #16
	bge label1387
	b label1386
label1387:
	mov r9, #0
	mov r10, r7
	mov r7, r9
	cmp r9, #16
	bge label1391
label1390:
	and r6, r8, r10
	ands r6, r6, #1
	beq label334
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label334:
	add r6, r10, r10, lsr #31
	add r7, r7, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r7, #16
	bge label1391
	b label1390
label1386:
	ands r6, r10, #1
	beq label347
	b label1425
label2646:
	ldr r6, [sp, #64]
	ldr r6, [r6, r11, lsl #2]
	add r4, r4, r6
label349:
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1387
	b label1386
label347:
	ands r6, r9, #1
	beq label349
	b label2646
label1425:
	ands r6, r9, #1
	bne label349
	b label2646
label392:
	add r4, r4, r4, lsr #31
	add r8, r8, #1
	mov r6, #0
	asr r4, r4, #1
	cmp r8, #16
	bge label318
	b label1374
label1391:
	ldr r6, [sp, #64]
	mov r10, #0
	movw r7, #65535
	mov r8, r10
	ldr r6, [r6, #4]
	mul r9, r9, r6
	cmp r10, #16
	bge label1410
label1409:
	and r6, r7, r9
	ands r6, r6, #1
	beq label344
	b label2643
label1410:
	mov r7, r4
	movs r8, r10
	beq label1379
	b label1382
label2643:
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r10, r10, r6
label344:
	add r6, r9, r9, lsr #31
	add r8, r8, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r8, #16
	bge label1410
	b label1409
label1379:
	mov r4, r7
	mov r7, r5
	movs r8, r5
	beq label387
label1445:
	mov r9, r8
	mov r10, r7
	mov r5, #0
	mov r11, r5
	cmp r5, #16
	bge label1450
	b label1449
label1450:
	mov r10, #0
	mov r9, r10
	cmp r10, #16
	bge label1474
	b label1473
label378:
	cmp r8, #16
	bge label1493
	b label1492
label1493:
	mov r7, r5
	movs r8, r10
	beq label387
	b label1445
label387:
	movw r5, #32767
	cmp r2, r5
	ble label389
	b label2650
label389:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	sdiv r2, r2, r5
	mov r5, r7
	mov r7, r4
	cmp r2, #0
	beq label310
	b label1356
label1492:
	and r6, r7, r9
	ands r6, r6, #1
	beq label385
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r10, r10, r6
label385:
	add r6, r9, r9, lsr #31
	add r8, r8, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r8, #16
	bge label1493
	b label1492
label1473:
	and r6, r8, r7
	ands r6, r6, #1
	beq label374
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r10, r10, r6
label374:
	add r6, r7, r7, lsr #31
	add r9, r9, #1
	asr r7, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1474
	b label1473
label1449:
	ands r6, r10, #1
	beq label363
	ands r6, r9, #1
	bne label366
label2653:
	ldr r6, [sp, #64]
	ldr r6, [r6, r11, lsl #2]
	add r5, r5, r6
	b label366
label363:
	ands r6, r9, #1
	beq label366
	b label2653
label366:
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1450
	b label1449
label1474:
	ldr r6, [sp, #64]
	movw r7, #65535
	ldr r6, [r6, #4]
	mul r9, r10, r6
	mov r10, #0
	mov r8, r10
	b label378
label1174:
	and r6, r6, r3
	ands r6, r6, #1
	beq label215
	b label2592
label215:
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r6, #0
	asr r3, r3, #1
	cmp r4, #16
	bge label218
	b label1174
label1189:
	mov r7, #0
	movs r3, r2
	beq label1194
	b label1193
label1190:
	mov r3, r5
	mov r5, r2
	mov r7, #0
	b label306
label1193:
	mov r6, #1
	mov r4, r3
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	bge label232
	b label1197
label232:
	cmp r9, #0
	beq label1213
	movs r8, r5
	beq label1294
	b label1293
label1213:
	mov r4, r7
	mov r7, r5
	mov r8, r5
label235:
	cmp r8, #0
	beq label268
	b label1216
label1293:
	mov r9, r8
	mov r10, r7
	mov r4, #0
	mov r11, r4
	cmp r4, #16
	bge label1298
	b label1297
label1294:
	mov r4, r7
	mov r7, r5
	mov r8, r5
	b label235
label1298:
	mov r10, #0
	mov r9, r10
	cmp r10, #16
	bge label1302
label1301:
	and r6, r8, r7
	ands r6, r6, #1
	beq label286
	b label2621
label1302:
	ldr r6, [sp, #64]
	movw r7, #65535
	ldr r6, [r6, #4]
	mul r9, r10, r6
	mov r10, #0
	mov r8, r10
	b label289
label1216:
	mov r9, r8
	mov r10, r7
	mov r5, #0
	mov r11, r5
	cmp r5, #16
	bge label1221
	b label1220
label1245:
	ldr r6, [sp, #64]
	mov r10, #0
	movw r7, #65535
	mov r8, r10
	ldr r6, [r6, #4]
	mul r9, r9, r6
	cmp r10, #16
	bge label1264
	b label1263
label1264:
	mov r7, r5
	movs r8, r10
	beq label268
	b label1216
label268:
	movw r5, #32767
	cmp r3, r5
	ble label270
	b label2603
label1220:
	ands r6, r10, #1
	beq label245
	ands r6, r9, #1
	bne label246
	b label2606
label245:
	ands r6, r9, #1
	beq label246
	b label2606
label246:
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1221
	b label1220
label1263:
	and r6, r7, r9
	ands r6, r6, #1
	beq label265
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r10, r10, r6
label265:
	add r6, r9, r9, lsr #31
	add r8, r8, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r8, #16
	bge label1264
	b label1263
label238:
	cmp r11, #16
	bge label1221
	b label1220
label1221:
	mov r9, #0
	mov r10, r7
	mov r7, r9
	cmp r9, #16
	bge label1245
	b label1244
label2606:
	ldr r6, [sp, #64]
	ldr r6, [r6, r11, lsl #2]
	add r5, r5, r6
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	b label238
label1244:
	and r6, r8, r10
	ands r6, r6, #1
	beq label255
	ldr r6, [sp, #64]
	ldr r6, [r6, r7, lsl #2]
	add r9, r9, r6
label255:
	add r6, r10, r10, lsr #31
	add r7, r7, #1
	asr r10, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r7, #16
	bge label1245
	b label1244
label289:
	cmp r8, #16
	bge label1321
	b label1320
label1321:
	mov r7, r4
	movs r8, r10
	beq label1294
	b label1293
label1320:
	and r6, r7, r9
	ands r6, r6, #1
	beq label296
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r10, r10, r6
label296:
	add r6, r9, r9, lsr #31
	add r8, r8, #1
	asr r9, r6, #1
	add r6, r7, r7, lsr #31
	asr r7, r6, #1
	cmp r8, #16
	bge label1321
	b label1320
label1297:
	ands r6, r10, #1
	beq label303
	b label1336
label303:
	ands r6, r9, #1
	beq label299
	b label1352
label299:
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1298
	b label1297
label2621:
	ldr r6, [sp, #64]
	ldr r6, [r6, r9, lsl #2]
	add r10, r10, r6
label286:
	add r6, r7, r7, lsr #31
	add r9, r9, #1
	asr r7, r6, #1
	add r6, r8, r8, lsr #31
	asr r8, r6, #1
	cmp r9, #16
	bge label1302
	b label1301
label1336:
	ands r6, r9, #1
	bne label299
	ldr r6, [sp, #64]
	ldr r6, [r6, r11, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1298
	b label1297
label1352:
	ldr r6, [sp, #64]
	ldr r6, [r6, r11, lsl #2]
	add r4, r4, r6
	add r6, r10, r10, lsr #31
	add r11, r11, #1
	asr r10, r6, #1
	add r6, r9, r9, lsr #31
	asr r9, r6, #1
	cmp r11, #16
	bge label1298
	b label1297
label1197:
	and r6, r6, r4
	ands r6, r6, #1
	beq label230
	ldr r6, [sp, #64]
	ldr r6, [r6, r8, lsl #2]
	add r9, r9, r6
label230:
	add r4, r4, r4, lsr #31
	add r8, r8, #1
	mov r6, #0
	asr r4, r4, #1
	cmp r8, #16
	bge label232
	b label1197
label2650:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	sdiv r2, r2, r5
	ldr r5, [r6, #60]
	add r2, r2, #65536
	sub r2, r2, r5
	mov r5, r7
	mov r7, r4
	b label306
label2592:
	ldr r6, [sp, #64]
	ldr r6, [r6, r4, lsl #2]
	add r7, r7, r6
	b label215
label2603:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	sdiv r3, r3, r5
	ldr r5, [r6, #60]
	add r3, r3, #65536
	sub r3, r3, r5
	mov r5, r7
	mov r7, r4
	b label219
label270:
	ldr r6, [sp, #64]
	ldr r5, [r6, #4]
	sdiv r3, r3, r5
	mov r5, r7
	mov r7, r4
	cmp r3, #0
	beq label1194
	b label1193
label219:
	cmp r3, #0
	beq label1194
	b label1193
label1194:
	mov r3, r7
	mov r5, r2
	mov r7, #0
	b label306
