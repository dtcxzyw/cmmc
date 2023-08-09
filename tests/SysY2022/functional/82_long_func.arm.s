.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r4, #0
	mov r2, #1
	mov r0, #4
	mov r1, #2
	sub sp, sp, #96
	str r2, [sp, #32]
	str r1, [sp, #36]
	str r0, [sp, #40]
	mov r0, #8
	str r0, [sp, #44]
	mov r0, #16
	str r0, [sp, #48]
	mov r0, #32
	str r0, [sp, #52]
	mov r0, #64
	str r0, [sp, #56]
	mov r0, #128
	str r0, [sp, #60]
	mov r0, #256
	str r0, [sp, #64]
	mov r0, #512
	str r0, [sp, #68]
	mov r0, #1024
	str r0, [sp, #72]
	mov r0, #2048
	str r0, [sp, #76]
	mov r0, #4096
	str r0, [sp, #80]
	mov r0, #8192
	str r0, [sp, #84]
	mov r0, #16384
	str r0, [sp, #88]
	mov r0, #32768
	str r0, [sp, #92]
	str r4, [sp, #12]
	mov r0, r2
	cmp r4, #0
	bgt label664
	b label6
label2626:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2815
label718:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	beq label2626
label715:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label718
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label2814
label726:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label729
	mov r6, r2
	cmp r4, #0
	bne label695
	movs r4, r3
	mov r6, r3
	beq label2817
label735:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label742
	ands r10, r4, #1
	beq label2631
label769:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	bge label2639
label745:
	add r5, r5, #4
	ands r10, r9, #1
	beq label2632
label742:
	ands r10, r7, #1
	beq label769
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label745
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label753
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label767
label2633:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	beq label763
label766:
	ldr r9, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r4, r9
	bge label2636
label765:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	bne label766
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label765
	mov r6, r3
	cmp r4, #0
	bne label735
label2634:
	movw r3, #32767
	cmp r1, r3
	ble label2822
label771:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	bne label681
	movw r1, #32767
	ldr r4, [sp, #12]
	cmp r4, r1
	ble label2829
label776:
	ldr r1, [sp, #36]
	ldr r4, [sp, #12]
	ldr r2, [sp, #92]
	sdiv r1, r4, r1
	add r1, r1, #65536
	subs r4, r1, r2
	str r4, [sp, #12]
	mov r1, r6
	ble label6
label664:
	add r5, sp, #32
	mov r3, #0
	ldr r4, [sp, #12]
	mov r2, #1
	mov r6, r3
	and r2, r4, r2
	ands r2, r2, #1
	beq label1958
label874:
	ldr r2, [r5, #0]
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	add r2, r6, r2
	blt label673
	cmp r2, #0
	bne label1970
	movs r3, r1
	mov r6, #0
	bne label681
	b label1973
label2636:
	mov r6, r3
	cmp r4, #0
	bne label735
	movw r3, #32767
	cmp r1, r3
	bgt label771
label2822:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label681
label1973:
	movw r1, #32767
	ldr r4, [sp, #12]
	cmp r4, r1
	bgt label776
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #12]
	bgt label664
	b label6
label2632:
	ands r10, r7, #1
	bne label769
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label745
label2819:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	beq label2826
label753:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label767
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label766
label763:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label765
	mov r6, r3
	cmp r4, #0
	bne label735
	b label2634
label2829:
	ldr r1, [sp, #36]
	ldr r4, [sp, #12]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #12]
	bgt label664
label6:
	bl putint
	mov r0, #10
	bl putch
	mov r2, #1
	mov r1, #2
	str r2, [sp, #8]
	mov r3, r2
	movs r0, r2
	bgt label11
	b label222
label2491:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label163
label1135:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2493
label177:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2497
label163:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label177
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label1152
label173:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label1161
label176:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label173
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label176
	mov r6, r3
	cmp r4, #0
	bne label144
label2702:
	movw r3, #32767
	cmp r1, r3
	bgt label143
label2703:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label125
label2488:
	movw r1, #32767
	ldr r3, [sp, #8]
	cmp r3, r1
	ble label2699
label219:
	ldr r1, [sp, #36]
	ldr r3, [sp, #8]
	ldr r2, [sp, #92]
	sdiv r1, r3, r1
	add r1, r1, #65536
	subs r3, r1, r2
	str r3, [sp, #8]
	mov r1, r6
	bgt label11
label222:
	bl putint
	mov r0, #10
	bl putch
	mov r1, #2
	str r1, [sp, #24]
	mov r4, r1
	cmp r1, #16
	blt label1246
	b label1245
label2576:
	mov r6, r3
	cmp r4, #0
	bne label490
	movw r3, #32767
	cmp r1, r3
	bgt label489
label2773:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label472
label2569:
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label471
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #0]
	bgt label452
label663:
	bl putint
	mov r0, #10
	bl putch
	ldr r4, [sp, #24]
	add r4, r4, #1
	cmp r4, #16
	str r4, [sp, #24]
	bge label1245
label1246:
	mov r1, #2
	mov r2, #1
	ldr r4, [sp, #24]
	mov r0, r2
	cmp r4, #0
	str r4, [sp, #0]
	bgt label452
	b label663
label2589:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label563
	cmp r2, #0
	beq label1657
label1658:
	movs r4, r3
	bne label528
	mov r2, r6
	mov r6, r3
	beq label487
label490:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label524
	ands r10, r4, #1
	beq label1683
label498:
	ldr r10, [r5, #0]
	add r3, r3, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label501
label523:
	add r5, r5, #4
	ands r10, r9, #1
	bne label524
	ands r10, r7, #1
	bne label498
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label523
label2571:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label1697
label508:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label511
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label522
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label521
label1722:
	mov r6, r3
	cmp r4, #0
	bne label490
	b label2574
label2781:
	mov r6, r2
	cmp r4, #0
	bne label528
label2779:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label490
label2780:
	movw r3, #32767
	cmp r1, r3
	ble label488
label489:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	beq label2570
label472:
	add r5, sp, #32
	mov r7, #0
	mov r4, r1
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r1, r8
	ands r8, r8, #1
	bne label564
	add r7, r7, #1
	add r4, r1, r1, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	bge label481
label563:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	beq label2589
label564:
	ldr r8, [r5, #0]
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	add r2, r2, r8
	blt label563
	cmp r2, #0
	bne label1658
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label490
label2768:
	movw r3, #32767
	cmp r1, r3
	bgt label489
label488:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label472
	b label2569
label481:
	cmp r2, #0
	bne label1658
	b label1657
label487:
	movw r3, #32767
	cmp r1, r3
	bgt label489
	b label488
label1697:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label511
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label522
label519:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label521
	b label1722
label501:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label508
	b label1697
label2570:
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label471
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #0]
	ble label663
label452:
	add r5, sp, #32
	mov r3, #0
	ldr r4, [sp, #0]
	mov r2, #1
	mov r6, r3
	and r2, r4, r2
	ands r2, r2, #1
	bne label662
	mov r2, r3
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label461
label1619:
	cmp r2, #0
	bne label1625
	movs r3, r1
	mov r6, #0
	bne label472
label469:
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label471
label470:
	ldr r1, [sp, #36]
	ldr r4, [sp, #0]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #0]
	bgt label452
	b label663
label2564:
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	bge label1619
label461:
	add r5, r5, #4
	mov r6, r2
	mov r2, #0
	and r2, r4, r2
	ands r2, r2, #1
	beq label2564
label662:
	ldr r2, [r5, #0]
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	add r2, r6, r2
	blt label461
	cmp r2, #0
	beq label2805
label1625:
	mov r3, r0
	mov r6, #0
	cmp r1, #0
	mov r0, r1
	bne label569
	mov r0, r6
	mov r3, r1
	b label469
label1073:
	movw r1, #32767
	ldr r3, [sp, #8]
	cmp r3, r1
	bgt label219
	ldr r1, [sp, #36]
	sdiv r3, r3, r1
	mov r1, r6
	cmp r3, #0
	str r3, [sp, #8]
	ble label222
label11:
	add r5, sp, #32
	mov r4, #0
	ldr r3, [sp, #8]
	mov r2, #1
	mov r6, r2
	mov r2, r4
	and r6, r3, r6
	ands r6, r6, #1
	beq label18
label221:
	ldr r6, [r5, #0]
	add r4, r4, #1
	add r3, r3, r3, lsr #31
	cmp r4, #16
	asr r3, r3, #1
	add r2, r2, r6
	blt label20
	cmp r2, #0
	bne label914
	movs r3, r1
	mov r6, #0
	bne label125
	b label1073
label2502:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2711
label211:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	beq label2502
label212:
	ldr r9, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label211
	mov r6, r2
	cmp r4, #0
	bne label182
	movs r4, r3
	mov r6, r3
	bne label144
label2710:
	movw r3, #32767
	cmp r1, r3
	bgt label143
label142:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	beq label2488
label125:
	add r5, sp, #32
	mov r4, #0
	mov r7, r1
	mov r2, #1
	mov r8, r4
	and r2, r1, r2
	ands r2, r2, #1
	bne label132
	mov r2, r4
	add r4, r4, #1
	add r7, r1, r1, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label217
	cmp r2, #0
	beq label2697
label1091:
	movs r4, r3
	beq label2487
label182:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	bne label215
	ands r10, r4, #1
	beq label2499
label189:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label214
	b label2708
label2715:
	cmp r2, #0
	bne label1091
label2697:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label144
label2698:
	movw r3, #32767
	cmp r1, r3
	bgt label143
	b label142
label215:
	ands r10, r7, #1
	beq label189
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2506
label214:
	add r5, r5, #4
	ands r10, r9, #1
	bne label215
	ands r10, r7, #1
	bne label189
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label214
label2708:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label1186
label213:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	bge label2504
label201:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label213
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label201
label1193:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label212
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label211
label1209:
	mov r6, r2
	cmp r4, #0
	bne label182
	b label2501
label2506:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label213
label1186:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label201
	b label1193
label2497:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label177
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label173
label1152:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label176
	mov r6, r3
	cmp r4, #0
	bne label144
	b label2702
label2711:
	mov r6, r2
	cmp r4, #0
	bne label182
label2501:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label144
	b label2710
label1958:
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	bge label1964
label673:
	add r5, r5, #4
	mov r6, r2
	mov r2, #0
	and r2, r4, r2
	ands r2, r2, #1
	bne label874
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label673
label1964:
	cmp r2, #0
	beq label2616
label1970:
	mov r3, r0
	mov r6, #0
	cmp r1, #0
	mov r0, r1
	beq label2618
label781:
	add r5, sp, #32
	mov r7, #0
	mov r4, r0
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r0, r8
	ands r8, r8, #1
	beq label2148
label788:
	ldr r8, [r5, #0]
	add r2, r2, r8
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label791
	cmp r2, #0
	bne label2162
	mov r2, r6
	movs r4, r3
	mov r6, r3
	beq label2165
label798:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r3, r9
	ands r10, r6, #1
	bne label831
	ands r10, r4, #1
	beq label2650
label832:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r3, r3, r10
	bge label2659
label807:
	add r5, r5, #4
	ands r10, r8, #1
	bne label831
	ands r10, r7, #1
	bne label832
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label807
label2835:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label815
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label829
	b label2652
label2816:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label735
label2817:
	movw r3, #32767
	cmp r1, r3
	bgt label771
label2630:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	beq label1973
label681:
	add r5, sp, #32
	mov r7, #0
	mov r4, r1
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r1, r8
	ands r8, r8, #1
	beq label1978
label688:
	ldr r8, [r5, #0]
	add r2, r2, r8
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	bge label691
label773:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	bne label688
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label773
	cmp r2, #0
	beq label2808
label1991:
	movs r4, r3
	bne label695
	mov r2, r6
	mov r6, r3
	movw r3, #32767
	cmp r1, r3
	bgt label771
	b label2630
label2808:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label735
label2809:
	movw r3, #32767
	cmp r1, r3
	bgt label771
	b label2630
label2814:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2627
label729:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label726
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label729
	mov r6, r2
	cmp r4, #0
	beq label2816
label695:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	bne label702
	ands r10, r4, #1
	beq label2621
label703:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r2, r2, r10
	blt label707
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label715
	b label2022
label2627:
	mov r6, r2
	cmp r4, #0
	bne label695
	b label2816
label2624:
	ands r10, r7, #1
	bne label703
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	bge label2811
label707:
	add r5, r5, #4
	ands r10, r8, #1
	beq label2624
label702:
	ands r10, r7, #1
	beq label703
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label707
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label715
label2022:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label718
	b label2625
label2811:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label715
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label718
label2625:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label726
label2040:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label729
	b label2627
label2826:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2633
label767:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label753
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label767
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label766
	b label763
label2652:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label825
label2199:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2653
label828:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label825
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label828
	mov r6, r3
	cmp r4, #0
	bne label798
label2838:
	movw r3, #32767
	cmp r0, r3
	bgt label834
label2839:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label781
	b label2143
label2665:
	ands r10, r7, #1
	beq label2850
label846:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r2, r2, r10
	bge label2663
label851:
	add r5, r5, #4
	ands r10, r8, #1
	beq label2665
label848:
	ands r10, r7, #1
	beq label846
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label851
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label859
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label862
label2666:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label870
label2285:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2668
label873:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label870
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label873
	mov r6, r2
	cmp r4, #0
	bne label839
label2853:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label798
label2854:
	movw r3, #32767
	cmp r0, r3
	bgt label834
label2649:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label781
label2143:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label681
	b label1973
label2148:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label791
	cmp r2, #0
	beq label2832
label2162:
	movs r4, r3
	beq label2832
label839:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	bne label848
	ands r10, r4, #1
	bne label846
	add r9, r9, #1
	add r8, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label851
	b label2848
label2833:
	cmp r2, #0
	bne label2162
label2832:
	mov r2, r6
	mov r4, r3
	movs r6, r3
	bne label798
	b label2165
label2850:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label851
label2848:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	mov r4, r8
	and r9, r7, r6
	ands r9, r9, #1
	beq label2267
label859:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2276
label862:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label859
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label862
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label870
	b label2285
label2663:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label859
label2267:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label862
	b label2666
label2276:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label870
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label873
label2668:
	mov r6, r2
	cmp r4, #0
	bne label839
	b label2853
label870:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label873
	mov r6, r2
	cmp r4, #0
	bne label839
	movs r4, r3
	mov r6, r3
	bne label798
	b label2854
label2165:
	movw r3, #32767
	cmp r0, r3
	ble label2649
label834:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label781
	mov r0, r2
	movs r3, r1
	mov r6, #0
	bne label681
	b label1973
label831:
	ands r10, r7, #1
	beq label832
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label807
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label815
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2652
label829:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2656
label815:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label829
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label2199
label825:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label828
	mov r6, r3
	cmp r4, #0
	bne label798
	movw r3, #32767
	cmp r0, r3
	bgt label834
	b label2839
label1864:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2596
label616:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	bne label613
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label616
	mov r6, r3
	cmp r4, #0
	bne label587
label2791:
	movw r3, #32767
	cmp r0, r3
	bgt label586
label2792:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	beq label2592
label569:
	add r5, sp, #32
	mov r7, #0
	mov r4, r0
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r0, r8
	ands r8, r8, #1
	beq label576
label661:
	ldr r8, [r5, #0]
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	add r2, r2, r8
	blt label660
	cmp r2, #0
	bne label1814
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label587
label2787:
	movw r3, #32767
	cmp r0, r3
	bgt label586
label585:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label569
	b label2592
label576:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label660
	cmp r2, #0
	beq label1813
label1814:
	movs r4, r3
	beq label2591
label625:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	bne label659
	ands r10, r4, #1
	bne label633
	add r9, r9, #1
	add r8, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	bge label2604
label658:
	add r5, r5, #4
	ands r10, r8, #1
	bne label659
	ands r10, r7, #1
	beq label2802
label633:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label658
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label657
	b label2988
label2591:
	mov r2, r6
	mov r4, r3
	movs r6, r3
	bne label587
	movw r3, #32767
	cmp r0, r3
	bgt label586
	b label585
label1657:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label490
	b label2768
label2595:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	beq label1864
label613:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label616
	mov r6, r3
	cmp r4, #0
	beq label2597
label587:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	beq label1835
label619:
	ands r10, r7, #1
	beq label621
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label618
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label1847
label603:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label617
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label613
	b label1864
label2594:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2790
label618:
	add r5, r5, #4
	ands r10, r9, #1
	bne label619
	ands r10, r7, #1
	bne label621
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label618
label2790:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label603
	b label1847
label2772:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label519
label522:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	bge label2576
label521:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label522
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label521
	mov r6, r3
	cmp r4, #0
	bne label490
label2574:
	movw r3, #32767
	cmp r1, r3
	bgt label489
	b label2773
label2587:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label544
label1751:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label558
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label554
label1768:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label557
	mov r6, r2
	cmp r4, #0
	beq label2779
label528:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	bne label562
	ands r10, r4, #1
	beq label2579
label561:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r2, r2, r10
	bge label2587
label559:
	add r5, r5, #4
	ands r10, r8, #1
	beq label2585
label562:
	ands r10, r7, #1
	beq label561
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label559
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	beq label1751
label544:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label547
label558:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label544
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label558
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label554
	b label1768
label547:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label554
	b label1768
label2585:
	ands r10, r7, #1
	bne label561
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label559
label2778:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	mov r4, r8
	and r9, r7, r6
	ands r9, r9, #1
	bne label544
	b label1751
label2592:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label472
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	ble label470
label471:
	ldr r1, [sp, #36]
	ldr r4, [sp, #0]
	ldr r2, [sp, #92]
	sdiv r1, r4, r1
	add r1, r1, #65536
	subs r4, r1, r2
	str r4, [sp, #0]
	mov r1, r6
	bgt label452
	b label663
label2583:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2781
label557:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2583
label554:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label557
	mov r6, r2
	cmp r4, #0
	bne label528
	movs r4, r3
	mov r6, r3
	bne label490
	b label2780
label2802:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label658
label2604:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2988
label657:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	bge label2609
label645:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label657
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label645
label1920:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label2797
label653:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label656
	mov r6, r2
	cmp r4, #0
	bne label625
	movs r4, r3
	mov r6, r3
	bne label587
	b label2799
label2609:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label653
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label656
label2606:
	mov r6, r2
	cmp r4, #0
	bne label625
	b label2798
label659:
	ands r10, r7, #1
	beq label633
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label658
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label657
label2988:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label645
	b label1920
label2803:
	cmp r2, #0
	bne label1814
label1813:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label587
	b label2787
label1245:
	add r5, sp, #32
	mov r4, #0
	str r5, [sp, #20]
	str r4, [sp, #16]
	b label226
label350:
	ldr r1, [sp, #36]
	ldr r4, [sp, #4]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #4]
	bgt label235
label446:
	ldr r5, [sp, #20]
	ldr r1, [r5, #0]
	cmp r0, r1
	bne label1603
	ldr r4, [sp, #16]
	add r4, r4, #1
	add r5, r5, #4
	str r5, [sp, #20]
	str r4, [sp, #16]
label226:
	ldr r4, [sp, #16]
	cmp r4, #16
	bge label1249
	mov r1, #2
	mov r2, #1
	mov r0, r2
	str r4, [sp, #4]
	cmp r4, #0
	bgt label235
	b label446
label1603:
	mov r2, #1
	mov r0, r2
label229:
	add sp, sp, #96
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label2766:
	cmp r2, #0
	bne label1271
label2718:
	movs r3, r1
	mov r6, #0
	bne label352
label349:
	movw r1, #32767
	ldr r4, [sp, #4]
	cmp r4, r1
	ble label350
label351:
	ldr r1, [sp, #36]
	ldr r4, [sp, #4]
	ldr r2, [sp, #92]
	sdiv r1, r4, r1
	add r1, r1, #65536
	subs r4, r1, r2
	str r4, [sp, #4]
	mov r1, r6
	ble label446
label235:
	add r5, sp, #32
	mov r3, #0
	ldr r4, [sp, #4]
	mov r2, #1
	mov r6, r3
	and r2, r4, r2
	ands r2, r2, #1
	bne label242
	mov r2, r3
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label445
	cmp r2, #0
	bne label1271
	b label2718
label2731:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	beq label349
label352:
	add r5, sp, #32
	mov r4, #0
	mov r7, r1
	mov r2, #1
	mov r8, r4
	and r2, r1, r2
	ands r2, r2, #1
	beq label1449
label359:
	ldr r2, [r5, #0]
	add r2, r8, r2
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	bge label1457
label362:
	add r5, r5, #4
	mov r8, r2
	mov r2, #0
	and r2, r7, r2
	ands r2, r2, #1
	bne label359
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label362
	cmp r8, #0
	bne label1463
label2742:
	mov r2, r6
	mov r4, r3
	movs r6, r3
	beq label369
label372:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label405
	ands r10, r4, #1
	bne label406
	add r8, r8, #1
	add r9, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label381
	b label2747
label2545:
	ands r10, r7, #1
	bne label406
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2747
label381:
	add r5, r5, #4
	ands r10, r9, #1
	beq label2545
label405:
	ands r10, r7, #1
	bne label1534
label406:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label381
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2756
label389:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label392
label403:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label389
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label403
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label399
label1514:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2547
label402:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label399
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label402
	mov r6, r3
	cmp r4, #0
	bne label372
label2750:
	movw r3, #32767
	cmp r1, r3
	ble label2751
label371:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	bne label352
	movw r1, #32767
	ldr r4, [sp, #4]
	cmp r4, r1
	bgt label351
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r2
	cmp r4, #0
	str r4, [sp, #4]
	bgt label235
	b label446
label2751:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label352
label2542:
	movw r1, #32767
	ldr r4, [sp, #4]
	cmp r4, r1
	bgt label351
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #4]
	bgt label235
	b label446
label392:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label1514
label399:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label402
	mov r6, r3
	cmp r4, #0
	bne label372
	movw r3, #32767
	cmp r1, r3
	bgt label371
	b label2751
label2747:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label389
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label403
label2546:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label399
	b label1514
label1449:
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label362
	cmp r8, #0
	beq label2742
label1463:
	movs r4, r3
	beq label2742
label410:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	beq label417
label444:
	ands r10, r7, #1
	beq label443
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label420
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label428
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2555
label442:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	beq label2559
label428:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label442
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label441
	b label438
label417:
	ands r10, r7, #1
	beq label418
label443:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r2, r2, r10
	blt label420
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label428
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label442
	b label2555
label418:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label420
label1555:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label428
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label442
label2555:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label441
label438:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label1585
label440:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2557
label441:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label440
	mov r6, r2
	cmp r4, #0
	bne label410
	movs r4, r3
	mov r6, r3
	bne label372
label2760:
	movw r3, #32767
	cmp r1, r3
	bgt label371
	b label370
label1457:
	cmp r2, #0
	bne label1463
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label372
label369:
	movw r3, #32767
	cmp r1, r3
	bgt label371
label370:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label352
	b label2542
label2557:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label440
	mov r6, r2
	cmp r4, #0
	bne label410
label2556:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label372
	b label2760
label2562:
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	bge label2766
label445:
	add r5, r5, #4
	mov r6, r2
	mov r2, #0
	and r2, r4, r2
	ands r2, r2, #1
	beq label2562
label242:
	ldr r2, [r5, #0]
	add r2, r6, r2
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label445
	cmp r2, #0
	beq label1270
label1271:
	mov r3, r0
	mov r6, #0
	movs r0, r1
	bne label250
	mov r0, r6
	mov r3, r1
	b label349
label2736:
	movw r3, #32767
	cmp r0, r3
	bgt label305
label2737:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	beq label2731
label250:
	add r5, sp, #32
	mov r7, #0
	mov r4, r0
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r0, r8
	ands r8, r8, #1
	bne label257
	add r7, r7, #1
	add r4, r0, r0, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label342
	cmp r2, #0
	beq label2721
label1292:
	movs r4, r3
	beq label1295
label264:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	bne label298
	ands r10, r4, #1
	bne label271
	add r8, r8, #1
	add r9, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label296
	b label2724
label257:
	ldr r8, [r5, #0]
	add r2, r2, r8
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	bge label260
label342:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	bne label257
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label342
	cmp r2, #0
	bne label1292
label2721:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label307
label2722:
	movw r3, #32767
	cmp r0, r3
	bgt label305
label1359:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label250
	b label2731
label2738:
	mov r6, r3
	cmp r4, #0
	beq label2736
label307:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r3, r9
	ands r10, r6, #1
	bne label340
	ands r10, r4, #1
	bne label314
	add r9, r9, #1
	add r8, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	bge label2733
label317:
	add r5, r5, #4
	ands r10, r8, #1
	beq label2527
label340:
	ands r10, r7, #1
	bne label1421
label314:
	ldr r10, [r5, #0]
	add r3, r3, r10
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label317
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label339
label2919:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label338
label327:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label1403
label334:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label1412
label337:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label334
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label337
	b label2738
label298:
	ands r10, r7, #1
	beq label271
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label296
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label281
label1313:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2516
label284:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label281
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label284
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label292
	b label1331
label2527:
	ands r10, r7, #1
	bne label314
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label317
label2733:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2919
label339:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	bge label2532
label338:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label339
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label338
	b label327
label2724:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label1313
label281:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label284
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label292
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label295
label2518:
	mov r6, r2
	cmp r4, #0
	bne label264
	b label2727
label2532:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label334
label1403:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label337
	mov r6, r3
	cmp r4, #0
	bne label307
	b label2736
label260:
	cmp r2, #0
	bne label1292
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label307
	b label2722
label1295:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label307
	movw r3, #32767
	cmp r0, r3
	bgt label305
	b label1359
label2730:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2724
label296:
	add r5, r5, #4
	ands r10, r9, #1
	bne label298
	ands r10, r7, #1
	beq label2730
label271:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label296
	b label2724
label2516:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label292
label1331:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label295
	b label2518
label2729:
	mov r6, r2
	cmp r4, #0
	bne label264
label2727:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label307
label2728:
	movw r3, #32767
	cmp r0, r3
	bgt label305
	b label1359
label2520:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2729
label295:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2520
label292:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label295
	mov r6, r2
	cmp r4, #0
	bne label264
	movs r4, r3
	mov r6, r3
	bne label307
	b label2728
label2800:
	mov r6, r2
	cmp r4, #0
	bne label625
label2798:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label587
label2799:
	movw r3, #32767
	cmp r0, r3
	bgt label586
	b label585
label2618:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label681
	b label1973
label691:
	cmp r2, #0
	bne label1991
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label735
	b label2809
label1847:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2595
label617:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label603
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label617
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r9, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label613
	b label1864
label2672:
	cmp r2, #0
	beq label2459
label914:
	mov r3, r0
	mov r6, #0
	movs r0, r1
	bne label26
	mov r0, r6
	mov r3, r1
	b label1073
label2459:
	movs r3, r1
	mov r6, #0
	bne label125
	b label1073
label2684:
	mov r6, r2
	cmp r4, #0
	bne label40
label2682:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label80
label2683:
	movw r3, #32767
	cmp r0, r3
	bgt label117
label2472:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	beq label2686
label26:
	add r5, sp, #32
	mov r4, #0
	mov r7, r0
	mov r2, #1
	mov r8, r4
	and r2, r0, r2
	ands r2, r2, #1
	bne label118
	mov r2, r4
	add r4, r4, #1
	add r7, r0, r0, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label35
	b label928
label2480:
	ands r10, r7, #1
	bne label87
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2687
label113:
	add r5, r5, #4
	ands r10, r9, #1
	beq label2480
label114:
	ands r10, r7, #1
	beq label87
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label113
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label1019
label98:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label101
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label109
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2477
label112:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label109
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label112
	mov r6, r3
	cmp r4, #0
	bne label80
label2690:
	movw r3, #32767
	cmp r0, r3
	bgt label117
label2691:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label26
label2686:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label125
	b label1073
label2687:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label98
	b label1019
label934:
	movs r4, r3
	beq label937
label40:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	beq label941
label47:
	ands r10, r7, #1
	beq label49
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label52
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label74
	b label60
label2677:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	mov r4, r8
	and r9, r7, r6
	ands r9, r9, #1
	bne label74
label60:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label62
	b label972
label2689:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label1037
label109:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label112
	mov r6, r3
	cmp r4, #0
	bne label80
	movw r3, #32767
	cmp r0, r3
	bgt label117
	b label2691
label1037:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label112
	b label2477
label118:
	ldr r2, [r5, #0]
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	add r2, r8, r2
	bge label2484
label35:
	add r5, r5, #4
	mov r8, r2
	mov r2, #0
	and r2, r7, r2
	ands r2, r2, #1
	bne label118
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label35
label928:
	cmp r2, #0
	bne label934
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label80
	b label997
label2477:
	mov r6, r3
	cmp r4, #0
	bne label80
	b label2690
label2678:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label972
label62:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label74
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label62
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label70
label2680:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label73
label2468:
	mov r6, r2
	cmp r4, #0
	bne label40
	b label2682
label2508:
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	bge label2715
label217:
	add r5, r5, #4
	mov r8, r2
	mov r2, #0
	and r2, r7, r2
	ands r2, r2, #1
	beq label2508
label132:
	ldr r2, [r5, #0]
	add r2, r8, r2
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label217
	cmp r2, #0
	bne label1091
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label144
	b label2698
label937:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label80
label997:
	movw r3, #32767
	cmp r0, r3
	ble label2472
label117:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label26
	mov r0, r2
	movs r3, r1
	mov r6, #0
	bne label125
	b label1073
label2487:
	mov r2, r6
	mov r4, r3
	movs r6, r3
	beq label141
label144:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label151
	ands r10, r4, #1
	beq label2490
label153:
	ldr r10, [r5, #0]
	add r3, r3, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label178
	b label2701
label2498:
	ands r10, r7, #1
	bne label153
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label178
label2701:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	mov r4, r8
	and r9, r7, r6
	ands r9, r9, #1
	bne label163
	b label1135
label18:
	add r4, r4, #1
	add r3, r3, r3, lsr #31
	cmp r4, #16
	asr r3, r3, #1
	blt label20
	cmp r2, #0
	bne label914
	b label2459
label941:
	ands r10, r7, #1
	beq label2463
label49:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label52
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	beq label2678
label74:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label62
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	beq label2685
label70:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label73
	mov r6, r2
	cmp r4, #0
	bne label40
	movs r4, r3
	mov r6, r3
	bne label80
	b label2683
label2484:
	cmp r2, #0
	bne label934
	mov r2, r6
	movs r4, r3
	mov r6, r3
	beq label997
label80:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label114
	ands r10, r4, #1
	beq label2473
label87:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label113
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label98
label1019:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label101
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label109
	b label1037
label141:
	movw r3, #32767
	cmp r1, r3
	ble label142
label143:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	bne label125
	movw r1, #32767
	ldr r3, [sp, #8]
	cmp r3, r1
	bgt label219
	ldr r1, [sp, #36]
	sdiv r3, r3, r1
	mov r1, r2
	cmp r3, #0
	str r3, [sp, #8]
	bgt label11
	b label222
label972:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label70
	b label2680
label2476:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2689
label101:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label98
	b label2476
label2460:
	add r4, r4, #1
	add r3, r3, r3, lsr #31
	cmp r4, #16
	asr r3, r3, #1
	bge label2672
label20:
	add r5, r5, #4
	mov r6, #0
	and r6, r3, r6
	ands r6, r6, #1
	bne label221
	b label2460
label2466:
	ands r10, r7, #1
	bne label49
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2677
label52:
	add r5, r5, #4
	ands r10, r9, #1
	bne label47
	b label2466
label1117:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2491
label178:
	add r5, r5, #4
	ands r10, r9, #1
	beq label2498
label151:
	ands r10, r7, #1
	beq label153
	b label1117
label2470:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2684
label73:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	bne label70
	b label2470
label2608:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2800
label656:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label653
	b label2608
label2759:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label1555
label420:
	add r5, r5, #4
	ands r10, r9, #1
	bne label444
	ands r10, r7, #1
	bne label443
	b label2759
label2612:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	bge label2803
label660:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	bne label661
	b label2612
label2647:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	bge label2833
label791:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	bne label788
	b label2647
label2573:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2772
label511:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label508
	b label2573
label2597:
	movw r3, #32767
	cmp r0, r3
	ble label2792
label586:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label569
	mov r0, r2
	movs r3, r1
	mov r6, #0
	bne label472
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label471
	b label470
label1835:
	ands r10, r7, #1
	beq label2594
label621:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label618
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label603
	b label1847
label2815:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label726
	b label2040
label2639:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label753
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label767
	b label2633
label2656:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label829
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label825
	b label2199
label2659:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label815
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label829
	b label2652
label1534:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label381
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label389
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label403
	b label2546
label2559:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label442
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label441
	b label438
label1421:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label317
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label339
	b label2919
label1412:
	mov r6, r3
	cmp r4, #0
	bne label307
	movw r3, #32767
	cmp r0, r3
	ble label2737
label305:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label250
	mov r0, r2
	movs r3, r1
	mov r6, #0
	bne label352
	b label349
label2493:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label173
	b label1152
label524:
	ands r10, r7, #1
	beq label498
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label523
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label508
	b label1697
label2504:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label212
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label211
	b label1209
label2797:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label656
	b label2606
label2685:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label73
	b label2468
label1978:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label773
	cmp r2, #0
	bne label1991
	b label2808
label2756:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label403
	b label2546
label1161:
	mov r6, r3
	cmp r4, #0
	bne label144
	movw r3, #32767
	cmp r1, r3
	bgt label143
	b label2703
label1270:
	movs r3, r1
	mov r6, #0
	bne label352
	b label349
label2616:
	movs r3, r1
	mov r6, #0
	bne label681
	b label1973
label2805:
	movs r3, r1
	mov r6, #0
	bne label472
	b label469
label2699:
	ldr r1, [sp, #36]
	ldr r3, [sp, #8]
	sdiv r3, r3, r1
	mov r1, r6
	cmp r3, #0
	str r3, [sp, #8]
	bgt label11
	b label222
label1585:
	mov r6, r2
	cmp r4, #0
	bne label410
	b label2556
label2473:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label113
	b label2687
label1249:
	mov r0, #0
	b label229
label2650:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label807
	b label2835
label2547:
	mov r6, r3
	cmp r4, #0
	bne label372
	b label2750
label2596:
	mov r6, r3
	cmp r4, #0
	bne label587
	b label2791
label2621:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label707
	b label2811
label2490:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label178
	b label2701
label2463:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label52
	b label2677
label2579:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label559
	b label2778
label2631:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label745
	b label2819
label2653:
	mov r6, r3
	cmp r4, #0
	bne label798
	b label2838
label1683:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label523
	b label2571
label2499:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label214
	b label2708
