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
	sub sp, sp, #80
	mov r1, #1
	mov r0, #4
	mov r5, sp
	str r5, [sp, #64]
	str r1, [sp, #0]
	str r2, [r5, #4]
	str r0, [r5, #8]
	mov r0, #8
	str r0, [r5, #12]
	mov r0, #16
	str r0, [r5, #16]
	mov r0, #32
	str r0, [r5, #20]
	mov r0, #64
	str r0, [r5, #24]
	mov r0, #128
	str r0, [r5, #28]
	mov r0, #256
	str r0, [r5, #32]
	mov r0, #512
	str r0, [r5, #36]
	mov r0, #1024
	str r0, [r5, #40]
	mov r0, #2048
	str r0, [r5, #44]
	mov r0, #4096
	str r0, [r5, #48]
	mov r0, #8192
	str r0, [r5, #52]
	mov r0, #16384
	str r0, [r5, #56]
	mov r0, #32768
	str r0, [r5, #60]
	mov r0, #0
	cmp r0, #0
	ble label191
label788:
	mov r5, #1
	mov r3, r0
	mov r6, #0
	mov r4, r6
	cmp r6, #16
	blt label11
	cmp r6, #0
	bne label807
.p2align 4
label2471:
	movs r4, r2
	mov r3, #0
	bne label811
	b label810
.p2align 4
label11:
	and r5, r5, r3
	ands r5, r5, #1
	bne label14
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label11
	cmp r6, #0
	bne label807
	b label2471
.p2align 4
label14:
	ldr r5, [sp, #64]
	ldr r5, [r5, r4, lsl #2]
	add r6, r6, r5
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label11
	cmp r6, #0
	bne label807
	movs r4, r2
	mov r3, #0
	bne label811
	b label810
.p2align 4
label807:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label988
	mov r1, r3
	mov r4, r2
.p2align 4
label810:
	movw r2, #32767
	cmp r0, r2
	bgt label104
.p2align 4
label2475:
	ldr r5, [sp, #64]
	ldr r2, [r5, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label191
.p2align 4
label811:
	mov r7, #0
	mov r5, #1
	mov r8, r2
	mov r6, r7
	cmp r7, #16
	blt label99
	b label814
.p2align 4
label2476:
	mov r6, r4
	movs r7, r4
	bne label886
.p2align 4
label885:
	movw r4, #32767
	cmp r2, r4
	bgt label97
.p2align 4
label2485:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label811
	b label810
.p2align 4
label99:
	and r5, r5, r8
	ands r5, r5, #1
	bne label100
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label99
	cmp r7, #0
	bne label819
	b label2476
label191:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r1, #1
	mov r2, #2
	movs r0, r1
	ble label381
label1151:
	mov r4, #0
	mov r5, #1
	mov r6, r0
	mov r3, r4
	cmp r4, #16
	blt label201
	cmp r4, #0
	bne label1170
.p2align 4
label2522:
	movs r4, r2
	mov r3, #0
	bne label1174
	b label1173
.p2align 4
label201:
	and r5, r5, r6
	ands r5, r5, #1
	bne label202
	add r5, r6, r6, lsr #31
	add r3, r3, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label201
	cmp r4, #0
	bne label1170
	b label2522
.p2align 4
label1173:
	movw r2, #32767
	cmp r0, r2
	bgt label213
.p2align 4
label2525:
	ldr r5, [sp, #64]
	ldr r2, [r5, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1151
label381:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #2
	str r0, [sp, #68]
	cmp r0, #16
	blt label1514
	mov r0, #0
	str r0, [sp, #72]
	cmp r0, #16
	blt label1882
	b label2581
label1514:
	mov r2, #2
	mov r1, #1
	ldr r0, [sp, #68]
	cmp r0, #0
	ble label388
.p2align 4
label1518:
	mov r5, #1
	mov r3, r0
	mov r6, #0
	mov r4, r6
	cmp r6, #16
	blt label570
	cmp r6, #0
	bne label1527
	mov r4, r2
	mov r3, #0
	b label397
.p2align 4
label1527:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label1708
	mov r1, r3
	mov r4, r2
	b label1530
.p2align 4
label397:
	cmp r2, #0
	bne label1531
	b label1530
label1882:
	mov r2, #2
	mov r1, #1
	ldr r0, [sp, #72]
	cmp r0, #0
	ble label1885
label1886:
	mov r5, #1
	mov r3, r0
	mov r6, #0
	mov r4, r6
	cmp r6, #16
	blt label763
	b label1889
.p2align 4
label2645:
	movs r4, r2
	mov r3, #0
	bne label2061
	b label2060
.p2align 4
label1894:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	beq label1897
.p2align 4
label1898:
	mov r7, #0
	mov r5, #1
	mov r8, r1
	mov r6, r7
	cmp r7, #16
	blt label597
	cmp r7, #0
	bne label1917
.p2align 4
label2647:
	mov r6, r4
	movs r7, r4
	bne label1984
	b label1983
.p2align 4
label597:
	and r5, r5, r8
	ands r5, r5, #1
	bne label600
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label597
	cmp r7, #0
	bne label1917
	b label2647
.p2align 4
label600:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r7, r7, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label597
	cmp r7, #0
	bne label1917
	mov r6, r4
	movs r7, r4
	bne label1984
	b label1983
.p2align 4
label1917:
	mov r6, r3
	movs r7, r4
	bne label1921
	mov r6, r4
	movw r4, #32767
	cmp r1, r4
	bgt label672
	b label2658
.p2align 4
label1983:
	movw r4, #32767
	cmp r1, r4
	bgt label672
.p2align 4
label2658:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1898
	b label1897
.p2align 4
label763:
	and r5, r5, r3
	ands r5, r5, #1
	bne label764
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label763
	cmp r6, #0
	bne label1894
	b label2645
.p2align 4
label1531:
	mov r7, #0
	mov r5, #1
	mov r8, r2
	mov r6, r7
	cmp r7, #16
	blt label478
	b label1534
.p2align 4
label2588:
	mov r6, r4
	movs r7, r4
	bne label1606
	b label1605
.p2align 4
label478:
	and r5, r5, r8
	ands r5, r5, #1
	bne label479
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label478
	cmp r7, #0
	bne label1539
	b label2588
.p2align 4
label1707:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1531
	b label2887
.p2align 4
label2914:
	mov r6, r4
	movs r7, r9
	bne label1794
	b label2639
.p2align 4
label553:
	and r5, r7, r6
	ands r5, r5, #1
	bne label556
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label553
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label563
	b label2914
.p2align 4
label556:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label553
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label563
	mov r6, r4
	cmp r9, #0
	bne label1794
.p2align 4
label2639:
	movw r4, #32767
	cmp r1, r4
	bgt label568
.p2align 4
label2918:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1708
	b label1707
.p2align 4
label1539:
	mov r6, r3
	movs r7, r4
	bne label1543
	mov r6, r4
	movw r4, #32767
	cmp r2, r4
	bgt label476
	b label2600
.p2align 4
label1605:
	movw r4, #32767
	cmp r2, r4
	bgt label476
.p2align 4
label2600:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1531
	b label1530
.p2align 4
label476:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	ldr r4, [r5, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label1531
	movw r2, #32767
	cmp r0, r2
	bgt label483
	ldr r2, [r5, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1518
	b label388
.p2align 4
label479:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r7, r7, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label478
	cmp r7, #0
	bne label1539
	mov r6, r4
	movs r7, r4
	beq label1605
.p2align 4
label1606:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label450
	b label1609
.p2align 4
label471:
	and r5, r6, r9
	ands r5, r5, #1
	bne label472
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label471
	mov r6, r4
	movs r7, r8
	bne label1606
	b label2606
.p2align 4
label462:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label461
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label471
	mov r6, r4
	cmp r8, #0
	bne label1606
.p2align 4
label2606:
	movw r4, #32767
	cmp r2, r4
	bgt label476
.p2align 4
label2878:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1531
	b label1530
.p2align 4
label450:
	ands r5, r10, #1
	bne label453
	ands r5, r8, #1
	bne label451
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label450
	b label1609
.p2align 4
label453:
	ands r5, r8, #1
	beq label451
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label450
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label461
	b label2601
.p2align 4
label1609:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label461
.p2align 4
label2601:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label471
	b label1652
.p2align 4
label451:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label450
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label461
	b label2601
.p2align 4
label2875:
	mov r6, r4
	movs r7, r8
	bne label1606
	b label2606
.p2align 4
label461:
	and r5, r7, r6
	ands r5, r5, #1
	bne label462
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label461
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label471
	b label2875
.p2align 4
label472:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label471
	mov r6, r4
	movs r7, r8
	bne label1606
	movw r4, #32767
	cmp r2, r4
	bgt label476
	b label2878
.p2align 4
label1652:
	mov r6, r4
	movs r7, r8
	bne label1606
	b label2606
.p2align 4
label2895:
	movw r4, #32767
	cmp r1, r4
	ble label2629
.p2align 4
label568:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	ldr r4, [r5, #60]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label1708
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1531
	movw r2, #32767
	cmp r0, r2
	bgt label483
	b label2587
.p2align 4
label1727:
	mov r6, r3
	movs r7, r4
	bne label1731
	mov r6, r4
	movw r4, #32767
	cmp r1, r4
	bgt label568
	b label2629
.p2align 4
label1793:
	movw r4, #32767
	cmp r1, r4
	bgt label568
.p2align 4
label2629:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1708
	b label1707
.p2align 4
label1543:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	b label410
.p2align 4
label431:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label430
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label426
	mov r6, r3
	cmp r8, #0
	bne label1543
	b label2593
.p2align 4
label2857:
	mov r6, r3
	movs r7, r8
	bne label1543
.p2align 4
label2593:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1606
	b label2858
.p2align 4
label430:
	and r5, r7, r9
	ands r5, r5, #1
	bne label431
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label430
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label426
	b label2857
.p2align 4
label2858:
	movw r4, #32767
	cmp r2, r4
	bgt label476
	b label2600
.p2align 4
label426:
	and r5, r6, r9
	ands r5, r5, #1
	bne label429
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label426
	mov r6, r3
	movs r7, r8
	bne label1543
	b label2593
.p2align 4
label429:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label426
	mov r6, r3
	movs r7, r8
	bne label1543
	mov r6, r4
	movs r7, r4
	bne label1606
	b label2858
.p2align 4
label2590:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label426
	mov r6, r3
	cmp r8, #0
	bne label1543
	b label2593
.p2align 4
label410:
	cmp r9, #16
	bge label1546
.p2align 4
label434:
	ands r5, r10, #1
	bne label437
	ands r5, r8, #1
	bne label436
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label434
	b label1546
.p2align 4
label437:
	ands r5, r8, #1
	beq label436
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label434
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label430
	b label2590
.p2align 4
label1546:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label430
	b label2590
.p2align 4
label436:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label434
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label430
	b label2590
.p2align 4
label563:
	and r5, r6, r8
	ands r5, r5, #1
	bne label564
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label563
	mov r6, r4
	movs r7, r9
	bne label1794
	b label2639
.p2align 4
label564:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label563
	mov r6, r4
	movs r7, r9
	bne label1794
	movw r4, #32767
	cmp r1, r4
	bgt label568
	b label2918
.p2align 4
label1794:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label542
	b label1797
.p2align 4
label1840:
	mov r6, r4
	movs r7, r9
	bne label1794
	b label2639
.p2align 4
label1797:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label553
	b label2630
.p2align 4
label542:
	ands r5, r10, #1
	bne label547
	ands r5, r8, #1
	bne label546
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label542
	b label1797
.p2align 4
label546:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label542
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label553
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r7, r9
	b label1840
.p2align 4
label547:
	ands r5, r8, #1
	beq label546
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label542
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label553
	b label2912
.p2align 4
label2630:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label563
	b label1840
.p2align 4
label2912:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label563
	b label1840
.p2align 4
label1731:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label526
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label522
	b label2616
.p2align 4
label2894:
	mov r6, r3
	movs r7, r8
	bne label1731
	b label2619
.p2align 4
label522:
	and r5, r7, r6
	ands r5, r5, #1
	bne label525
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label522
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label518
	b label2894
.p2align 4
label525:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label522
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label518
	mov r6, r3
	cmp r8, #0
	bne label1731
	b label2619
.p2align 4
label526:
	ands r5, r10, #1
	bne label527
	ands r5, r8, #1
	bne label530
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label526
	b label2902
.p2align 4
label530:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
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
	blt label522
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label518
	b label1745
.p2align 4
label2619:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1794
	b label2895
.p2align 4
label2616:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label518
	b label1745
.p2align 4
label2902:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label522
	b label2906
.p2align 4
label527:
	ands r5, r8, #1
	beq label530
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
	blt label522
	b label2616
.p2align 4
label2906:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label518
.p2align 4
label1745:
	mov r6, r3
	movs r7, r8
	bne label1731
	b label2619
.p2align 4
label518:
	and r5, r6, r9
	ands r5, r5, #1
	bne label521
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label518
	mov r6, r3
	movs r7, r8
	bne label1731
	b label2619
.p2align 4
label521:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label518
	mov r6, r3
	movs r7, r8
	bne label1731
	mov r6, r4
	movs r7, r4
	bne label1794
	b label2895
.p2align 4
label2060:
	movw r2, #32767
	cmp r0, r2
	bgt label680
.p2align 4
label2670:
	ldr r5, [sp, #64]
	ldr r2, [r5, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1886
	b label1885
.p2align 4
label680:
	ldr r5, [sp, #64]
	ldr r2, [r5, #4]
	sdiv r0, r0, r2
	ldr r2, [r5, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1886
	ldr r0, [sp, #72]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	bne label2252
	b label2644
.p2align 4
label2975:
	mov r6, r4
	movs r7, r8
	bne label2087
	b label2686
.p2align 4
label712:
	and r5, r7, r6
	ands r5, r5, #1
	bne label715
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label712
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label722
	b label2975
.p2align 4
label715:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label712
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label722
	mov r6, r4
	cmp r8, #0
	bne label2087
.p2align 4
label2686:
	movw r4, #32767
	cmp r2, r4
	bgt label695
.p2align 4
label2979:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2061
	b label2060
.p2align 4
label2087:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label701
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label712
	b label2966
.p2align 4
label2974:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label722
.p2align 4
label2147:
	mov r6, r4
	movs r7, r8
	bne label2087
	b label2686
.p2align 4
label2104:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label712
	b label2681
.p2align 4
label701:
	ands r5, r10, #1
	bne label702
	ands r5, r8, #1
	bne label704
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label701
	b label2104
.p2align 4
label2966:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	bge label2147
.p2align 4
label722:
	and r5, r6, r9
	ands r5, r5, #1
	bne label725
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label722
	mov r6, r4
	movs r7, r8
	bne label2087
	b label2686
.p2align 4
label725:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label722
	mov r6, r4
	movs r7, r8
	bne label2087
	movw r4, #32767
	cmp r2, r4
	bgt label695
	b label2979
.p2align 4
label2681:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label722
	b label2147
.p2align 4
label704:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label701
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label712
	b label2974
.p2align 4
label1530:
	movw r2, #32767
	cmp r0, r2
	bgt label483
.p2align 4
label2587:
	ldr r5, [sp, #64]
	ldr r2, [r5, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1518
	b label388
.p2align 4
label571:
	ldr r5, [sp, #64]
	ldr r5, [r5, r4, lsl #2]
	add r6, r6, r5
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label570
	cmp r6, #0
	bne label1527
	movs r4, r2
	mov r3, #0
	bne label1531
	b label1530
.p2align 4
label2887:
	movw r2, #32767
	cmp r0, r2
	bgt label483
	b label2587
.p2align 4
label1534:
	cmp r7, #0
	bne label1539
	b label2588
.p2align 4
label886:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label71
	b label889
.p2align 4
label2728:
	mov r6, r4
	movs r7, r9
	bne label886
	b label2490
.p2align 4
label92:
	and r5, r7, r9
	ands r5, r5, #1
	bne label93
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label92
	ldr r5, [sp, #64]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	blt label88
	b label2728
.p2align 4
label889:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label92
.p2align 4
label2486:
	ldr r5, [sp, #64]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	blt label88
	b label920
.p2align 4
label71:
	ands r5, r10, #1
	bne label72
	ands r5, r8, #1
	bne label73
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label71
	b label889
.p2align 4
label72:
	ands r5, r8, #1
	beq label73
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label71
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label92
	b label2486
.p2align 4
label2490:
	movw r4, #32767
	cmp r2, r4
	bgt label97
.p2align 4
label2729:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label811
	b label810
.p2align 4
label93:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label92
	ldr r5, [sp, #64]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	blt label88
	mov r6, r4
	cmp r9, #0
	bne label886
	b label2490
.p2align 4
label73:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label71
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label92
	b label2486
.p2align 4
label920:
	mov r6, r4
	movs r7, r9
	bne label886
	b label2490
.p2align 4
label88:
	and r5, r6, r8
	ands r5, r5, #1
	bne label89
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label88
	mov r6, r4
	movs r7, r9
	bne label886
	b label2490
.p2align 4
label89:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label88
	mov r6, r4
	movs r7, r9
	bne label886
	movw r4, #32767
	cmp r2, r4
	bgt label97
	b label2729
.p2align 4
label2581:
	mov r0, #0
	b label576
label574:
	ldr r0, [sp, #72]
	cmp r0, #16
	blt label1882
	b label2581
label576:
	add sp, sp, #80
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.p2align 4
label1885:
	ldr r5, [sp, #64]
	ldr r0, [sp, #72]
	ldr r0, [r5, r0, lsl #2]
	cmp r1, r0
	bne label2252
label2644:
	ldr r0, [sp, #72]
	add r0, r0, #1
	str r0, [sp, #72]
	b label574
.p2align 4
label695:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	ldr r4, [r5, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label2061
	movw r2, #32767
	cmp r0, r2
	bgt label680
	ldr r2, [r5, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1886
	b label1885
.p2align 4
label2674:
	mov r6, r4
	movs r7, r4
	bne label2087
	b label2086
.p2align 4
label2083:
	mov r6, r3
	movs r7, r4
	bne label2164
	mov r6, r4
.p2align 4
label2086:
	movw r4, #32767
	cmp r2, r4
	bgt label695
.p2align 4
label2677:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label2061
	b label2060
.p2align 4
label759:
	and r5, r5, r6
	ands r5, r5, #1
	bne label762
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label759
	cmp r8, #0
	bne label2083
	b label2674
.p2align 4
label762:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label759
	cmp r8, #0
	bne label2083
	mov r6, r4
	movs r7, r4
	bne label2087
	b label2086
.p2align 4
label1897:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2061
	b label2927
.p2align 4
label2949:
	mov r6, r4
	movs r7, r8
	bne label1984
	b label2665
.p2align 4
label656:
	and r5, r7, r6
	ands r5, r5, #1
	bne label659
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label656
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label666
	b label2949
.p2align 4
label659:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label656
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label666
	mov r6, r4
	cmp r8, #0
	bne label1984
.p2align 4
label2665:
	movw r4, #32767
	cmp r1, r4
	bgt label672
.p2align 4
label2953:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1898
	b label1897
.p2align 4
label672:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	ldr r4, [r5, #60]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label1898
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label2061
	movw r2, #32767
	cmp r0, r2
	bgt label680
	b label2670
.p2align 4
label2061:
	mov r5, #1
	mov r6, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label759
	cmp r8, #0
	bne label2083
	mov r6, r4
	movs r7, r4
	bne label2087
	b label2086
.p2align 4
label702:
	ands r5, r8, #1
	beq label704
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label701
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label712
	b label2681
.p2align 4
label2164:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label734
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label755
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label751
	b label2198
.p2align 4
label2992:
	mov r6, r3
	movs r7, r8
	bne label2164
	b label2699
.p2align 4
label755:
	and r5, r7, r6
	ands r5, r5, #1
	bne label758
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label755
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label751
	b label2992
.p2align 4
label758:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label755
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label751
	mov r6, r3
	cmp r8, #0
	bne label2164
.p2align 4
label2699:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label2087
.p2align 4
label2993:
	movw r4, #32767
	cmp r2, r4
	bgt label695
	b label2677
.p2align 4
label752:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label751
	mov r6, r3
	movs r7, r8
	bne label2164
	mov r6, r4
	movs r7, r4
	bne label2087
	b label2993
.p2align 4
label734:
	ands r5, r10, #1
	bne label738
	ands r5, r8, #1
	bne label737
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label734
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label755
	b label2990
.p2align 4
label738:
	ands r5, r8, #1
	beq label737
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label734
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label755
	b label2988
.p2align 4
label2990:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	bge label2198
.p2align 4
label751:
	and r5, r6, r9
	ands r5, r5, #1
	bne label752
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label751
	mov r6, r3
	movs r7, r8
	bne label2164
	b label2699
.p2align 4
label2198:
	mov r6, r3
	movs r7, r8
	bne label2164
	b label2699
.p2align 4
label2988:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label751
	b label2198
.p2align 4
label1984:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	blt label645
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label656
	b label2659
.p2align 4
label666:
	and r5, r6, r9
	ands r5, r5, #1
	bne label669
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label666
	mov r6, r4
	movs r7, r8
	bne label1984
	b label2665
.p2align 4
label669:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label666
	mov r6, r4
	movs r7, r8
	bne label1984
	movw r4, #32767
	cmp r1, r4
	bgt label672
	b label2953
.p2align 4
label645:
	ands r5, r10, #1
	bne label646
	ands r5, r8, #1
	bne label647
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label645
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label656
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label666
	b label2030
.p2align 4
label2659:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label666
	b label2030
.p2align 4
label646:
	ands r5, r8, #1
	beq label647
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label645
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label656
	b label2659
.p2align 4
label2030:
	mov r6, r4
	movs r7, r8
	bne label1984
	b label2665
.p2align 4
label647:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label645
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label656
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label666
	b label2030
.p2align 4
label483:
	ldr r5, [sp, #64]
	ldr r2, [r5, #4]
	sdiv r0, r0, r2
	ldr r2, [r5, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1518
.p2align 4
label388:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #68]
	add r0, r0, #1
	str r0, [sp, #68]
	cmp r0, #16
	blt label1514
	mov r0, #0
	str r0, [sp, #72]
	cmp r0, #16
	blt label1882
	b label2581
.p2align 4
label819:
	mov r6, r3
	movs r7, r4
	bne label823
	mov r6, r4
	movw r4, #32767
	cmp r2, r4
	ble label2485
.p2align 4
label97:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	ldr r4, [r5, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label811
	movw r2, #32767
	cmp r0, r2
	bgt label104
	ldr r2, [r5, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label788
	b label191
.p2align 4
label100:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r7, r7, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label99
	cmp r7, #0
	bne label819
	mov r6, r4
	movs r7, r4
	bne label886
	b label885
.p2align 4
label1708:
	mov r7, #0
	mov r5, #1
	mov r8, r1
	mov r6, r7
	cmp r7, #16
	blt label494
	cmp r7, #0
	bne label1727
.p2align 4
label2613:
	mov r6, r4
	movs r7, r4
	bne label1794
	b label1793
.p2align 4
label494:
	and r5, r5, r8
	ands r5, r5, #1
	bne label497
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label494
	cmp r7, #0
	bne label1727
	b label2613
.p2align 4
label497:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r7, r7, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label494
	cmp r7, #0
	bne label1727
	mov r6, r4
	movs r7, r4
	bne label1794
	b label1793
.p2align 4
label823:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label36
	b label826
.p2align 4
label2716:
	mov r6, r3
	movs r7, r8
	bne label823
	b label2482
.p2align 4
label47:
	and r5, r7, r6
	ands r5, r5, #1
	bne label48
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label47
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label57
	b label2716
.p2align 4
label2482:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label886
.p2align 4
label2719:
	movw r4, #32767
	cmp r2, r4
	bgt label97
	b label2485
.p2align 4
label57:
	and r5, r6, r9
	ands r5, r5, #1
	bne label60
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label57
	mov r6, r3
	movs r7, r8
	bne label823
	b label2482
.p2align 4
label60:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label57
	mov r6, r3
	movs r7, r8
	bne label823
	mov r6, r4
	movs r7, r4
	bne label886
	b label2719
.p2align 4
label826:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label47
	b label2478
.p2align 4
label36:
	ands r5, r10, #1
	bne label37
	ands r5, r8, #1
	bne label39
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label36
	b label826
.p2align 4
label2715:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label57
.p2align 4
label869:
	mov r6, r3
	movs r7, r8
	bne label823
	b label2482
.p2align 4
label2478:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label57
	b label869
.p2align 4
label37:
	ands r5, r8, #1
	beq label39
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label36
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label47
	b label2478
.p2align 4
label39:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label36
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label47
	b label2715
.p2align 4
label48:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label47
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label57
	mov r6, r3
	cmp r8, #0
	bne label823
	b label2482
.p2align 4
label1921:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label610
	b label1924
.p2align 4
label2937:
	mov r6, r3
	movs r7, r8
	bne label1921
	b label2656
.p2align 4
label621:
	and r5, r7, r6
	ands r5, r5, #1
	bne label624
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label621
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label631
	b label2937
.p2align 4
label624:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label621
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label631
	mov r6, r3
	cmp r8, #0
	bne label1921
.p2align 4
label2656:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1984
.p2align 4
label2941:
	movw r4, #32767
	cmp r1, r4
	bgt label672
	b label2658
.p2align 4
label632:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label631
	mov r6, r3
	movs r7, r8
	bne label1921
	mov r6, r4
	movs r7, r4
	bne label1984
	b label2941
.p2align 4
label2650:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label631
	b label1967
.p2align 4
label610:
	ands r5, r10, #1
	bne label612
	ands r5, r8, #1
	bne label613
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label610
	b label1924
.p2align 4
label612:
	ands r5, r8, #1
	beq label613
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label610
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label621
	b label2650
.p2align 4
label2936:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label631
.p2align 4
label1967:
	mov r6, r3
	movs r7, r8
	bne label1921
	b label2656
.p2align 4
label631:
	and r5, r6, r9
	ands r5, r5, #1
	bne label632
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label631
	mov r6, r3
	movs r7, r8
	bne label1921
	b label2656
.p2align 4
label1924:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label621
	b label2650
.p2align 4
label613:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label610
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label621
	b label2936
.p2align 4
label737:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label734
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label755
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label751
	b label2198
.p2align 4
label2927:
	movw r2, #32767
	cmp r0, r2
	bgt label680
	b label2670
.p2align 4
label1174:
	mov r5, #1
	mov r6, r2
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label220
	cmp r8, #0
	bne label1207
	mov r6, r4
	movs r7, r4
	bne label1274
	b label1273
.p2align 4
label2813:
	movw r2, #32767
	cmp r0, r2
	bgt label213
	b label2525
.p2align 4
label2529:
	mov r6, r4
	movs r7, r4
	bne label1274
	b label1273
.p2align 4
label220:
	and r5, r5, r6
	ands r5, r5, #1
	bne label221
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label220
	cmp r8, #0
	beq label2529
.p2align 4
label1207:
	mov r6, r3
	movs r7, r4
	bne label1211
	mov r6, r4
	movw r4, #32767
	cmp r2, r4
	bgt label264
	b label2542
.p2align 4
label1273:
	movw r4, #32767
	cmp r2, r4
	bgt label264
.p2align 4
label2542:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1174
	b label1173
.p2align 4
label264:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	ldr r4, [r5, #60]
	add r2, r2, #65536
	subs r2, r2, r4
	mov r4, r6
	bne label1174
	movw r2, #32767
	cmp r0, r2
	bgt label213
	ldr r2, [r5, #4]
	sdiv r0, r0, r2
	mov r2, r3
	cmp r0, #0
	bgt label1151
	b label381
.p2align 4
label1274:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label271
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label282
	b label2797
.p2align 4
label283:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label282
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label292
	mov r6, r4
	cmp r8, #0
	bne label1274
	b label2551
.p2align 4
label2797:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label292
	b label1334
.p2align 4
label2551:
	movw r4, #32767
	cmp r2, r4
	bgt label264
.p2align 4
label2809:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r2, r2, r4
	mov r4, r6
	cmp r2, #0
	bne label1174
	b label1173
.p2align 4
label292:
	and r5, r6, r9
	ands r5, r5, #1
	bne label295
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label292
	mov r6, r4
	movs r7, r8
	bne label1274
	b label2551
.p2align 4
label295:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label292
	mov r6, r4
	movs r7, r8
	bne label1274
	movw r4, #32767
	cmp r2, r4
	bgt label264
	b label2809
.p2align 4
label1291:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label282
	b label2546
.p2align 4
label271:
	ands r5, r10, #1
	bne label272
	ands r5, r8, #1
	bne label276
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label271
	b label1291
.p2align 4
label276:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label271
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label282
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r7, r8
	b label1334
.p2align 4
label2806:
	mov r6, r4
	movs r7, r8
	bne label1274
	b label2551
.p2align 4
label282:
	and r5, r7, r9
	ands r5, r5, #1
	bne label283
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label282
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label292
	b label2806
.p2align 4
label2546:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label292
.p2align 4
label1334:
	mov r6, r4
	movs r7, r8
	bne label1274
	b label2551
.p2align 4
label1211:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label233
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label254
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r7, r9
	b label1245
.p2align 4
label2791:
	mov r6, r3
	movs r7, r9
	bne label1211
	b label2539
.p2align 4
label1245:
	mov r6, r3
	movs r7, r9
	bne label1211
.p2align 4
label2539:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1274
	b label2792
.p2align 4
label254:
	and r5, r7, r6
	ands r5, r5, #1
	bne label255
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label254
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label250
	b label2791
.p2align 4
label2792:
	movw r4, #32767
	cmp r2, r4
	bgt label264
	b label2542
.p2align 4
label251:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label250
	mov r6, r3
	movs r7, r9
	bne label1211
	mov r6, r4
	movs r7, r4
	bne label1274
	b label2792
.p2align 4
label233:
	ands r5, r10, #1
	bne label237
	ands r5, r8, #1
	bne label238
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label233
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label254
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r7, r9
	b label1245
.p2align 4
label237:
	ands r5, r8, #1
	beq label238
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label233
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label254
	b label2789
.p2align 4
label1350:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1174
	b label2813
.p2align 4
label1351:
	mov r5, #1
	mov r6, r1
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label305
	cmp r8, #0
	bne label1370
.p2align 4
label2554:
	mov r6, r4
	movs r7, r4
	bne label1374
	b label1373
.p2align 4
label305:
	and r5, r5, r6
	ands r5, r5, #1
	bne label308
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label305
	cmp r8, #0
	bne label1370
	b label2554
.p2align 4
label308:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label305
	cmp r8, #0
	bne label1370
	mov r6, r4
	movs r7, r4
	bne label1374
	b label1373
.p2align 4
label1370:
	mov r6, r3
	movs r7, r4
	bne label1451
	mov r6, r4
.p2align 4
label1373:
	movw r4, #32767
	cmp r1, r4
	bgt label347
.p2align 4
label2558:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1351
	b label1350
.p2align 4
label250:
	and r5, r6, r8
	ands r5, r5, #1
	bne label251
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label250
	mov r6, r3
	movs r7, r9
	bne label1211
	b label2539
.p2align 4
label255:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label254
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label250
	mov r6, r3
	cmp r9, #0
	bne label1211
	b label2539
.p2align 4
label238:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label233
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label254
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r7, r9
	b label1245
.p2align 4
label2789:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r8, r9, r5
	mov r9, #0
	mov r7, r9
	cmp r9, #16
	blt label250
	b label1245
.p2align 4
label272:
	ands r5, r8, #1
	beq label276
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label271
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label282
	b label2546
.p2align 4
label1374:
	mov r8, r7
	mov r10, r6
	mov r4, #0
	mov r9, r4
	cmp r4, #16
	blt label339
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label325
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label335
.p2align 4
label1400:
	mov r6, r4
	movs r7, r8
	bne label1374
	b label2563
.p2align 4
label339:
	ands r5, r10, #1
	bne label343
	ands r5, r8, #1
	bne label340
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label339
	b label2827
.p2align 4
label2819:
	mov r6, r4
	movs r7, r8
	bne label1374
	b label2563
.p2align 4
label325:
	and r5, r7, r6
	ands r5, r5, #1
	bne label328
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label325
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label335
	b label2819
.p2align 4
label328:
	ldr r5, [sp, #64]
	ldr r5, [r5, r8, lsl #2]
	add r9, r9, r5
	add r5, r6, r6, lsr #31
	add r8, r8, #1
	asr r6, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r8, #16
	blt label325
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label335
	mov r6, r4
	cmp r8, #0
	bne label1374
.p2align 4
label2563:
	movw r4, #32767
	cmp r1, r4
	bgt label347
.p2align 4
label2823:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label1351
	b label1350
.p2align 4
label2827:
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label325
	b label2832
.p2align 4
label343:
	ands r5, r8, #1
	beq label340
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label339
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label325
	b label2830
.p2align 4
label2832:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label335
	b label1400
.p2align 4
label340:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label339
	mov r9, #0
	mov r8, r9
	cmp r9, #16
	blt label325
	b label2829
.p2align 4
label2830:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	blt label335
	b label1400
.p2align 4
label2829:
	ldr r5, [sp, #64]
	mov r8, #0
	movw r6, #65535
	mov r7, r8
	ldr r5, [r5, #4]
	mul r9, r9, r5
	cmp r8, #16
	bge label1400
.p2align 4
label335:
	and r5, r6, r9
	ands r5, r5, #1
	bne label338
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label335
	mov r6, r4
	movs r7, r8
	bne label1374
	b label2563
.p2align 4
label338:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label335
	mov r6, r4
	movs r7, r8
	bne label1374
	movw r4, #32767
	cmp r1, r4
	ble label2823
.p2align 4
label347:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	ldr r4, [r5, #60]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label1351
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label1174
	movw r2, #32767
	cmp r0, r2
	bgt label213
	b label2525
.p2align 4
label1451:
	mov r8, r7
	mov r10, r6
	mov r3, #0
	mov r9, r3
	cmp r3, #16
	blt label356
	b label1454
.p2align 4
label1497:
	mov r6, r3
	movs r7, r9
	bne label1451
.p2align 4
label2579:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1374
.p2align 4
label2848:
	movw r4, #32767
	cmp r1, r4
	bgt label347
	b label2558
.p2align 4
label378:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r9, r9, r5
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label377
	mov r6, r3
	movs r7, r9
	bne label1451
	mov r6, r4
	movs r7, r4
	bne label1374
	b label2848
.p2align 4
label1454:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label367
.p2align 4
label2573:
	ldr r5, [sp, #64]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	blt label377
	b label1497
.p2align 4
label356:
	ands r5, r10, #1
	bne label357
	ands r5, r8, #1
	bne label361
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label356
	b label1454
.p2align 4
label357:
	ands r5, r8, #1
	beq label361
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label356
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label367
	b label2573
.p2align 4
label361:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label356
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label367
	ldr r5, [sp, #64]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	bge label1497
.p2align 4
label377:
	and r5, r6, r8
	ands r5, r5, #1
	bne label378
	add r5, r8, r8, lsr #31
	add r7, r7, #1
	asr r8, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label377
	mov r6, r3
	movs r7, r9
	bne label1451
	b label2579
.p2align 4
label2844:
	mov r6, r3
	movs r7, r9
	bne label1451
	b label2579
.p2align 4
label367:
	and r5, r7, r9
	ands r5, r5, #1
	bne label370
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label367
	ldr r5, [sp, #64]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	blt label377
	b label2844
.p2align 4
label370:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label367
	ldr r5, [sp, #64]
	movw r6, #65535
	mov r9, #0
	mov r7, r9
	ldr r5, [r5, #4]
	mul r8, r8, r5
	cmp r9, #16
	blt label377
	mov r6, r3
	cmp r9, #0
	bne label1451
	b label2579
.p2align 4
label2584:
	movs r4, r2
	mov r3, #0
	bne label1531
	b label1530
.p2align 4
label570:
	and r5, r5, r3
	ands r5, r5, #1
	bne label571
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label570
	cmp r6, #0
	bne label1527
	b label2584
.p2align 4
label221:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r6, r6, lsr #31
	add r7, r7, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r7, #16
	blt label220
	cmp r8, #0
	bne label1207
	mov r6, r4
	movs r7, r4
	bne label1274
	b label1273
.p2align 4
label814:
	cmp r7, #0
	bne label819
	b label2476
.p2align 4
label213:
	ldr r5, [sp, #64]
	ldr r2, [r5, #4]
	sdiv r0, r0, r2
	ldr r2, [r5, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label1151
	b label381
.p2align 4
label104:
	ldr r5, [sp, #64]
	ldr r2, [r5, #4]
	sdiv r0, r0, r2
	ldr r2, [r5, #60]
	add r0, r0, #65536
	subs r0, r0, r2
	mov r2, r3
	bgt label788
	b label191
.p2align 4
label988:
	mov r7, #0
	mov r5, #1
	mov r8, r1
	mov r6, r7
	cmp r7, #16
	blt label115
	cmp r7, #0
	bne label1007
.p2align 4
label2498:
	mov r6, r4
	movs r7, r4
	bne label1074
	b label1073
.p2align 4
label115:
	and r5, r5, r8
	ands r5, r5, #1
	bne label116
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label115
	cmp r7, #0
	bne label1007
	b label2498
.p2align 4
label116:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r7, r7, r5
	add r5, r8, r8, lsr #31
	add r6, r6, #1
	asr r8, r5, #1
	mov r5, #0
	cmp r6, #16
	blt label115
	cmp r7, #0
	bne label1007
	mov r6, r4
	movs r7, r4
	bne label1074
	b label1073
.p2align 4
label1007:
	mov r6, r3
	movs r7, r4
	bne label1011
	mov r6, r4
	movw r4, #32767
	cmp r1, r4
	bgt label189
	b label2511
.p2align 4
label1073:
	movw r4, #32767
	cmp r1, r4
	bgt label189
.p2align 4
label2511:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label988
.p2align 4
label987:
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label811
	b label2740
.p2align 4
label1074:
	mov r4, #0
	mov r8, r7
	mov r10, r6
	mov r9, r4
	cmp r4, #16
	blt label163
	b label1077
.p2align 4
label2518:
	movw r4, #32767
	cmp r1, r4
	bgt label189
.p2align 4
label2769:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	mov r4, r6
	cmp r1, #0
	bne label988
	b label987
.p2align 4
label184:
	and r5, r6, r9
	ands r5, r5, #1
	bne label185
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label184
	mov r6, r4
	movs r7, r8
	bne label1074
	b label2518
.p2align 4
label2512:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label184
	b label1120
.p2align 4
label163:
	ands r5, r10, #1
	bne label166
	ands r5, r8, #1
	bne label164
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label163
	b label1077
.p2align 4
label164:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r4, r4, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label163
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label174
	b label2512
.p2align 4
label166:
	ands r5, r8, #1
	beq label164
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label163
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label174
	b label2512
.p2align 4
label1120:
	mov r6, r4
	movs r7, r8
	bne label1074
	b label2518
.p2align 4
label2765:
	mov r6, r4
	movs r7, r8
	bne label1074
	b label2518
.p2align 4
label174:
	and r5, r7, r9
	ands r5, r5, #1
	bne label177
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label174
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label184
	b label2765
.p2align 4
label177:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label174
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label184
	mov r6, r4
	cmp r8, #0
	bne label1074
	b label2518
.p2align 4
label1077:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label174
	b label2512
.p2align 4
label185:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label184
	mov r6, r4
	movs r7, r8
	bne label1074
	movw r4, #32767
	cmp r1, r4
	ble label2769
.p2align 4
label189:
	ldr r5, [sp, #64]
	ldr r4, [r5, #4]
	sdiv r1, r1, r4
	ldr r4, [r5, #60]
	add r1, r1, #65536
	subs r1, r1, r4
	mov r4, r6
	bne label988
	mov r1, r3
	movs r4, r2
	mov r3, #0
	bne label811
	movw r2, #32767
	cmp r0, r2
	bgt label104
	b label2475
.p2align 4
label1011:
	mov r3, #0
	mov r8, r7
	mov r10, r6
	mov r9, r3
	cmp r3, #16
	blt label147
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label143
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r7, r8
.p2align 4
label1025:
	mov r6, r3
	movs r7, r8
	bne label1011
	b label2503
.p2align 4
label147:
	ands r5, r10, #1
	bne label151
	ands r5, r8, #1
	bne label148
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label147
	b label2752
.p2align 4
label2746:
	mov r6, r3
	movs r7, r8
	bne label1011
.p2align 4
label2503:
	mov r3, r6
	mov r6, r4
	movs r7, r4
	bne label1074
	b label2747
.p2align 4
label143:
	and r5, r7, r9
	ands r5, r5, #1
	bne label144
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label143
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label139
	b label2746
.p2align 4
label2747:
	movw r4, #32767
	cmp r1, r4
	bgt label189
	b label2511
.p2align 4
label140:
	ldr r5, [sp, #64]
	ldr r5, [r5, r7, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label139
	mov r6, r3
	movs r7, r8
	bne label1011
	mov r6, r4
	movs r7, r4
	bne label1074
	b label2747
.p2align 4
label139:
	and r5, r6, r9
	ands r5, r5, #1
	bne label140
	add r5, r9, r9, lsr #31
	add r7, r7, #1
	asr r9, r5, #1
	add r5, r6, r6, lsr #31
	asr r6, r5, #1
	cmp r7, #16
	blt label139
	mov r6, r3
	movs r7, r8
	bne label1011
	b label2503
.p2align 4
label2752:
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label143
	b label2757
.p2align 4
label148:
	ldr r5, [sp, #64]
	ldr r5, [r5, r9, lsl #2]
	add r3, r3, r5
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label147
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label143
	b label2754
.p2align 4
label151:
	ands r5, r8, #1
	beq label148
	add r5, r10, r10, lsr #31
	add r9, r9, #1
	asr r10, r5, #1
	add r5, r8, r8, lsr #31
	asr r8, r5, #1
	cmp r9, #16
	blt label147
	mov r8, #0
	mov r9, r6
	mov r6, r8
	cmp r8, #16
	blt label143
	b label2755
.p2align 4
label2757:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label139
	b label1025
.p2align 4
label2754:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label139
	b label1025
.p2align 4
label2755:
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label139
	b label1025
.p2align 4
label144:
	ldr r5, [sp, #64]
	ldr r5, [r5, r6, lsl #2]
	add r8, r8, r5
	add r5, r9, r9, lsr #31
	add r6, r6, #1
	asr r9, r5, #1
	add r5, r7, r7, lsr #31
	asr r7, r5, #1
	cmp r6, #16
	blt label143
	ldr r5, [sp, #64]
	movw r6, #65535
	ldr r5, [r5, #4]
	mul r9, r8, r5
	mov r8, #0
	mov r7, r8
	cmp r8, #16
	blt label139
	mov r6, r3
	cmp r8, #0
	bne label1011
	b label2503
.p2align 4
label2740:
	movw r2, #32767
	cmp r0, r2
	bgt label104
	b label2475
.p2align 4
label1889:
	cmp r6, #0
	bne label1894
	b label2645
.p2align 4
label764:
	ldr r5, [sp, #64]
	ldr r5, [r5, r4, lsl #2]
	add r6, r6, r5
	add r3, r3, r3, lsr #31
	add r4, r4, #1
	mov r5, #0
	asr r3, r3, #1
	cmp r4, #16
	blt label763
	cmp r6, #0
	bne label1894
	movs r4, r2
	mov r3, #0
	bne label2061
	b label2060
.p2align 4
label202:
	ldr r5, [sp, #64]
	ldr r5, [r5, r3, lsl #2]
	add r4, r4, r5
	add r5, r6, r6, lsr #31
	add r3, r3, #1
	asr r6, r5, #1
	mov r5, #0
	cmp r3, #16
	blt label201
	cmp r4, #0
	bne label1170
	movs r4, r2
	mov r3, #0
	bne label1174
	b label1173
.p2align 4
label1170:
	mov r4, r1
	mov r3, #0
	movs r1, r2
	bne label1351
	mov r1, r3
	mov r4, r2
	b label1173
label2252:
	mov r0, #1
	b label576
