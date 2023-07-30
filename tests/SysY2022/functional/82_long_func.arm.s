.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r2, #2
	mov r0, #4
	mov r1, #1
	sub sp, sp, #72
	str r1, [sp, #0]
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #12]
	mov r0, #16
	str r0, [sp, #16]
	mov r0, #32
	str r0, [sp, #20]
	mov r0, #64
	str r0, [sp, #24]
	mov r0, #128
	str r0, [sp, #28]
	mov r0, #256
	str r0, [sp, #32]
	mov r0, #512
	str r0, [sp, #36]
	mov r0, #1024
	str r0, [sp, #40]
	mov r0, #2048
	str r0, [sp, #44]
	mov r0, #4096
	str r0, [sp, #48]
	mov r0, #8192
	str r0, [sp, #52]
	mov r0, #16384
	str r0, [sp, #56]
	mov r0, #32768
	str r0, [sp, #60]
	mov r0, #0
	cmp r0, #0
	ble label6
label788:
	mov r5, #1
	mov r3, r0
	mov r6, #0
	mov r4, r6
	cmp r6, #16
	blt label765
	b label1897
.p2align 4
label2664:
	movs r4, r2
	mov r3, #0
	bne label2069
	b label2068
.p2align 4
label1902:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label1906
.p2align 4
label1905:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	b label2964
.p2align 4
label1906:
	mov r7, #0
	mov r5, #1
	mov r8, r1
	mov r6, r7
	cmp r7, #16
	blt label599
	cmp r7, #0
	bne label1925
.p2align 4
label2666:
	mov r6, r4
	movs r7, r4
	bne label1929
	b label1928
.p2align 4
label599:
	and r5, r5, r8
	ands r5, r5, #1
	bne label600
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label599
	cmp r7, #0
	beq label2666
.p2align 4
label1925:
	mov r6, r3
	movs r7, r4
	bne label2006
	mov r6, r4
.p2align 4
label1928:
	movw r4, #32767
	cmp r1, r4
	bgt label611
.p2align 4
label2669:
	ldr r4, [sp, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	b label1905
.p2align 4
label2069:
	mov r7, #0
	mov r5, #1
	mov r8, r2
	mov r6, r7
	cmp r7, #16
	blt label689
	cmp r7, #0
	bne label2102
	mov r6, r4
	movs r7, r4
	bne label2106
	b label2105
.p2align 4
label765:
	and r5, r5, r3
	ands r5, r5, #1
	bne label768
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label765
	cmp r6, #0
	bne label1902
	b label2664
.p2align 4
label768:
	mov r5, sp
	ldr r5, [r5, r4, lsl #2]
	add r6, r6, r5
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label765
	cmp r6, #0
	bne label1902
	movs r4, r2
	mov r3, #0
	bne label2069
	b label2068
label6:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r1, #1
	mov r2, #2
	movs r0, r1
	ble label196
label792:
	mov r4, #0
	mov r5, #1
	mov r6, r0
	mov r3, r4
	cmp r4, #16
	blt label16
	cmp r4, #0
	bne label811
.p2align 4
label2470:
	movs r4, r2
	mov r3, #0
	bne label978
	b label977
.p2align 4
label16:
	and r5, r5, r6
	ands r5, r5, #1
	bne label17
	add r5, r6, r6, lsr #31
	add r3, r3, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label16
	cmp r4, #0
	bne label811
	b label2470
.p2align 4
label2068:
	movw r2, #32767
	cmp r0, r2
	bgt label683
.p2align 4
label2691:
	ldr r2, [sp, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
.p2align 4
label2106:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label726
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label722
	b label3006
.p2align 4
label2705:
	movw r4, #32767
	cmp r2, r4
	bgt label700
.p2align 4
label3012:
	ldr r4, [sp, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	b label2068
.p2align 4
label723:
	mov r5, sp
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label722
	ldr r5, [sp, #4]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label718
	mov r6, r4
	cmp r9, #0
	bne label2106
	b label2705
.p2align 4
label2724:
	movw r2, #32767
	cmp r0, r2
	bgt label113
	b label2498
.p2align 4
label978:
	mov r5, #1
	mov r6, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label120
	cmp r8, #0
	bne label1011
	mov r6, r4
	mov r7, r4
	b label127
.p2align 4
label1011:
	mov r6, r3
	movs r7, r4
	bne label1092
	mov r6, r4
	b label1014
.p2align 4
label127:
	cmp r7, #0
	bne label1015
.p2align 4
label1014:
	movw r4, #32767
	cmp r2, r4
	bgt label162
.p2align 4
label2506:
	ldr r4, [sp, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
.p2align 4
label977:
	movw r2, #32767
	cmp r0, r2
	bgt label113
.p2align 4
label2498:
	ldr r2, [sp, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
.p2align 4
label113:
	ldr r2, [sp, #4]
	sdiv r0, r0, r2
	ldr r2, [sp, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label792
	b label196
.p2align 4
label2765:
	mov r6, r4
	movs r7, r8
	bne label1015
.p2align 4
label2510:
	movw r4, #32767
	cmp r2, r4
	bgt label162
.p2align 4
label2766:
	ldr r4, [sp, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label978
	b label977
.p2align 4
label150:
	and r5, r7, r9
	ands r5, r5, #1
	bne label151
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label150
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label146
	b label2765
label196:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #2
	str r0, [sp, #64]
	cmp r0, #16
	blt label1155
	mov r0, #0
	str r0, [sp, #68]
	cmp r0, #16
	blt label1159
	b label2528
label1155:
	mov r2, #2
	mov r1, #1
	ldr r0, [sp, #64]
	cmp r0, #0
	ble label398
.p2align 4
label1534:
	mov r5, #1
	mov r3, r0
	mov r6, #0
	mov r4, r6
	cmp r6, #16
	blt label404
	cmp r6, #0
	bne label1554
	movs r4, r2
	mov r3, #0
	bne label1721
	b label1720
label1159:
	mov r2, #2
	mov r1, #1
	ldr r0, [sp, #68]
	cmp r0, #0
	ble label1162
label1163:
	mov r5, #1
	mov r3, r0
	mov r6, #0
	mov r4, r6
	cmp r6, #16
	blt label210
	cmp r6, #0
	bne label1182
.p2align 4
label2530:
	movs r4, r2
	mov r3, #0
	bne label1349
	b label1348
.p2align 4
label210:
	and r5, r5, r3
	ands r5, r5, #1
	bne label211
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label210
	cmp r6, #0
	beq label2530
.p2align 4
label1182:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	beq label1185
.p2align 4
label1186:
	mov r7, #0
	mov r5, #1
	mov r8, r1
	mov r6, r7
	cmp r7, #16
	blt label296
	b label1189
.p2align 4
label2532:
	mov r6, r4
	movs r7, r4
	bne label1198
	b label1197
.p2align 4
label296:
	and r5, r5, r8
	ands r5, r5, #1
	bne label297
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label296
	cmp r7, #0
	bne label1194
	b label2532
.p2align 4
label398:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #64]
	add r0, r0, #1
	str r0, [sp, #64]
	cmp r0, #16
	blt label1155
	mov r0, #0
	str r0, [sp, #68]
	cmp r0, #16
	blt label1159
	b label2528
.p2align 4
label520:
	ldr r4, [sp, #4]
	sdiv r2, r2, r4
	ldr r4, [sp, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
	ldr r2, [sp, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label2633:
	mov r6, r4
	movs r7, r4
	bne label1758
	b label1757
.p2align 4
label508:
	and r5, r5, r8
	ands r5, r5, #1
	bne label509
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label508
	cmp r7, #0
	beq label2633
.p2align 4
label1754:
	mov r6, r3
	movs r7, r4
	bne label1835
	mov r6, r4
.p2align 4
label1757:
	movw r4, #32767
	cmp r2, r4
	bgt label520
.p2align 4
label2636:
	ldr r4, [sp, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	b label1720
.p2align 4
label1758:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label526
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label537
	b label2927
.p2align 4
label2640:
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label547
.p2align 4
label1818:
	mov r6, r4
	movs r7, r8
	bne label1758
	b label2646
.p2align 4
label2927:
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label547
	b label1818
.p2align 4
label2646:
	movw r4, #32767
	cmp r2, r4
	bgt label520
.p2align 4
label2942:
	ldr r4, [sp, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1721
	b label1720
.p2align 4
label547:
	and r5, r6, r9
	ands r5, r5, #1
	bne label550
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label547
	mov r6, r4
	movs r7, r8
	bne label1758
	b label2646
.p2align 4
label550:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label547
	mov r6, r4
	movs r7, r8
	bne label1758
	movw r4, #32767
	cmp r2, r4
	bgt label520
	b label2942
.p2align 4
label1775:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label537
	b label2640
.p2align 4
label526:
	ands r5, r10, #1
	bne label531
	ands r5, r8, #1
	bne label527
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label526
	b label1775
.p2align 4
label527:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label526
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label537
	b label2640
.p2align 4
label531:
	ands r5, r8, #1
	beq label527
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label526
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label537
	b label2937
.p2align 4
label2939:
	mov r6, r4
	movs r7, r8
	bne label1758
	b label2646
.p2align 4
label537:
	and r5, r7, r6
	ands r5, r5, #1
	bne label538
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label537
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label547
	b label2939
.p2align 4
label2937:
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label547
	b label1818
.p2align 4
label538:
	mov r5, sp
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label537
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label547
	mov r6, r4
	cmp r8, #0
	bne label1758
	b label2646
.p2align 4
label1835:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label578
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label574
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r7, r8
	b label1849
.p2align 4
label2948:
	mov r6, r3
	movs r7, r8
	bne label1835
.p2align 4
label2652:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1758
	b label2949
.p2align 4
label574:
	and r5, r7, r9
	ands r5, r5, #1
	bne label577
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label574
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label570
	b label2948
.p2align 4
label577:
	mov r5, sp
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label574
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label570
	mov r6, r3
	cmp r8, #0
	bne label1835
	b label2652
.p2align 4
label578:
	ands r5, r10, #1
	bne label583
	ands r5, r8, #1
	bne label582
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label578
	b label2956
.p2align 4
label2949:
	movw r4, #32767
	cmp r2, r4
	bgt label520
	b label2636
.p2align 4
label570:
	and r5, r6, r9
	ands r5, r5, #1
	bne label573
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label570
	mov r6, r3
	movs r7, r8
	bne label1835
	b label2652
.p2align 4
label573:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label570
	mov r6, r3
	movs r7, r8
	bne label1835
	mov r6, r4
	movs r7, r4
	bne label1758
	b label2949
.p2align 4
label2594:
	movs r4, r2
	mov r3, #0
	bne label1721
	b label1720
.p2align 4
label404:
	and r5, r5, r3
	ands r5, r5, #1
	bne label405
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label404
	cmp r6, #0
	beq label2594
.p2align 4
label1554:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label1558
.p2align 4
label1557:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	b label2881
.p2align 4
label1558:
	mov r7, #0
	mov r5, #1
	mov r8, r1
	mov r6, r7
	cmp r7, #16
	blt label490
	b label1561
.p2align 4
label2596:
	mov r6, r4
	movs r7, r4
	bne label1570
	b label1569
.p2align 4
label1566:
	mov r6, r3
	movs r7, r4
	bne label1647
	mov r6, r4
.p2align 4
label1569:
	movw r4, #32767
	cmp r1, r4
	bgt label426
.p2align 4
label2599:
	ldr r4, [sp, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	b label1557
.p2align 4
label490:
	and r5, r5, r8
	ands r5, r5, #1
	bne label493
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label490
	cmp r7, #0
	bne label1566
	b label2596
.p2align 4
label493:
	mov r5, sp
	ldr r5, [r5, r6, lsl #2]
	add r7, r7, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label490
	cmp r7, #0
	bne label1566
	mov r6, r4
	movs r7, r4
	bne label1570
	b label1569
.p2align 4
label1849:
	mov r6, r3
	movs r7, r8
	bne label1835
	b label2652
.p2align 4
label2956:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label574
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r7, r8
	b label1849
.p2align 4
label583:
	ands r5, r8, #1
	beq label582
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label578
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label574
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r7, r8
	b label1849
.p2align 4
label582:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label578
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label574
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r7, r8
	b label1849
.p2align 4
label1570:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label451
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label437
	b label2883
.p2align 4
label2889:
	mov r6, r4
	movs r7, r9
	bne label1570
	b label2607
.p2align 4
label437:
	and r5, r7, r6
	ands r5, r5, #1
	bne label440
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label437
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label447
	b label2889
.p2align 4
label440:
	mov r5, sp
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label437
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label447
	mov r6, r4
	cmp r9, #0
	bne label1570
	b label2607
.p2align 4
label2883:
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label447
	b label1610
.p2align 4
label2607:
	movw r4, #32767
	cmp r1, r4
	bgt label426
.p2align 4
label2893:
	ldr r4, [sp, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1558
	b label1557
.p2align 4
label447:
	and r5, r6, r8
	ands r5, r5, #1
	bne label448
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label447
	mov r6, r4
	movs r7, r9
	bne label1570
	b label2607
.p2align 4
label1610:
	mov r6, r4
	movs r7, r9
	bne label1570
	b label2607
.p2align 4
label451:
	ands r5, r10, #1
	bne label455
	ands r5, r8, #1
	bne label456
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label451
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label437
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1610
.p2align 4
label455:
	ands r5, r8, #1
	beq label456
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label451
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label437
	b label2901
.p2align 4
label456:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label451
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label437
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r8, r9, r5
	mov r7, r9
	b label1610
.p2align 4
label2901:
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label447
	b label1610
.p2align 4
label448:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label447
	mov r6, r4
	movs r7, r9
	bne label1570
	movw r4, #32767
	cmp r1, r4
	ble label2893
.p2align 4
label426:
	ldr r4, [sp, #4]
	sdiv r1, r1, r4
	ldr r4, [sp, #60]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label1558
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1721
	movw r2, #32767
	cmp r0, r2
	bgt label502
	b label2629
.p2align 4
label1647:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label465
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label486
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label482
	b label1681
.p2align 4
label465:
	ands r5, r10, #1
	bne label468
	ands r5, r8, #1
	bne label470
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label465
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label486
	b label2909
.p2align 4
label468:
	ands r5, r8, #1
	beq label470
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label465
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label486
	b label2907
.p2align 4
label2909:
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label482
.p2align 4
label1681:
	mov r6, r3
	movs r7, r8
	bne label1647
.p2align 4
label2623:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1570
.p2align 4
label2912:
	movw r4, #32767
	cmp r1, r4
	bgt label426
	b label2599
.p2align 4
label482:
	and r5, r6, r9
	ands r5, r5, #1
	bne label485
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label482
	mov r6, r3
	movs r7, r8
	bne label1647
	b label2623
.p2align 4
label485:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label482
	mov r6, r3
	movs r7, r8
	bne label1647
	mov r6, r4
	movs r7, r4
	bne label1570
	b label2912
.p2align 4
label470:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label465
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label486
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label482
	b label1681
.p2align 4
label2907:
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label482
	b label1681
.p2align 4
label2911:
	mov r6, r3
	movs r7, r8
	bne label1647
	b label2623
.p2align 4
label486:
	and r5, r7, r6
	ands r5, r5, #1
	bne label487
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label486
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label482
	b label2911
.p2align 4
label487:
	mov r5, sp
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label486
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label482
	mov r6, r3
	cmp r8, #0
	bne label1647
	b label2623
.p2align 4
label2528:
	mov r0, #0
	b label392
label199:
	ldr r0, [sp, #68]
	cmp r0, #16
	blt label1159
	b label2528
.p2align 4
label1162:
	mov r5, sp
	ldr r0, [sp, #68]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	bne label1529
label2529:
	ldr r0, [sp, #68]
	add r0, r0, #1
	str r0, [sp, #68]
	b label199
.p2align 4
label1348:
	movw r2, #32767
	cmp r0, r2
	bgt label307
.p2align 4
label2557:
	ldr r2, [sp, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	b label1162
.p2align 4
label307:
	ldr r2, [sp, #4]
	sdiv r0, r0, r2
	ldr r2, [sp, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1163
	mov r5, sp
	ldr r0, [sp, #68]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	bne label1529
	b label2529
.p2align 4
label2862:
	mov r6, r4
	movs r7, r8
	bne label1449
	b label2583
.p2align 4
label370:
	and r5, r7, r6
	ands r5, r5, #1
	bne label373
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label370
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label380
	b label2862
.p2align 4
label373:
	mov r5, sp
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label370
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label380
	mov r6, r4
	cmp r8, #0
	bne label1449
.p2align 4
label2583:
	movw r4, #32767
	cmp r2, r4
	bgt label358
.p2align 4
label2866:
	ldr r4, [sp, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	b label1348
label392:
	add sp, sp, #72
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.p2align 4
label2846:
	movw r4, #32767
	cmp r2, r4
	bgt label358
	b label2575
.p2align 4
label342:
	and r5, r6, r9
	ands r5, r5, #1
	bne label345
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label342
	mov r6, r3
	movs r7, r8
	bne label1386
	b label2567
.p2align 4
label345:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label342
	mov r6, r3
	movs r7, r8
	bne label1386
	mov r6, r4
	movs r7, r4
	bne label1449
	b label2846
.p2align 4
label358:
	ldr r4, [sp, #4]
	sdiv r2, r2, r4
	ldr r4, [sp, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	ldr r2, [sp, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1163
	b label1162
.p2align 4
label2561:
	mov r6, r4
	movs r7, r4
	bne label1449
	b label1448
.p2align 4
label314:
	and r5, r5, r6
	ands r5, r5, #1
	bne label315
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label314
	cmp r8, #0
	beq label2561
.p2align 4
label1382:
	mov r6, r3
	movs r7, r4
	bne label1386
	mov r6, r4
	movw r4, #32767
	cmp r2, r4
	bgt label358
	b label2575
.p2align 4
label1448:
	movw r4, #32767
	cmp r2, r4
	bgt label358
.p2align 4
label2575:
	ldr r4, [sp, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1349
	b label1348
.p2align 4
label1449:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label384
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label370
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	bge label1489
.p2align 4
label380:
	and r5, r6, r9
	ands r5, r5, #1
	bne label381
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label380
	mov r6, r4
	movs r7, r8
	bne label1449
	b label2583
.p2align 4
label1489:
	mov r6, r4
	movs r7, r8
	bne label1449
	b label2583
.p2align 4
label2869:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label370
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label380
	b label1489
.p2align 4
label389:
	ands r5, r8, #1
	beq label388
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label384
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label370
	b label2874
.p2align 4
label381:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label380
	mov r6, r4
	movs r7, r8
	bne label1449
	movw r4, #32767
	cmp r2, r4
	bgt label358
	b label2866
.p2align 4
label384:
	ands r5, r10, #1
	bne label389
	ands r5, r8, #1
	bne label388
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label384
	b label2869
.p2align 4
label388:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label384
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label370
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label380
	b label1489
.p2align 4
label2874:
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label380
	b label1489
.p2align 4
label2881:
	movw r2, #32767
	cmp r0, r2
	bgt label502
	b label2629
.p2align 4
label405:
	mov r5, sp
	ldr r5, [r5, r4, lsl #2]
	add r6, r6, r5
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label404
	cmp r6, #0
	bne label1554
	movs r4, r2
	mov r3, #0
	bne label1721
.p2align 4
label1720:
	movw r2, #32767
	cmp r0, r2
	bgt label502
.p2align 4
label2629:
	ldr r2, [sp, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1534
	b label398
.p2align 4
label690:
	mov r5, sp
	ldr r5, [r5, r6, lsl #2]
	add r7, r7, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label689
	cmp r7, #0
	bne label2102
	mov r6, r4
	movs r7, r4
	bne label2106
.p2align 4
label2105:
	movw r4, #32767
	cmp r2, r4
	bgt label700
.p2align 4
label2698:
	ldr r4, [sp, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2069
	b label2068
.p2align 4
label509:
	mov r5, sp
	ldr r5, [r5, r6, lsl #2]
	add r7, r7, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label508
	cmp r7, #0
	bne label1754
	mov r6, r4
	movs r7, r4
	bne label1758
	b label1757
.p2align 4
label1015:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label154
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label150
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r7, r8
.p2align 4
label1029:
	mov r6, r4
	movs r7, r8
	bne label1015
	b label2510
.p2align 4
label146:
	and r5, r6, r9
	ands r5, r5, #1
	bne label149
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label146
	mov r6, r4
	movs r7, r8
	bne label1015
	b label2510
.p2align 4
label149:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label146
	mov r6, r4
	movs r7, r8
	bne label1015
	movw r4, #32767
	cmp r2, r4
	bgt label162
	b label2766
.p2align 4
label154:
	ands r5, r10, #1
	bne label158
	ands r5, r8, #1
	bne label155
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label154
	b label2772
.p2align 4
label155:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label154
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label150
	b label2774
.p2align 4
label162:
	ldr r4, [sp, #4]
	sdiv r2, r2, r4
	ldr r4, [sp, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label978
	movw r2, #32767
	cmp r0, r2
	bgt label113
	ldr r2, [sp, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label792
	b label196
.p2align 4
label2772:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label150
	b label2777
.p2align 4
label158:
	ands r5, r8, #1
	beq label155
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label154
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label150
	b label2775
.p2align 4
label2777:
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label146
	b label1029
.p2align 4
label151:
	mov r5, sp
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label150
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label146
	mov r6, r4
	cmp r8, #0
	bne label1015
	b label2510
.p2align 4
label2775:
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label146
	b label1029
.p2align 4
label2774:
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label146
	b label1029
.p2align 4
label3011:
	mov r6, r4
	movs r7, r9
	bne label2106
	b label2705
.p2align 4
label722:
	and r5, r7, r9
	ands r5, r5, #1
	bne label723
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label722
	ldr r5, [sp, #4]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label718
	b label3011
.p2align 4
label2123:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label722
	b label2702
.p2align 4
label726:
	ands r5, r10, #1
	bne label727
	ands r5, r8, #1
	bne label728
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label726
	b label2123
.p2align 4
label727:
	ands r5, r8, #1
	beq label728
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label726
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label722
.p2align 4
label2702:
	ldr r5, [sp, #4]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label718
	b label2134
.p2align 4
label3006:
	ldr r5, [sp, #4]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	bge label2134
.p2align 4
label718:
	and r5, r6, r8
	ands r5, r5, #1
	bne label719
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label718
	mov r6, r4
	movs r7, r9
	bne label2106
	b label2705
.p2align 4
label728:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label726
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label722
	b label2702
.p2align 4
label2134:
	mov r6, r4
	movs r7, r9
	bne label2106
	b label2705
.p2align 4
label719:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label718
	mov r6, r4
	movs r7, r9
	bne label2106
	movw r4, #32767
	cmp r2, r4
	bgt label700
	b label3012
.p2align 4
label1386:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label346
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label332
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label342
	b label1412
.p2align 4
label2842:
	mov r6, r3
	movs r7, r8
	bne label1386
	b label2567
.p2align 4
label332:
	and r5, r7, r6
	ands r5, r5, #1
	bne label335
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label332
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label342
	b label2842
.p2align 4
label335:
	mov r5, sp
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label332
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label342
	mov r6, r3
	cmp r8, #0
	bne label1386
.p2align 4
label2567:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1449
	b label2846
.p2align 4
label346:
	ands r5, r10, #1
	bne label351
	ands r5, r8, #1
	bne label347
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label346
	b label2850
.p2align 4
label1194:
	mov r6, r3
	movs r7, r4
	bne label1275
	mov r6, r4
.p2align 4
label1197:
	movw r4, #32767
	cmp r1, r4
	bgt label261
.p2align 4
label2535:
	ldr r4, [sp, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	b label1185
.p2align 4
label297:
	mov r5, sp
	ldr r5, [r5, r6, lsl #2]
	add r7, r7, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label296
	cmp r7, #0
	bne label1194
	mov r6, r4
	movs r7, r4
	bne label1198
	b label1197
.p2align 4
label1185:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	b label2797
.p2align 4
label2543:
	movw r4, #32767
	cmp r1, r4
	bgt label261
.p2align 4
label2810:
	ldr r4, [sp, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1186
	b label1185
.p2align 4
label256:
	and r5, r6, r9
	ands r5, r5, #1
	bne label257
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label256
	mov r6, r4
	movs r7, r8
	bne label1198
	b label2543
.p2align 4
label1349:
	mov r5, #1
	mov r6, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label314
	cmp r8, #0
	bne label1382
	mov r6, r4
	movs r7, r4
	bne label1449
	b label1448
.p2align 4
label1412:
	mov r6, r3
	movs r7, r8
	bne label1386
	b label2567
.p2align 4
label2852:
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label342
	b label1412
.p2align 4
label347:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label346
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label332
	b label2852
.p2align 4
label2855:
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label342
	b label1412
.p2align 4
label2850:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label332
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label342
	b label1412
.p2align 4
label351:
	ands r5, r8, #1
	beq label347
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label346
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label332
	b label2855
.p2align 4
label1198:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	blt label235
	b label1201
.p2align 4
label2536:
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label256
.p2align 4
label1244:
	mov r6, r4
	movs r7, r8
	bne label1198
	b label2543
.p2align 4
label235:
	ands r5, r10, #1
	bne label237
	ands r5, r8, #1
	bne label236
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label235
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label246
	b label2804
.p2align 4
label236:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label235
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label246
	b label2536
.p2align 4
label237:
	ands r5, r8, #1
	beq label236
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label235
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label246
	b label2536
.p2align 4
label2804:
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label256
	b label1244
.p2align 4
label1201:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label246
	b label2536
.p2align 4
label257:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label256
	mov r6, r4
	movs r7, r8
	bne label1198
	movw r4, #32767
	cmp r1, r4
	bgt label261
	b label2810
.p2align 4
label2806:
	mov r6, r4
	movs r7, r8
	bne label1198
	b label2543
.p2align 4
label246:
	and r5, r7, r6
	ands r5, r5, #1
	bne label249
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label246
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label256
	b label2806
.p2align 4
label249:
	mov r5, sp
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label246
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label256
	mov r6, r4
	cmp r8, #0
	bne label1198
	b label2543
.p2align 4
label1721:
	mov r7, #0
	mov r5, #1
	mov r8, r2
	mov r6, r7
	cmp r7, #16
	blt label508
	cmp r7, #0
	bne label1754
	mov r6, r4
	movs r7, r4
	bne label1758
	b label1757
.p2align 4
label502:
	ldr r2, [sp, #4]
	sdiv r0, r0, r2
	ldr r2, [sp, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1534
	b label398
.p2align 4
label1092:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label171
	b label1095
.p2align 4
label2525:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1015
	b label2789
.p2align 4
label188:
	and r5, r6, r8
	ands r5, r5, #1
	bne label189
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label188
	mov r6, r3
	movs r7, r9
	bne label1092
	b label2525
.p2align 4
label2789:
	movw r4, #32767
	cmp r2, r4
	bgt label162
	b label2506
.p2align 4
label189:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label188
	mov r6, r3
	movs r7, r9
	bne label1092
	mov r6, r4
	movs r7, r4
	bne label1015
	b label2789
.p2align 4
label1095:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label192
	b label2521
.p2align 4
label171:
	ands r5, r10, #1
	bne label172
	ands r5, r8, #1
	bne label174
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label171
	b label1095
.p2align 4
label172:
	ands r5, r8, #1
	beq label174
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label171
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label192
	b label2521
.p2align 4
label67:
	ldr r4, [sp, #4]
	sdiv r1, r1, r4
	ldr r4, [sp, #60]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label815
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label978
	movw r2, #32767
	cmp r0, r2
	bgt label113
	b label2498
.p2align 4
label2753:
	movw r4, #32767
	cmp r1, r4
	bgt label67
	b label2475
.p2align 4
label99:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label98
	mov r6, r3
	movs r7, r9
	bne label904
	mov r6, r4
	movs r7, r4
	bne label827
	b label2753
.p2align 4
label814:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label978
	b label2724
.p2align 4
label826:
	movw r4, #32767
	cmp r1, r4
	bgt label67
.p2align 4
label2475:
	ldr r4, [sp, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	b label814
.p2align 4
label103:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label102
	cmp r8, #0
	bne label823
	mov r6, r4
	movs r7, r4
	bne label827
	b label826
.p2align 4
label700:
	ldr r4, [sp, #4]
	sdiv r2, r2, r4
	ldr r4, [sp, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label2069
	movw r2, #32767
	cmp r0, r2
	bgt label683
	ldr r2, [sp, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label6
.p2align 4
label2183:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label740
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label761
	b label2710
.p2align 4
label3028:
	mov r6, r3
	movs r7, r8
	bne label2183
.p2align 4
label2716:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label2106
	b label3029
.p2align 4
label761:
	and r5, r7, r6
	ands r5, r5, #1
	bne label762
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label761
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label757
	b label3028
.p2align 4
label3029:
	movw r4, #32767
	cmp r2, r4
	bgt label700
	b label2698
.p2align 4
label758:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label757
	mov r6, r3
	movs r7, r8
	bne label2183
	mov r6, r4
	movs r7, r4
	bne label2106
	b label3029
.p2align 4
label740:
	ands r5, r10, #1
	bne label741
	ands r5, r8, #1
	bne label745
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label740
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label761
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label757
	b label2217
.p2align 4
label2006:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label669
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label655
	b label2683
.p2align 4
label2992:
	movw r4, #32767
	cmp r1, r4
	bgt label611
	b label2669
.p2align 4
label666:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label665
	mov r6, r3
	movs r7, r8
	bne label2006
	mov r6, r4
	movs r7, r4
	bne label1929
	b label2992
.p2align 4
label669:
	ands r5, r10, #1
	bne label670
	ands r5, r8, #1
	bne label671
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label669
	b label2995
.p2align 4
label1561:
	cmp r7, #0
	bne label1566
	b label2596
.p2align 4
label2787:
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label188
.p2align 4
label1126:
	mov r6, r3
	movs r7, r9
	bne label1092
	b label2525
.p2align 4
label2788:
	mov r6, r3
	movs r7, r9
	bne label1092
	b label2525
.p2align 4
label192:
	and r5, r7, r6
	ands r5, r5, #1
	bne label193
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label192
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label188
	b label2788
.p2align 4
label2521:
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label188
	b label1126
.p2align 4
label174:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label171
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label192
	b label2787
.p2align 4
label193:
	mov r5, sp
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label192
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label188
	mov r6, r3
	cmp r9, #0
	bne label1092
	b label2525
.p2align 4
label827:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	b label36
.p2align 4
label56:
	and r5, r6, r9
	ands r5, r5, #1
	bne label59
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label56
	mov r6, r4
	movs r7, r8
	bne label827
	b label2480
.p2align 4
label59:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label56
	mov r6, r4
	movs r7, r8
	bne label827
	movw r4, #32767
	cmp r1, r4
	bgt label67
	b label2731
.p2align 4
label2727:
	mov r6, r4
	movs r7, r8
	bne label827
	b label2480
.p2align 4
label46:
	and r5, r7, r6
	ands r5, r5, #1
	bne label49
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label46
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label56
	b label2727
.p2align 4
label49:
	mov r5, sp
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label46
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label56
	mov r6, r4
	cmp r8, #0
	bne label827
.p2align 4
label2480:
	movw r4, #32767
	cmp r1, r4
	bgt label67
.p2align 4
label2731:
	ldr r4, [sp, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label815
	b label814
.p2align 4
label36:
	cmp r9, #16
	blt label60
.p2align 4
label830:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label46
	b label2476
.p2align 4
label60:
	ands r5, r10, #1
	bne label61
	ands r5, r8, #1
	bne label65
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label60
	b label830
.p2align 4
label61:
	ands r5, r8, #1
	beq label65
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label60
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label46
.p2align 4
label2476:
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label56
.p2align 4
label853:
	mov r6, r4
	movs r7, r8
	bne label827
	b label2480
.p2align 4
label65:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label60
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label46
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label56
	b label853
.p2align 4
label2710:
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label757
	b label2217
.p2align 4
label741:
	ands r5, r8, #1
	beq label745
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label740
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label761
	b label2710
.p2align 4
label2217:
	mov r6, r3
	movs r7, r8
	bne label2183
	b label2716
.p2align 4
label757:
	and r5, r6, r9
	ands r5, r5, #1
	bne label758
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label757
	mov r6, r3
	movs r7, r8
	bne label2183
	b label2716
.p2align 4
label762:
	mov r5, sp
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label761
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label757
	mov r6, r3
	cmp r8, #0
	bne label2183
	b label2716
.p2align 4
label745:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label740
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label761
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label757
	b label2217
.p2align 4
label1929:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	blt label617
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label628
	b label2968
.p2align 4
label611:
	ldr r4, [sp, #4]
	sdiv r1, r1, r4
	ldr r4, [sp, #60]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label1906
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2069
	movw r2, #32767
	cmp r0, r2
	bgt label683
	b label2691
.p2align 4
label639:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label638
	mov r6, r4
	movs r7, r8
	bne label1929
	movw r4, #32767
	cmp r1, r4
	bgt label611
	b label2984
.p2align 4
label2968:
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label638
	b label1989
.p2align 4
label2681:
	movw r4, #32767
	cmp r1, r4
	bgt label611
.p2align 4
label2984:
	ldr r4, [sp, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1906
	b label1905
.p2align 4
label638:
	and r5, r6, r9
	ands r5, r5, #1
	bne label639
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label638
	mov r6, r4
	movs r7, r8
	bne label1929
	b label2681
.p2align 4
label617:
	ands r5, r10, #1
	bne label622
	ands r5, r8, #1
	bne label618
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label617
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label628
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r7, r8
	b label1989
.p2align 4
label622:
	ands r5, r8, #1
	beq label618
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label617
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label628
	b label2978
.p2align 4
label1989:
	mov r6, r4
	movs r7, r8
	bne label1929
	b label2681
.p2align 4
label2980:
	mov r6, r4
	movs r7, r8
	bne label1929
	b label2681
.p2align 4
label628:
	and r5, r7, r9
	ands r5, r5, #1
	bne label631
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label628
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label638
	b label2980
.p2align 4
label631:
	mov r5, sp
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label628
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label638
	mov r6, r4
	cmp r8, #0
	bne label1929
	b label2681
.p2align 4
label2978:
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label638
	b label1989
.p2align 4
label261:
	ldr r4, [sp, #4]
	sdiv r1, r1, r4
	ldr r4, [sp, #60]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label1186
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1349
	movw r2, #32767
	cmp r0, r2
	bgt label307
	b label2557
.p2align 4
label1275:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	b label266
.p2align 4
label2551:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1198
	b label2822
.p2align 4
label286:
	and r5, r6, r9
	ands r5, r5, #1
	bne label289
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label286
	mov r6, r3
	movs r7, r8
	bne label1275
	b label2551
.p2align 4
label289:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label286
	mov r6, r3
	movs r7, r8
	bne label1275
	mov r6, r4
	movs r7, r4
	bne label1198
.p2align 4
label2822:
	movw r4, #32767
	cmp r1, r4
	bgt label261
	b label2535
.p2align 4
label2818:
	mov r6, r3
	movs r7, r8
	bne label1275
	b label2551
.p2align 4
label276:
	and r5, r7, r6
	ands r5, r5, #1
	bne label279
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label276
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label286
	b label2818
.p2align 4
label279:
	mov r5, sp
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label276
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label286
	mov r6, r3
	cmp r8, #0
	bne label1275
	b label2551
.p2align 4
label2547:
	ldr r5, [sp, #4]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	mul r9, r9, r5
	cmp r8, #16
	blt label286
	mov r6, r3
	cmp r8, #0
	bne label1275
	b label2551
.p2align 4
label266:
	cmp r9, #16
	blt label290
.p2align 4
label1278:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label276
	b label2547
.p2align 4
label290:
	ands r5, r10, #1
	bne label291
	ands r5, r8, #1
	bne label292
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label290
	b label1278
.p2align 4
label291:
	ands r5, r8, #1
	beq label292
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label290
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label276
	b label2547
.p2align 4
label292:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label290
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label276
	b label2547
.p2align 4
label904:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label77
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label88
	b label2488
.p2align 4
label2750:
	mov r6, r3
	movs r7, r9
	bne label904
	b label2495
.p2align 4
label88:
	and r5, r7, r9
	ands r5, r5, #1
	bne label89
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label88
	ldr r5, [sp, #4]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label98
	b label2750
.p2align 4
label2495:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label827
	b label2753
.p2align 4
label2488:
	ldr r5, [sp, #4]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label98
	b label950
.p2align 4
label77:
	ands r5, r10, #1
	bne label78
	ands r5, r8, #1
	bne label81
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label77
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label88
	b label2748
.p2align 4
label78:
	ands r5, r8, #1
	beq label81
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label77
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label88
	b label2488
.p2align 4
label81:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label77
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label88
	ldr r5, [sp, #4]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label98
	b label950
.p2align 4
label2748:
	ldr r5, [sp, #4]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label98
	b label950
.p2align 4
label2989:
	mov r6, r3
	movs r7, r8
	bne label2006
	b label2686
.p2align 4
label655:
	and r5, r7, r9
	ands r5, r5, #1
	bne label656
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label655
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label665
	b label2989
.p2align 4
label2686:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1929
	b label2992
.p2align 4
label950:
	mov r6, r3
	movs r7, r9
	bne label904
	b label2495
.p2align 4
label98:
	and r5, r6, r8
	ands r5, r5, #1
	bne label99
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label98
	mov r6, r3
	movs r7, r9
	bne label904
	b label2495
.p2align 4
label89:
	mov r5, sp
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label88
	ldr r5, [sp, #4]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	mul r8, r8, r5
	cmp r9, #16
	blt label98
	mov r6, r3
	cmp r9, #0
	bne label904
	b label2495
.p2align 4
label2683:
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label665
.p2align 4
label2032:
	mov r6, r3
	movs r7, r8
	bne label2006
	b label2686
.p2align 4
label2995:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label655
	b label2998
.p2align 4
label670:
	ands r5, r8, #1
	beq label671
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label669
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label655
	b label2683
.p2align 4
label2998:
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	bge label2032
.p2align 4
label665:
	and r5, r6, r9
	ands r5, r5, #1
	bne label666
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label665
	mov r6, r3
	movs r7, r8
	bne label2006
	b label2686
.p2align 4
label671:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label669
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label655
	b label2997
.p2align 4
label656:
	mov r5, sp
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label655
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label665
	mov r6, r3
	cmp r8, #0
	bne label2006
	b label2686
.p2align 4
label2997:
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label665
	b label2032
.p2align 4
label618:
	mov r5, sp
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label617
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label628
	ldr r5, [sp, #4]
	movw r6, #65535
	mul r9, r8, r5
	mov r7, r8
	b label1989
.p2align 4
label2797:
	movw r2, #32767
	cmp r0, r2
	bgt label307
	b label2557
.p2align 4
label315:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label314
	cmp r8, #0
	bne label1382
	mov r6, r4
	movs r7, r4
	bne label1449
	b label1448
.p2align 4
label2964:
	movw r2, #32767
	cmp r0, r2
	bgt label683
	b label2691
.p2align 4
label2502:
	mov r6, r4
	movs r7, r4
	bne label1015
	b label1014
.p2align 4
label120:
	and r5, r5, r6
	ands r5, r5, #1
	bne label123
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label120
	cmp r8, #0
	bne label1011
	b label2502
.p2align 4
label123:
	mov r5, sp
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label120
	cmp r8, #0
	bne label1011
	mov r6, r4
	movs r7, r4
	bne label1015
	b label1014
.p2align 4
label2695:
	mov r6, r4
	movs r7, r4
	bne label2106
	b label2105
.p2align 4
label689:
	and r5, r5, r8
	ands r5, r5, #1
	bne label690
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label689
	cmp r7, #0
	beq label2695
.p2align 4
label2102:
	mov r6, r3
	movs r7, r4
	bne label2183
	mov r6, r4
	b label2105
.p2align 4
label1189:
	cmp r7, #0
	bne label1194
	b label2532
.p2align 4
label683:
	ldr r2, [sp, #4]
	sdiv r0, r0, r2
	ldr r2, [sp, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label788
	b label6
.p2align 4
label818:
	cmp r8, #0
	beq label2472
.p2align 4
label823:
	mov r6, r3
	movs r7, r4
	bne label904
	mov r6, r4
	b label826
.p2align 4
label17:
	mov r5, sp
	ldr r5, [r5, r3, lsl #2]
	add r4, r4, r5
	add r5, r6, r6, lsr #31
	add r3, r3, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label16
	cmp r4, #0
	bne label811
	movs r4, r2
	mov r3, #0
	bne label978
	b label977
.p2align 4
label811:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	beq label814
.p2align 4
label815:
	mov r5, #1
	mov r6, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label102
	b label818
.p2align 4
label2472:
	mov r6, r4
	movs r7, r4
	bne label827
	b label826
.p2align 4
label102:
	and r5, r5, r6
	ands r5, r5, #1
	bne label103
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label102
	cmp r8, #0
	bne label823
	b label2472
.p2align 4
label600:
	mov r5, sp
	ldr r5, [r5, r6, lsl #2]
	add r7, r7, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label599
	cmp r7, #0
	bne label1925
	mov r6, r4
	movs r7, r4
	bne label1929
	b label1928
.p2align 4
label211:
	mov r5, sp
	ldr r5, [r5, r4, lsl #2]
	add r6, r6, r5
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label210
	cmp r6, #0
	bne label1182
	movs r4, r2
	mov r3, #0
	bne label1349
	b label1348
.p2align 4
label1897:
	cmp r6, #0
	bne label1902
	b label2664
label1529:
	mov r0, #1
	b label392
