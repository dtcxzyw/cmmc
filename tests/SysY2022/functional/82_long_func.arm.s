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
	mov r1, #2
	sub sp, sp, #96
	mov r2, #1
	mov r0, #4
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
	bgt label6
	b label217
label215:
	ldr r1, [sp, #36]
	ldr r4, [sp, #12]
	ldr r2, [sp, #92]
	sdiv r1, r4, r1
	add r1, r1, #65536
	subs r4, r1, r2
	str r4, [sp, #12]
	mov r1, r6
	bgt label6
label217:
	bl putint
	mov r0, #10
	bl putch
	mov r2, #1
	mov r1, #2
	str r2, [sp, #8]
	mov r3, r2
	movs r0, r2
	bgt label222
	b label433
label2751:
	ldr r1, [sp, #36]
	ldr r3, [sp, #8]
	sdiv r3, r3, r1
	mov r1, r6
	cmp r3, #0
	str r3, [sp, #8]
	bgt label222
label433:
	bl putint
	mov r0, #10
	bl putch
	mov r1, #2
	str r1, [sp, #24]
	mov r4, r1
	cmp r1, #16
	blt label1590
label1589:
	add r5, sp, #32
	mov r4, #0
	str r5, [sp, #20]
	str r4, [sp, #16]
	b label437
label1590:
	mov r1, #2
	mov r2, #1
	ldr r4, [sp, #24]
	mov r0, r2
	cmp r4, #0
	str r4, [sp, #0]
	bgt label664
	b label663
label437:
	ldr r4, [sp, #16]
	cmp r4, #16
	blt label1594
	b label1593
label663:
	bl putint
	mov r0, #10
	bl putch
	ldr r4, [sp, #24]
	add r4, r4, #1
	cmp r4, #16
	str r4, [sp, #24]
	blt label1590
	b label1589
label1594:
	mov r1, #2
	mov r2, #1
	ldr r4, [sp, #16]
	mov r0, r2
	str r4, [sp, #4]
	b label442
label440:
	add sp, sp, #96
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label442:
	ldr r4, [sp, #4]
	cmp r4, #0
	bgt label446
label657:
	ldr r5, [sp, #20]
	ldr r1, [r5, #0]
	cmp r0, r1
	beq label1946
	mov r2, #1
	mov r0, r2
	b label440
label446:
	add r5, sp, #32
	mov r3, #0
	ldr r4, [sp, #4]
	mov r2, #1
	mov r6, r3
	and r2, r4, r2
	ands r2, r2, #1
	bne label656
	b label1602
label464:
	ldr r1, [sp, #36]
	ldr r4, [sp, #4]
	ldr r2, [sp, #92]
	sdiv r1, r4, r1
	add r1, r1, #65536
	subs r4, r1, r2
	str r4, [sp, #4]
	mov r1, r6
	bgt label446
	b label657
label496:
	and r4, r8, r6
	ands r4, r4, #1
	beq label1680
label502:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label516
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label515
	b label512
label514:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2579
label515:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label514
	mov r6, r3
	cmp r4, #0
	bne label482
	movw r3, #32767
	cmp r1, r3
	ble label2770
label519:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	bne label465
	movw r1, #32767
	ldr r4, [sp, #4]
	cmp r4, r1
	bgt label464
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r2
	cmp r4, #0
	str r4, [sp, #4]
	bgt label446
	b label657
label482:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label489
	b label1656
label523:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	bne label557
	b label1730
label2779:
	movw r3, #32767
	cmp r1, r3
	bgt label519
	b label2572
label2589:
	mov r6, r2
	cmp r4, #0
	bne label523
	movs r4, r3
	mov r6, r3
	bne label482
	b label2779
label489:
	ands r10, r7, #1
	beq label491
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label494
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label502
label1680:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label516
	b label2577
label2767:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	b label496
label491:
	ldr r10, [r5, #0]
	add r3, r3, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label1674
label494:
	add r5, r5, #4
	ands r10, r9, #1
	bne label489
	ands r10, r7, #1
	bne label491
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label494
	b label2767
label1674:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label502
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label516
label2577:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label515
label512:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label514
	mov r6, r3
	cmp r4, #0
	bne label482
label2578:
	movw r3, #32767
	cmp r1, r3
	bgt label519
	b label2770
label2579:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label514
	mov r6, r3
	cmp r4, #0
	bne label482
	b label2578
label2770:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label465
label2766:
	movw r1, #32767
	ldr r4, [sp, #4]
	cmp r4, r1
	bgt label464
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #4]
	bgt label446
	b label657
label1602:
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	bge label455
label655:
	add r5, r5, #4
	mov r6, r2
	mov r2, #0
	and r2, r4, r2
	ands r2, r2, #1
	bne label656
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label655
label455:
	cmp r2, #0
	bne label1613
	movs r3, r1
	mov r6, #0
	bne label465
label462:
	movw r1, #32767
	ldr r4, [sp, #4]
	cmp r4, r1
	bgt label464
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #4]
	bgt label446
	b label657
label1613:
	mov r3, r0
	mov r6, #0
	cmp r1, #0
	mov r0, r1
	bne label562
	b label2565
label465:
	add r5, sp, #32
	mov r4, #0
	mov r7, r1
	mov r2, #1
	mov r8, r4
	and r2, r1, r2
	ands r2, r2, #1
	bne label472
	b label1635
label656:
	ldr r2, [r5, #0]
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	add r2, r6, r2
	blt label655
	cmp r2, #0
	bne label1613
	movs r3, r1
	mov r6, #0
	bne label465
	b label462
label472:
	ldr r2, [r5, #0]
	add r2, r8, r2
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label475
	cmp r2, #0
	beq label2569
label1649:
	movs r4, r3
	bne label523
	b label2763
label2569:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label482
label1652:
	movw r3, #32767
	cmp r1, r3
	bgt label519
	b label2572
label2763:
	mov r2, r6
	mov r4, r3
	mov r6, r3
	b label479
label475:
	add r5, r5, #4
	mov r8, r2
	mov r2, #0
	and r2, r7, r2
	ands r2, r2, #1
	bne label472
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label475
	cmp r8, #0
	bne label1649
	b label2763
label2565:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label465
	b label462
label222:
	add r5, sp, #32
	mov r4, #0
	ldr r3, [sp, #8]
	mov r2, #1
	mov r6, r2
	mov r2, r4
	and r6, r3, r6
	ands r6, r6, #1
	bne label229
	b label1246
label2552:
	movw r1, #32767
	ldr r3, [sp, #8]
	cmp r3, r1
	bgt label431
	ldr r1, [sp, #36]
	sdiv r3, r3, r1
	mov r1, r6
	cmp r3, #0
	str r3, [sp, #8]
	bgt label222
	b label433
label229:
	ldr r6, [r5, #0]
	add r2, r2, r6
	add r4, r4, #1
	add r3, r3, r3, lsr #31
	cmp r4, #16
	asr r3, r3, #1
	blt label232
	cmp r2, #0
	beq label2515
label1260:
	mov r3, r0
	mov r6, #0
	movs r0, r1
	bne label238
	mov r0, r6
	mov r3, r1
	beq label1419
label337:
	add r5, sp, #32
	mov r4, #0
	mov r7, r1
	mov r2, #1
	mov r8, r4
	and r2, r1, r2
	ands r2, r2, #1
	bne label344
	b label1424
label2551:
	movw r1, #32767
	ldr r3, [sp, #8]
	cmp r3, r1
	bgt label431
	b label2751
label2756:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label337
	b label2551
label344:
	ldr r2, [r5, #0]
	add r2, r8, r2
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label429
	cmp r2, #0
	bne label1437
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label394
	b label2743
label393:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	bne label337
	b label2552
label394:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label402
	b label401
label1546:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label2753
label422:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label425
	mov r6, r3
	cmp r4, #0
	bne label394
	movw r3, #32767
	cmp r1, r3
	bgt label393
	b label2756
label401:
	ands r10, r7, #1
	bne label428
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label427
	b label2553
label402:
	ands r10, r7, #1
	beq label428
	b label403
label427:
	add r5, r5, #4
	ands r10, r9, #1
	bne label402
	b label2559
label428:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label427
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label426
label412:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label414
	b label1546
label2753:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label425
	b label2555
label414:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label426
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label414
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label422
	b label2753
label2555:
	mov r6, r3
	cmp r4, #0
	bne label394
	b label2755
label403:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label427
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	mov r4, r8
	and r9, r7, r6
	ands r9, r9, #1
	beq label412
label426:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label414
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label422
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label425
	b label2555
label2755:
	movw r3, #32767
	cmp r1, r3
	bgt label393
	b label2756
label425:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label422
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label425
	mov r6, r3
	cmp r4, #0
	bne label394
	b label2755
label2553:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label426
	b label412
label2559:
	ands r10, r7, #1
	bne label428
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label427
	b label2553
label2742:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label394
	b label2743
label1437:
	movs r4, r3
	bne label351
	b label1440
label429:
	add r5, r5, #4
	mov r8, r2
	mov r2, #0
	and r2, r7, r2
	ands r2, r2, #1
	bne label344
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label429
	cmp r8, #0
	bne label1437
	b label2742
label1440:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label394
	movw r3, #32767
	cmp r1, r3
	bgt label393
label392:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label337
	b label2551
label351:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	bne label359
	b label1444
label2746:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label394
	b label2747
label383:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	bne label380
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label383
	mov r6, r2
	cmp r4, #0
	bne label351
	b label2746
label2745:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	b label364
label359:
	ands r10, r7, #1
	beq label358
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label385
	b label2544
label364:
	and r4, r8, r6
	ands r4, r4, #1
	bne label370
	b label1467
label385:
	add r5, r5, #4
	ands r10, r9, #1
	bne label359
	ands r10, r7, #1
	bne label358
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label385
	b label2745
label2544:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label1467
label370:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label384
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label380
	b label1484
label1444:
	ands r10, r7, #1
	beq label2542
label358:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r2, r2, r10
	blt label385
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label370
label1467:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2545
label384:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label370
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label384
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r9, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label380
label1484:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label383
	mov r6, r2
	cmp r4, #0
	bne label351
	b label2746
label2747:
	movw r3, #32767
	cmp r1, r3
	bgt label393
	b label392
label2545:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	beq label1484
label380:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label383
	mov r6, r2
	cmp r4, #0
	bne label351
	movs r4, r3
	mov r6, r3
	bne label394
	b label2747
label2716:
	mov r3, r1
	mov r6, #0
	b label333
label232:
	add r5, r5, #4
	mov r6, #0
	and r6, r3, r6
	ands r6, r6, #1
	bne label229
	add r4, r4, #1
	add r3, r3, r3, lsr #31
	cmp r4, #16
	asr r3, r3, #1
	blt label232
	cmp r2, #0
	bne label1260
	b label2716
label333:
	cmp r1, #0
	bne label337
	b label1419
label2515:
	movs r3, r1
	mov r6, #0
	bne label337
label1419:
	movw r1, #32767
	ldr r3, [sp, #8]
	cmp r3, r1
	ble label2540
label431:
	ldr r1, [sp, #36]
	ldr r3, [sp, #8]
	ldr r2, [sp, #92]
	sdiv r1, r3, r1
	add r1, r1, #65536
	subs r3, r1, r2
	str r3, [sp, #8]
	mov r1, r6
	bgt label222
	b label433
label238:
	add r5, sp, #32
	mov r4, #0
	mov r7, r0
	mov r2, #1
	mov r8, r4
	and r2, r0, r2
	ands r2, r2, #1
	bne label245
	b label1268
label2732:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label337
	b label1419
label2740:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label238
	b label2732
label1268:
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label248
	b label2517
label2720:
	mov r2, r6
	mov r4, r3
	mov r6, r3
	b label290
label248:
	add r5, r5, #4
	mov r8, r2
	mov r2, #0
	and r2, r7, r2
	ands r2, r2, #1
	bne label245
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label248
	cmp r8, #0
	bne label1282
	b label2720
label290:
	cmp r4, #0
	bne label296
	b label293
label245:
	ldr r2, [r5, #0]
	add r2, r8, r2
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label248
	cmp r2, #0
	bne label1282
	mov r2, r6
	movs r4, r3
	mov r6, r3
	beq label293
label296:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	beq label1363
label303:
	ands r10, r7, #1
	bne label1368
label304:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label308
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label1387
label316:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label319
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label327
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label330
label2537:
	mov r6, r3
	cmp r4, #0
	bne label296
	b label2739
label293:
	movw r3, #32767
	cmp r0, r3
	bgt label294
	b label1349
label2735:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2535
label319:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label316
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label319
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label327
	b label1405
label294:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label238
	b label2529
label2535:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label1405
label327:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label330
	mov r6, r3
	cmp r4, #0
	bne label296
	movw r3, #32767
	cmp r0, r3
	bgt label294
	b label2740
label2734:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label316
	b label2735
label1368:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2532
label308:
	add r5, r5, #4
	ands r10, r9, #1
	bne label303
	ands r10, r7, #1
	bne label304
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label308
	b label2734
label2532:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label316
label1387:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label319
	b label2535
label1405:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label330
	b label2537
label2739:
	movw r3, #32767
	cmp r0, r3
	bgt label294
	b label2740
label330:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label327
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label330
	mov r6, r3
	cmp r4, #0
	bne label296
	b label2739
label2743:
	movw r3, #32767
	cmp r1, r3
	bgt label393
	b label392
label2517:
	cmp r2, #0
	beq label2720
label1282:
	movs r4, r3
	bne label253
	mov r2, r6
	mov r6, r3
	b label293
label253:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	bne label260
	b label1289
label276:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label273
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label276
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	beq label1331
label284:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label287
	mov r6, r2
	cmp r4, #0
	bne label253
	movs r4, r3
	mov r6, r3
	bne label296
	b label2730
label2724:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label273
	b label2725
label260:
	ands r10, r7, #1
	beq label261
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label2521
label265:
	add r5, r5, #4
	ands r10, r9, #1
	bne label260
	ands r10, r7, #1
	bne label261
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label265
	b label2724
label2725:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label276
label2524:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label284
label1331:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label287
	b label2526
label2521:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label273
label1313:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label276
	b label2524
label261:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r2, r2, r10
	blt label265
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	beq label1313
label273:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label276
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label284
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label287
	b label2526
label2729:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label296
	b label2730
label287:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	bne label284
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label287
	mov r6, r2
	cmp r4, #0
	bne label253
	b label2729
label2526:
	mov r6, r2
	cmp r4, #0
	bne label253
	b label2729
label2730:
	movw r3, #32767
	cmp r0, r3
	bgt label294
label1349:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label238
	b label2732
label562:
	add r5, sp, #32
	mov r7, #0
	mov r4, r0
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r0, r8
	ands r8, r8, #1
	bne label654
	b label569
label1806:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label616
label1866:
	movw r3, #32767
	cmp r0, r3
	ble label2604
label653:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label562
	mov r0, r2
	movs r3, r1
	mov r6, #0
	bne label465
	b label462
label569:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label571
	cmp r2, #0
	beq label2593
label1803:
	movs r4, r3
	beq label1806
label576:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r2, r8
	ands r10, r6, #1
	beq label1810
label583:
	ands r10, r7, #1
	beq label610
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label586
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label594
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label608
label2597:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label607
label604:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label606
	mov r6, r2
	cmp r4, #0
	bne label576
	b label2598
label586:
	add r5, r5, #4
	ands r10, r9, #1
	bne label583
	ands r10, r7, #1
	bne label610
	b label2790
label594:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label597
label608:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label594
	b label2601
label610:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r2, r2, r10
	blt label586
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label594
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label608
	b label2597
label597:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label607
	b label604
label2788:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label594
	b label2795
label2790:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label586
	b label2788
label2795:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label608
	b label2597
label2604:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label562
	b label2797
label2598:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label616
	b label2791
label2599:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label606
	mov r6, r2
	cmp r4, #0
	bne label576
	b label2598
label2791:
	movw r3, #32767
	cmp r0, r3
	bgt label653
	b label2604
label2600:
	mov r6, r2
	cmp r4, #0
	bne label576
	movs r4, r3
	mov r6, r3
	bne label616
	b label2791
label2572:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label465
	b label2766
label571:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	bne label654
	b label2594
label616:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r3, r9
	ands r10, r6, #1
	bne label650
	b label1870
label654:
	ldr r8, [r5, #0]
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	add r2, r2, r8
	blt label571
	cmp r2, #0
	bne label1803
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label616
	b label1866
label2593:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label616
	b label1866
label2594:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label571
	cmp r2, #0
	bne label1803
	b label2593
label664:
	add r5, sp, #32
	mov r3, #0
	ldr r4, [sp, #0]
	mov r2, #1
	mov r6, r3
	and r2, r4, r2
	ands r2, r2, #1
	bne label874
	b label1958
label2653:
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label778
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #0]
	bgt label664
	b label663
label2811:
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label778
	b label2132
label873:
	add r5, r5, #4
	mov r6, r2
	mov r2, #0
	and r2, r4, r2
	ands r2, r2, #1
	beq label2664
label874:
	ldr r2, [r5, #0]
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	add r2, r6, r2
	blt label873
	cmp r2, #0
	bne label1969
	movs r3, r1
	mov r6, #0
	beq label2811
label780:
	add r5, sp, #32
	mov r7, #0
	mov r4, r1
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r1, r8
	ands r8, r8, #1
	bne label872
	b label787
label834:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label780
	b label2652
label787:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label871
	cmp r2, #0
	beq label2157
label2158:
	movs r4, r3
	beq label2161
label793:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	bne label827
	ands r10, r4, #1
	bne label800
	add r9, r9, #1
	add r8, r6, r6, lsr #31
	add r7, r4, r4, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	bge label2831
label804:
	add r5, r5, #4
	ands r10, r8, #1
	beq label2645
label827:
	ands r10, r7, #1
	beq label800
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label804
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label826
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label825
	b label3027
label2652:
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label778
	b label2839
label2161:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label836
	b label2830
label835:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	bne label780
	b label2653
label836:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label870
	ands r10, r4, #1
	beq label2243
label844:
	ldr r10, [r5, #0]
	add r3, r3, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label869
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label2257
label854:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label857
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label868
	b label2841
label2843:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label780
	b label2652
label868:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label867
	mov r6, r3
	cmp r4, #0
	bne label836
	movw r3, #32767
	cmp r1, r3
	bgt label835
	b label2843
label2257:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2655
label857:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label854
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label857
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label868
	b label865
label2655:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label868
label865:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label867
	b label2282
label2841:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label867
label2282:
	mov r6, r3
	cmp r4, #0
	bne label836
label2657:
	movw r3, #32767
	cmp r1, r3
	bgt label835
	b label2843
label867:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label868
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label867
	mov r6, r3
	cmp r4, #0
	bne label836
	b label2657
label2243:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label869
label2654:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label854
	b label2257
label869:
	add r5, r5, #4
	ands r10, r9, #1
	bne label870
	ands r10, r7, #1
	bne label844
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label869
	b label2654
label2157:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label836
	b label2829
label2662:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label871
	cmp r2, #0
	bne label2158
	b label2157
label2829:
	movw r3, #32767
	cmp r1, r3
	bgt label835
	b label834
label871:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	beq label2662
label872:
	ldr r8, [r5, #0]
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	add r2, r2, r8
	blt label871
	cmp r2, #0
	bne label2158
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label836
	b label2829
label673:
	cmp r2, #0
	bne label1969
	b label1968
label2664:
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label873
	b label673
label800:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r2, r2, r10
	blt label804
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label826
	b label812
label3027:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	b label815
label812:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label825
	b label3027
label815:
	and r9, r7, r6
	ands r9, r9, #1
	bne label824
	b label821
label2834:
	movw r3, #32767
	cmp r1, r3
	bgt label835
	b label834
label824:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label823
	mov r6, r2
	cmp r4, #0
	bne label793
	movs r4, r3
	mov r6, r3
	bne label836
	b label2834
label821:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label823
	mov r6, r2
	cmp r4, #0
	bne label793
	b label2646
label2831:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label826
	b label2832
label2645:
	ands r10, r7, #1
	bne label800
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label804
	b label2831
label2832:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label825
	b label3027
label2646:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label836
	b label2834
label823:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label824
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label823
	mov r6, r2
	cmp r4, #0
	bne label793
	b label2646
label1958:
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label873
	b label673
label1969:
	mov r3, r0
	mov r6, #0
	movs r0, r1
	bne label678
	mov r0, r6
	mov r3, r1
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	ble label2132
label778:
	ldr r1, [sp, #36]
	ldr r4, [sp, #0]
	ldr r2, [sp, #92]
	sdiv r1, r4, r1
	add r1, r1, #65536
	subs r4, r1, r2
	str r4, [sp, #0]
	mov r1, r6
	bgt label664
	b label663
label2825:
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label778
label2132:
	ldr r1, [sp, #36]
	ldr r4, [sp, #0]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #0]
	bgt label664
	b label663
label678:
	add r5, sp, #32
	mov r7, #0
	mov r4, r0
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r0, r8
	ands r8, r8, #1
	bne label685
	b label1977
label2817:
	movw r3, #32767
	cmp r0, r3
	bgt label769
label2629:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label678
label2820:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label780
	b label2825
label2813:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label732
	b label2814
label685:
	ldr r8, [r5, #0]
	add r2, r2, r8
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label770
	b label688
label1990:
	movs r4, r3
	bne label692
	b label1993
label770:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	bne label685
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label770
	cmp r2, #0
	bne label1990
	b label2813
label732:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label740
	b label739
label750:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label763
label752:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label762
label759:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label761
	mov r6, r3
	cmp r4, #0
	bne label732
	b label2631
label3012:
	mov r4, r9
	b label750
label740:
	ands r10, r7, #1
	beq label766
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label765
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label764
	b label3012
label2631:
	movw r3, #32767
	cmp r0, r3
	bgt label769
	b label2821
label2632:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label761
	mov r6, r3
	cmp r4, #0
	bne label732
	b label2631
label2821:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label678
	b label2820
label761:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	beq label2632
label762:
	ldr r9, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label761
	mov r6, r3
	cmp r4, #0
	bne label732
	movw r3, #32767
	cmp r0, r3
	bgt label769
	b label2821
label692:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	bne label700
	b label699
label710:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label723
label712:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label719
	b label2033
label2816:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label732
	b label2817
label719:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label2042
label722:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label719
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label722
	mov r6, r2
	cmp r4, #0
	bne label692
	b label2816
label700:
	ands r10, r7, #1
	beq label726
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label725
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label724
	b label3003
label2033:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label722
	b label2622
label724:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	blt label723
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label719
	b label2033
label3003:
	mov r4, r9
	b label710
label2621:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label724
	b label3003
label725:
	add r5, r5, #4
	ands r10, r8, #1
	bne label700
	ands r10, r7, #1
	bne label726
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label725
	b label2621
label739:
	ands r10, r7, #1
	bne label766
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label765
label2630:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label764
	b label3012
label2636:
	ands r10, r7, #1
	bne label766
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label765
	b label2630
label2814:
	movw r3, #32767
	cmp r0, r3
	bgt label769
	b label2629
label688:
	cmp r2, #0
	bne label1990
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label732
	b label2814
label699:
	ands r10, r7, #1
	beq label2001
label726:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r2, r2, r10
	blt label725
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label724
	b label3003
label2797:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label465
	b label462
label6:
	add r5, sp, #32
	mov r3, #0
	ldr r4, [sp, #12]
	mov r2, #1
	mov r6, r3
	and r2, r4, r2
	ands r2, r2, #1
	bne label13
	b label898
label2486:
	ldr r1, [sp, #36]
	ldr r4, [sp, #12]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #12]
	bgt label6
	b label217
label2666:
	mov r3, r1
	mov r6, #0
	b label117
label13:
	ldr r2, [r5, #0]
	add r2, r6, r2
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	bge label906
label16:
	add r5, r5, #4
	mov r6, r2
	mov r2, #0
	and r2, r4, r2
	ands r2, r2, #1
	bne label13
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label16
	cmp r6, #0
	bne label912
	b label2666
label117:
	cmp r1, #0
	beq label1071
label121:
	add r5, sp, #32
	mov r7, #0
	mov r4, r1
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r1, r8
	ands r8, r8, #1
	bne label128
	add r7, r7, #1
	add r4, r1, r1, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	bge label2487
label131:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	bne label128
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label131
	cmp r2, #0
	beq label2694
label1090:
	movs r4, r3
	beq label2694
label179:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	bne label186
	b label1171
label2709:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	b label192
label186:
	ands r10, r7, #1
	bne label1176
label188:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	bge label2709
label213:
	add r5, r5, #4
	ands r10, r8, #1
	bne label186
	ands r10, r7, #1
	bne label188
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label213
	b label2709
label1071:
	movw r1, #32767
	ldr r4, [sp, #12]
	cmp r4, r1
	bgt label215
	b label2486
label2703:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label121
	b label1071
label1176:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label213
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label1194
label198:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label212
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label208
label1211:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label211
	b label2507
label208:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label211
	b label1220
label212:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label198
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label212
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label208
	b label1211
label2710:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label138
	b label2711
label211:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label208
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label211
	mov r6, r2
	cmp r4, #0
	bne label179
	b label2710
label2491:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	mov r3, r6
	mov r6, r2
	cmp r1, #0
	bne label121
	b label1071
label2711:
	movw r3, #32767
	cmp r1, r3
	bgt label174
	b label2491
label1194:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label212
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label208
	b label1211
label2694:
	mov r2, r6
	mov r4, r3
	mov r6, r3
	b label135
label128:
	ldr r8, [r5, #0]
	add r2, r2, r8
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label131
	cmp r2, #0
	bne label1090
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label138
label1093:
	movw r3, #32767
	cmp r1, r3
	ble label2491
label174:
	ldr r3, [sp, #36]
	sdiv r1, r1, r3
	ldr r3, [sp, #92]
	add r1, r1, #65536
	subs r1, r1, r3
	mov r3, r6
	mov r6, r2
	bne label121
	movw r1, #32767
	ldr r4, [sp, #12]
	cmp r4, r1
	bgt label215
	ldr r1, [sp, #36]
	sdiv r4, r4, r1
	mov r1, r2
	cmp r4, #0
	str r4, [sp, #12]
	bgt label6
	b label217
label898:
	mov r2, r6
	add r3, r3, #1
	add r4, r4, r4, lsr #31
	cmp r3, #16
	asr r4, r4, #1
	blt label16
	cmp r6, #0
	beq label2666
label912:
	mov r3, r0
	mov r6, #0
	movs r0, r1
	bne label22
	mov r0, r6
	mov r3, r1
	b label1071
label22:
	add r5, sp, #32
	mov r7, #0
	mov r4, r0
	mov r2, #1
	mov r8, r2
	mov r2, r7
	and r8, r0, r8
	ands r8, r8, #1
	bne label29
	b label920
label2673:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label121
	b label1071
label2679:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label22
	b label2673
label920:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label32
	b label2462
label29:
	ldr r8, [r5, #0]
	add r2, r2, r8
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	bge label928
label32:
	add r5, r5, #4
	mov r8, #0
	and r8, r4, r8
	ands r8, r8, #1
	bne label29
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label32
	cmp r2, #0
	bne label934
	b label2670
label2462:
	cmp r2, #0
	bne label934
label2670:
	mov r2, r6
	mov r4, r3
	mov r6, r3
	b label36
label934:
	movs r4, r3
	bne label80
	b label2670
label36:
	cmp r4, #0
	bne label42
label39:
	movw r3, #32767
	cmp r0, r3
	bgt label40
	b label941
label80:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r2, r9
	ands r10, r6, #1
	beq label1015
label87:
	ands r10, r7, #1
	beq label88
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label91
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	beq label1035
label99:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label1044
label102:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label99
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label102
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	beq label1053
label110:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label113
	mov r6, r2
	cmp r4, #0
	bne label80
	movs r4, r3
	mov r6, r3
	bne label42
	b label2691
label1044:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label110
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label113
label2482:
	mov r6, r2
	cmp r4, #0
	bne label80
	b label2690
label88:
	ldr r10, [r5, #0]
	add r2, r2, r10
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label91
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label99
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label102
label2480:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label110
label1053:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label113
	b label2482
label40:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label22
	b label2466
label42:
	add r5, sp, #32
	mov r9, #0
	mov r8, r6
	mov r7, r4
	mov r3, r9
	ands r10, r6, #1
	bne label76
	b label955
label994:
	mov r6, r3
	cmp r4, #0
	bne label42
	movw r3, #32767
	cmp r0, r3
	bgt label40
	b label2679
label2685:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label99
	b label2693
label91:
	add r5, r5, #4
	ands r10, r8, #1
	bne label87
	ands r10, r7, #1
	bne label88
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label91
	b label2685
label2693:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label102
	b label2480
label1035:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label102
	b label2480
label941:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label22
	b label2673
label2691:
	movw r3, #32767
	cmp r0, r3
	bgt label40
	b label941
label2690:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label42
	b label2691
label113:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label110
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label113
	mov r6, r2
	cmp r4, #0
	bne label80
	b label2690
label135:
	cmp r4, #0
	beq label1093
label138:
	add r5, sp, #32
	mov r8, #0
	mov r9, r6
	mov r7, r4
	mov r3, r8
	ands r10, r6, #1
	bne label145
	ands r10, r4, #1
	bne label146
	b label2492
label2697:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label157
	b label2705
label145:
	ands r10, r7, #1
	bne label1102
label146:
	ldr r10, [r5, #0]
	add r3, r3, r10
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	bge label1111
label149:
	add r5, r5, #4
	ands r10, r9, #1
	bne label145
	ands r10, r7, #1
	bne label146
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label149
	b label2697
label1111:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	beq label2698
label157:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label1126
label160:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label157
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label160
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label168
label1135:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label171
	b label2497
label2700:
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label171
label2497:
	mov r6, r3
	cmp r4, #0
	bne label138
	b label2702
label1126:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label168
	b label2700
label2702:
	movw r3, #32767
	cmp r1, r3
	bgt label174
	b label2703
label168:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label1144
label171:
	add r5, r5, #4
	and r9, r8, r6
	ands r9, r9, #1
	bne label168
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label171
	mov r6, r3
	cmp r4, #0
	bne label138
	b label2702
label2495:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label168
	b label1135
label2705:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label160
	b label2495
label1102:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label149
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label157
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label160
	b label2495
label49:
	ldr r10, [r5, #0]
	add r3, r3, r10
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label52
	b label964
label76:
	ands r10, r7, #1
	beq label49
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
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
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label73
	b label2856
label964:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label74
	b label2676
label985:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label72
	b label2470
label74:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label73
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label69
	b label985
label2856:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	b label63
label2682:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label73
	b label2856
label63:
	and r9, r7, r6
	ands r9, r9, #1
	bne label69
	b label985
label2678:
	movw r3, #32767
	cmp r0, r3
	bgt label40
	b label2679
label69:
	ldr r9, [r5, #0]
	add r4, r4, r9
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	bge label994
label72:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label69
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label72
	mov r6, r3
	cmp r4, #0
	bne label42
	b label2678
label2675:
	add r5, sp, #32
	mov r8, #0
	mov r7, r6
	mov r6, r4
	and r9, r7, r4
	mov r4, r8
	ands r9, r9, #1
	bne label74
	b label2682
label52:
	add r5, r5, #4
	ands r10, r8, #1
	bne label76
	ands r10, r7, #1
	bne label49
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label52
	b label2675
label825:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	bne label826
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label825
	b label3027
label764:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	blt label763
	b label2635
label765:
	add r5, r5, #4
	ands r10, r9, #1
	bne label740
	b label2636
label766:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r3, r3, r10
	blt label765
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label764
	b label3012
label606:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2599
label607:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label606
	b label2600
label2601:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label608
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label607
	b label604
label723:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label724
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label723
	b label712
label73:
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
	blt label73
	b label2856
label1730:
	ands r10, r7, #1
	bne label530
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label556
	b label2777
label530:
	ldr r10, [r5, #0]
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	add r2, r2, r10
	blt label556
	b label2585
label543:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	beq label2586
label555:
	ldr r4, [r5, #0]
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	add r4, r9, r4
	blt label543
	b label2590
label556:
	add r5, r5, #4
	ands r10, r9, #1
	beq label2591
label557:
	ands r10, r7, #1
	beq label530
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label556
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label555
	b label2963
label2777:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label555
	b label2963
label2591:
	ands r10, r7, #1
	bne label530
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label556
	b label2777
label2963:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label543
label1755:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label554
	b label2778
label2586:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label543
	b label1755
label2778:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label553
label1771:
	mov r6, r2
	cmp r4, #0
	bne label523
label2587:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label482
	b label2779
label2588:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label553
	mov r6, r2
	cmp r4, #0
	bne label523
	b label2587
label763:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label764
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label763
	b label752
label516:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label502
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label516
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label515
	b label512
label553:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2588
label554:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label553
	b label2589
label2590:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label554
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label553
	b label1771
label1993:
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label732
	movw r3, #32767
	cmp r0, r3
	ble label2629
label769:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	ldr r3, [sp, #92]
	add r0, r0, #65536
	subs r0, r0, r3
	mov r3, r6
	mov r6, r2
	bne label678
	mov r0, r2
	movs r3, r1
	mov r6, #0
	bne label780
	movw r1, #32767
	ldr r4, [sp, #0]
	cmp r4, r1
	bgt label778
	b label2132
label1289:
	ands r10, r7, #1
	bne label261
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label265
	b label2724
label1870:
	ands r10, r7, #1
	bne label623
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label627
label2798:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label635
	b label2799
label623:
	ldr r10, [r5, #0]
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	add r3, r3, r10
	bge label2606
label627:
	add r5, r5, #4
	ands r10, r8, #1
	bne label650
	ands r10, r7, #1
	bne label623
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label627
	b label2798
label2799:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	bge label2608
label638:
	add r5, r5, #4
	mov r9, r4
	and r4, r8, r6
	ands r4, r4, #1
	bne label635
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label638
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r9, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label649
	b label646
label2608:
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label649
	b label646
label2803:
	ldr r3, [sp, #36]
	sdiv r0, r0, r3
	mov r3, r6
	mov r6, r2
	cmp r0, #0
	bne label562
	b label2797
label648:
	add r5, r5, #4
	and r9, r7, r6
	ands r9, r9, #1
	beq label2611
label649:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label648
	mov r6, r3
	cmp r4, #0
	bne label616
	movw r3, #32767
	cmp r0, r3
	bgt label653
	b label2803
label646:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label648
	b label1914
label2606:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	beq label1889
label635:
	ldr r4, [r5, #0]
	add r4, r9, r4
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label638
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label649
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label648
label1914:
	mov r6, r3
	cmp r4, #0
	bne label616
	b label2610
label1889:
	mov r4, r9
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label638
	b label2608
label2610:
	movw r3, #32767
	cmp r0, r3
	bgt label653
	b label2803
label2611:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label648
	mov r6, r3
	cmp r4, #0
	bne label616
	b label2610
label2830:
	movw r3, #32767
	cmp r1, r3
	bgt label835
	b label834
label1810:
	ands r10, r7, #1
	bne label610
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label586
	b label2788
label955:
	ands r10, r7, #1
	bne label49
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label52
	b label2675
label650:
	ands r10, r7, #1
	beq label623
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label627
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label635
	mov r4, r7
	add r7, r7, #1
	add r8, r8, r8, lsr #31
	add r6, r6, r6, lsr #31
	cmp r7, #16
	asr r8, r8, #1
	asr r6, r6, #1
	blt label638
	b label2608
label2635:
	ldr r5, [sp, #36]
	mov r7, #0
	movw r6, #65535
	mul r8, r4, r5
	mov r4, r7
	add r5, sp, #32
	and r9, r8, r6
	ands r9, r9, #1
	bne label762
	b label759
label928:
	cmp r2, #0
	bne label934
	mov r2, r6
	movs r4, r3
	mov r6, r3
	bne label42
	b label39
label906:
	cmp r2, #0
	bne label912
	movs r3, r1
	mov r6, #0
	bne label121
	b label1071
label870:
	ands r10, r7, #1
	beq label844
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label869
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label854
	b label2257
label826:
	ldr r9, [r5, #0]
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	add r4, r4, r9
	blt label825
	ldr r5, [sp, #36]
	mov r8, #0
	movw r6, #65535
	mul r7, r4, r5
	mov r4, r8
	add r5, sp, #32
	and r9, r7, r6
	ands r9, r9, #1
	bne label824
	b label821
label1363:
	ands r10, r7, #1
	bne label304
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label308
	b label2734
label1015:
	ands r10, r7, #1
	bne label88
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label91
	b label2685
label1171:
	ands r10, r7, #1
	bne label188
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label213
	b label2709
label1656:
	ands r10, r7, #1
	bne label491
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label494
	b label2767
label2698:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label160
	b label2495
label1246:
	add r4, r4, #1
	add r3, r3, r3, lsr #31
	cmp r4, #16
	asr r3, r3, #1
	blt label232
	cmp r2, #0
	bne label1260
	b label2716
label1977:
	add r7, r7, #1
	add r4, r4, r4, lsr #31
	cmp r7, #16
	asr r4, r4, #1
	blt label770
	cmp r2, #0
	bne label1990
	b label2813
label1424:
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label429
	cmp r8, #0
	bne label1437
	b label2742
label1635:
	mov r2, r8
	add r4, r4, #1
	add r7, r7, r7, lsr #31
	cmp r4, #16
	asr r7, r7, #1
	blt label475
	cmp r8, #0
	bne label1649
	b label2763
label2540:
	ldr r1, [sp, #36]
	ldr r3, [sp, #8]
	sdiv r3, r3, r1
	mov r1, r6
	cmp r3, #0
	str r3, [sp, #8]
	bgt label222
	b label433
label1144:
	mov r6, r3
	cmp r4, #0
	bne label138
	movw r3, #32767
	cmp r1, r3
	bgt label174
	b label2703
label1220:
	mov r6, r2
	cmp r4, #0
	bne label179
	movs r4, r3
	mov r6, r3
	bne label138
	b label2711
label2042:
	mov r6, r2
	cmp r4, #0
	bne label692
	movs r4, r3
	mov r6, r3
	bne label732
	b label2817
label2466:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label121
	b label1071
label2529:
	mov r0, r6
	movs r3, r1
	mov r6, #0
	bne label337
	b label1419
label2839:
	ldr r1, [sp, #36]
	ldr r4, [sp, #0]
	sdiv r4, r4, r1
	mov r1, r6
	cmp r4, #0
	str r4, [sp, #0]
	bgt label664
	b label663
label1593:
	mov r0, #0
	b label440
label2542:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label385
	b label2745
label1946:
	ldr r4, [sp, #16]
	ldr r5, [sp, #20]
	add r4, r4, #1
	add r5, r5, #4
	str r5, [sp, #20]
	str r4, [sp, #16]
	b label437
label2492:
	add r8, r8, #1
	add r9, r9, r9, lsr #31
	add r7, r7, r7, lsr #31
	cmp r8, #16
	asr r9, r9, #1
	asr r7, r7, #1
	blt label149
	b label2697
label2585:
	add r5, sp, #32
	mov r7, #0
	mov r8, r6
	mov r9, r7
	mov r6, r4
	and r4, r8, r4
	ands r4, r4, #1
	bne label555
	b label2963
label2001:
	add r9, r9, #1
	add r8, r8, r8, lsr #31
	add r7, r7, r7, lsr #31
	cmp r9, #16
	asr r8, r8, #1
	asr r7, r7, #1
	blt label725
	b label2621
label192:
	and r4, r8, r6
	ands r4, r4, #1
	bne label198
	b label1194
label2487:
	cmp r2, #0
	bne label1090
	b label2694
label2470:
	mov r6, r3
	cmp r4, #0
	bne label42
	b label2678
label2676:
	add r8, r8, #1
	add r7, r7, r7, lsr #31
	add r6, r6, r6, lsr #31
	cmp r8, #16
	asr r7, r7, #1
	asr r6, r6, #1
	blt label73
	b label2856
label2622:
	mov r6, r2
	cmp r4, #0
	bne label692
	b label2816
label479:
	cmp r4, #0
	bne label482
	b label1652
label1968:
	movs r3, r1
	mov r6, #0
	bne label780
	b label2811
label2507:
	mov r6, r2
	cmp r4, #0
	bne label179
	b label2710
