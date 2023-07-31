.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -88
	li a1, 1
	li a2, 2
	li a0, 4
	li a3, 8
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 24
	sd s1, 16(sp)
	sw a1, 24(sp)
	sw a2, 28(sp)
	sw a0, 32(sp)
	li a0, 16
	sw a3, 36(sp)
	li a3, 32
	sw a0, 40(sp)
	li a0, 64
	sw a3, 44(sp)
	li a3, 128
	sw a0, 48(sp)
	li a0, 256
	sw a3, 52(sp)
	li a3, 512
	sw a0, 56(sp)
	li a0, 1024
	sw a3, 60(sp)
	slli a4, a0, 1
	lui a3, 1
	sw a0, 64(sp)
	lui a0, 2
	sw a4, 68(sp)
	sw a3, 72(sp)
	lui a3, 4
	sw a0, 76(sp)
	lui a0, 8
	sw a3, 80(sp)
	sw a0, 84(sp)
	mv a0, zero
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	li a1, 1
	li a2, 2
	mv a0, a1
.p2align 2
label7:
	ble a0, zero, label196
label792:
	mv a5, zero
	li t0, 1
	mv a4, a0
	mv a3, zero
	j label11
.p2align 2
label977:
	li a2, 32767
	bgt a0, a2, label113
.p2align 2
label2673:
	lw a4, 28(sp)
	mv a2, a3
	divw a0, a0, a4
	j label7
.p2align 2
label113:
	lw a2, 28(sp)
	lui a5, 16
	lw a4, 84(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	bgt a0, zero, label792
	j label196
.p2align 2
label162:
	lw a4, 28(sp)
	lui t1, 16
	lw t0, 84(sp)
	divw a2, a2, a4
	addw a4, a2, t1
	subw a2, a4, t0
	mv a4, a5
	bne a2, zero, label978
	li a2, 32767
	bgt a0, a2, label113
	j label2673
label196:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	li s1, 2
	li a1, 16
	bge s1, a1, label1154
label1155:
	li a2, 2
	li a1, 1
	mv a0, s1
	ble s1, zero, label398
.p2align 2
label1534:
	li t0, 1
	mv a3, a0
	mv a5, zero
	mv a4, zero
	li t1, 16
	blt zero, t1, label404
	j label2957
.p2align 2
label1554:
	mv a4, a1
	mv a3, zero
	mv a1, a2
	beq a2, zero, label1557
.p2align 2
label1558:
	mv t1, zero
	li t2, 1
	mv t0, a1
	mv a5, zero
	li t3, 16
	bge zero, t3, label418
.p2align 2
label490:
	and t2, t2, t0
	andi t3, t2, 1
	beq t3, zero, label491
	sh2add t2, a5, s0
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	li t3, 16
	blt a5, t3, label490
	bne t1, zero, label1566
	j label1565
.p2align 2
label418:
	beq t1, zero, label1565
.p2align 2
label1566:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1647
	mv a5, a4
.p2align 2
label1569:
	li a4, 32767
	bgt a1, a4, label426
	j label2755
.p2align 2
label1570:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	li t4, 16
	blt zero, t4, label451
	j label2756
.p2align 2
label432:
	li t3, 16
	bge a5, t3, label1591
.p2align 2
label437:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label438
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	li t3, 16
	blt a5, t3, label437
	lw t0, 28(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, t3, label447
	j label1610
.p2align 2
label2761:
	li a4, 32767
	bgt a1, a4, label426
	j label2755
.p2align 2
label447:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label1615
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	li t3, 16
	blt t0, t3, label447
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1570
	j label2761
.p2align 2
label2756:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label432
.p2align 2
label456:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label451
	j label2756
.p2align 2
label1610:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1570
	j label2761
.p2align 2
label1615:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	li t3, 16
	blt t0, t3, label447
	j label1610
.p2align 2
label438:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	li t3, 16
	blt a5, t3, label437
	lw t0, 28(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, t3, label447
	j label1610
.p2align 2
label451:
	andi t4, t3, 1
	bne t4, zero, label455
	andi t4, t1, 1
	bne t4, zero, label456
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label451
	j label2756
.p2align 2
label1647:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label460
.p2align 2
label1681:
	mv a5, a3
	mv t0, t1
	bne t1, zero, label1647
.p2align 2
label2774:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1570
	j label1569
.p2align 2
label485:
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t3, t2, t4
	srliw t4, a5, 31
	sraiw t2, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label482
	mv a5, a3
	mv t0, t1
	bne t1, zero, label1647
	j label2774
.p2align 2
label460:
	li t4, 16
	bge t2, t4, label1650
.p2align 2
label465:
	andi t4, t3, 1
	beq t4, zero, label1654
	andi t4, t1, 1
	beq t4, zero, label470
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label465
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label486
.p2align 2
label2768:
	lw a5, 28(sp)
	mv t1, zero
	mv t0, zero
	mulw t2, t2, a5
	li a5, 65535
	j label477
.p2align 2
label487:
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	li t3, 16
	blt a5, t3, label486
	j label2768
.p2align 2
label477:
	li t3, 16
	bge t0, t3, label1681
.p2align 2
label482:
	and t3, a5, t2
	andi t4, t3, 1
	bne t4, zero, label485
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t3, t2, t4
	srliw t4, a5, 31
	sraiw t2, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label482
	mv a5, a3
	mv t0, t1
	bne t1, zero, label1647
	j label2774
.p2align 2
label1650:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	bge zero, t3, label2768
.p2align 2
label486:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label487
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	li t3, 16
	blt a5, t3, label486
	j label2768
.p2align 2
label455:
	andi t4, t1, 1
	beq t4, zero, label456
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label451
	j label2756
.p2align 2
label1654:
	andi t4, t1, 1
	beq t4, zero, label2769
.p2align 2
label470:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a3, a3, t4
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label465
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label486
	j label2768
.p2align 2
label2769:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label465
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label486
	j label2768
.p2align 2
label398:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, 1
	li a1, 16
	blt s1, a1, label1155
	j label2751
.p2align 2
label1557:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1721
.p2align 2
label1720:
	li a2, 32767
	bgt a0, a2, label502
.p2align 2
label2780:
	lw a4, 28(sp)
	mv a2, a3
	divw a0, a0, a4
	bgt a0, zero, label1534
	j label398
.p2align 2
label2757:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	beq a2, zero, label1720
.p2align 2
label1721:
	mv t1, zero
	li t2, 1
	mv t0, a2
	mv a5, zero
	li t3, 16
	blt zero, t3, label508
	j label2985
.p2align 2
label1754:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1835
	mv a5, a4
.p2align 2
label515:
	bne t0, zero, label1758
.p2align 2
label1757:
	li a4, 32767
	bgt a2, a4, label520
	j label2787
.p2align 2
label1758:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	li t4, 16
	blt zero, t4, label526
	j label2788
.p2align 2
label550:
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t3, t2, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t2, t3
	add t3, a5, t4
	sraiw t2, t5, 1
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label547
	mv a5, a4
	mv t0, t1
	bne t1, zero, label1758
	j label2796
.p2align 2
label542:
	li t3, 16
	blt t0, t3, label547
	j label1818
.p2align 2
label2796:
	li a4, 32767
	bgt a2, a4, label520
	j label2787
.p2align 2
label547:
	and t3, a5, t2
	andi t4, t3, 1
	bne t4, zero, label550
	srliw t3, t2, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t2, t3
	add t3, a5, t4
	sraiw t2, t5, 1
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label547
	mv a5, a4
	mv t0, t1
	bne t1, zero, label1758
	j label2796
.p2align 2
label2990:
	lw t0, 28(sp)
	mv t1, zero
	li a5, 65535
	mulw t2, t2, t0
	mv t0, zero
	j label542
.p2align 2
label526:
	andi t4, t3, 1
	bne t4, zero, label531
	andi t4, t1, 1
	bne t4, zero, label527
	j label2792
.p2align 2
label531:
	andi t4, t1, 1
	beq t4, zero, label527
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label526
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label537
	j label2990
.p2align 2
label1775:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label537
	j label2990
.p2align 2
label527:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a4, a4, t4
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label526
	j label1775
.p2align 2
label2792:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label526
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label537
	j label2990
.p2align 2
label2788:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	bge zero, t3, label2990
.p2align 2
label537:
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label1804
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	li t3, 16
	blt a5, t3, label537
	lw t0, 28(sp)
	mv t1, zero
	li a5, 65535
	mulw t2, t2, t0
	mv t0, zero
	blt zero, t3, label547
.p2align 2
label1818:
	mv a5, a4
	mv t0, t1
	bne t1, zero, label1758
	j label2796
.p2align 2
label1799:
	lw t0, 28(sp)
	mv t1, zero
	li a5, 65535
	mulw t2, t2, t0
	mv t0, zero
	li t3, 16
	blt zero, t3, label547
	j label1818
.p2align 2
label1804:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	li t3, 16
	blt a5, t3, label537
	j label1799
.p2align 2
label1835:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label554
.p2align 2
label565:
	li t3, 16
	bge t0, t3, label1849
.p2align 2
label570:
	and t4, a5, t2
	andi t3, t4, 1
	beq t3, zero, label571
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	li t3, 16
	blt t0, t3, label570
	mv a5, a3
	mv t0, t1
	bne t1, zero, label1835
.p2align 2
label2799:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1758
	j label1757
.p2align 2
label571:
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	li t3, 16
	blt t0, t3, label570
	mv a5, a3
	mv t0, t1
	bne t1, zero, label1835
	j label2799
.p2align 2
label554:
	li t4, 16
	bge t2, t4, label1838
.p2align 2
label578:
	andi t4, t3, 1
	bne t4, zero, label583
	andi t4, t1, 1
	bne t4, zero, label582
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label578
.p2align 2
label1838:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	bge zero, t3, label564
.p2align 2
label574:
	and t4, t0, t2
	andi t3, t4, 1
	bne t3, zero, label577
	j label575
.p2align 2
label582:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a3, a3, t5
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label578
	j label1838
.p2align 2
label583:
	andi t4, t1, 1
	beq t4, zero, label582
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label578
	j label1838
.p2align 2
label564:
	lw a5, 28(sp)
	mv t0, zero
	mulw t2, t1, a5
	li a5, 65535
	mv t1, zero
	j label565
.p2align 2
label575:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label574
	j label564
.p2align 2
label508:
	and t2, t2, t0
	andi t3, t2, 1
	beq t3, zero, label1743
	sh2add t2, a5, s0
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label508
	bne t1, zero, label1754
	j label2985
.p2align 2
label1738:
	bne t1, zero, label1754
	j label2985
.p2align 2
label1743:
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label508
	j label1738
.p2align 2
label2985:
	mv a5, a4
	mv t0, a4
	j label515
.p2align 2
label502:
	lw a2, 28(sp)
	lui a5, 16
	lw a4, 84(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	bgt a0, zero, label1534
	j label398
.p2align 2
label520:
	lw a4, 28(sp)
	lui t1, 16
	lw t0, 84(sp)
	divw a2, a2, a4
	addw a4, a2, t1
	subw a2, a4, t0
	mv a4, a5
	bne a2, zero, label1721
	li a2, 32767
	bgt a0, a2, label502
	j label2780
.p2align 2
label1591:
	lw t0, 28(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	li t3, 16
	blt zero, t3, label447
	j label1610
.p2align 2
label1565:
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1570
	j label1569
.p2align 2
label491:
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	li t3, 16
	blt a5, t3, label490
	bne t1, zero, label1566
	j label1565
.p2align 2
label577:
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label574
	j label564
.p2align 2
label2957:
	mv a4, a2
	mv a3, zero
	j label496
.p2align 2
label404:
	and t1, t0, a3
	andi t0, t1, 1
	beq t0, zero, label1543
	sh2add t1, a4, s0
	lw t0, 0(t1)
	addw a5, a5, t0
	srliw t0, a3, 31
	addiw a4, a4, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	li t1, 16
	blt a4, t1, label404
	bne a5, zero, label1554
	j label2957
.p2align 2
label1538:
	bne a5, zero, label1554
	j label2957
.p2align 2
label1543:
	srliw t0, a3, 31
	addiw a4, a4, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	li t1, 16
	blt a4, t1, label404
	j label1538
.p2align 2
label2787:
	lw t0, 28(sp)
	mv a4, a5
	divw a2, a2, t0
	bne a2, zero, label1721
	li a2, 32767
	bgt a0, a2, label502
	j label2780
.p2align 2
label426:
	lw a4, 28(sp)
	lui t0, 16
	lw t1, 84(sp)
	divw a1, a1, a4
	addw a4, a1, t0
	subw a1, a4, t1
	mv a4, a5
	bne a1, zero, label1558
	mv a1, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1721
	j label1720
.p2align 2
label814:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	beq a2, zero, label977
.p2align 2
label978:
	li t2, 1
	mv a5, a2
	mv t1, zero
	mv t0, zero
	li t3, 16
	blt zero, t3, label120
	j label2885
.p2align 2
label123:
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label120
	beq t1, zero, label2885
.p2align 2
label1011:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1092
	mv a5, a4
.p2align 2
label127:
	beq t0, zero, label1014
.p2align 2
label1015:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	j label130
.p2align 2
label2682:
	li a4, 32767
	bgt a2, a4, label162
	j label2681
.p2align 2
label147:
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	li t3, 16
	blt t0, t3, label146
	mv a5, a4
	mv t0, t1
	bne t1, zero, label1015
	j label2682
.p2align 2
label1014:
	li a4, 32767
	bgt a2, a4, label162
	j label2681
.p2align 2
label140:
	lw a5, 28(sp)
	mv t0, zero
	mulw t2, t1, a5
	li a5, 65535
	mv t1, zero
	li t3, 16
	bge zero, t3, label1029
.p2align 2
label146:
	and t4, a5, t2
	andi t3, t4, 1
	beq t3, zero, label147
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	li t3, 16
	blt t0, t3, label146
	mv a5, a4
	mv t0, t1
	bne t1, zero, label1015
	j label2682
.p2align 2
label130:
	li t4, 16
	blt t2, t4, label154
.p2align 2
label1018:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	bge zero, t3, label140
.p2align 2
label150:
	and t3, t0, t2
	andi t4, t3, 1
	bne t4, zero, label151
	j label1046
.p2align 2
label154:
	andi t4, t3, 1
	bne t4, zero, label158
	andi t4, t1, 1
	bne t4, zero, label155
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label154
	j label1018
.p2align 2
label1092:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label166
.p2align 2
label2695:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1015
	j label1014
.p2align 2
label189:
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label188
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1092
	j label2695
.p2align 2
label183:
	li t3, 16
	blt t0, t3, label188
.p2align 2
label1126:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1092
	j label2695
.p2align 2
label188:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label189
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label188
	j label1126
.p2align 2
label166:
	li t4, 16
	bge t2, t4, label1095
.p2align 2
label171:
	andi t4, t3, 1
	bne t4, zero, label172
	j label1099
.p2align 2
label2693:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label166
.p2align 2
label1095:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label192
	j label2692
.p2align 2
label172:
	andi t4, t1, 1
	beq t4, zero, label174
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label171
	j label1095
.p2align 2
label2692:
	lw t0, 28(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label183
.p2align 2
label155:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a4, a4, t4
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label154
	j label1018
.p2align 2
label158:
	andi t4, t1, 1
	beq t4, zero, label155
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label154
	j label1018
.p2align 2
label151:
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label150
	j label140
.p2align 2
label1099:
	andi t4, t1, 1
	beq t4, zero, label2693
.p2align 2
label174:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a3, a3, t5
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label171
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	bge zero, t3, label2692
.p2align 2
label192:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label1143
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label192
	j label2692
.p2align 2
label120:
	and t3, t2, a5
	andi t2, t3, 1
	bne t2, zero, label123
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label120
	bne t1, zero, label1011
.p2align 2
label2885:
	mv a5, a4
	mv t0, a4
	j label127
.p2align 2
label1046:
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label150
	j label140
.p2align 2
label2755:
	lw t0, 28(sp)
	mv a4, a5
	divw a1, a1, t0
	bne a1, zero, label1558
	j label2757
.p2align 2
label1143:
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label192
	j label2692
label1159:
	li a3, 2
	li a2, 1
	mv a1, a0
	j label201
.p2align 2
label2751:
	mv a0, zero
	li a1, 16
	blt zero, a1, label1159
	j label2698
.p2align 2
label201:
	ble a1, zero, label1162
label1163:
	li t1, 1
	mv a4, a1
	mv t0, zero
	mv a5, zero
	j label205
.p2align 2
label1348:
	li a3, 32767
	bgt a1, a3, label307
.p2align 2
label2722:
	lw a5, 28(sp)
	mv a3, a4
	divw a1, a1, a5
	j label201
.p2align 2
label205:
	li t2, 16
	bge a5, t2, label1166
.p2align 2
label210:
	and t2, t1, a4
	andi t1, t2, 1
	beq t1, zero, label1171
	sh2add t1, a5, s0
	lw t2, 0(t1)
	addw t0, t0, t2
	srliw t1, a4, 31
	addiw a5, a5, 1
	add t2, a4, t1
	mv t1, zero
	sraiw a4, t2, 1
	li t2, 16
	blt a5, t2, label210
	beq t0, zero, label2700
.p2align 2
label1182:
	mv a5, a2
	mv a4, zero
	mv a2, a3
.p2align 2
label215:
	beq a2, zero, label1185
.p2align 2
label1186:
	mv t2, zero
	li t3, 1
	mv t1, a2
	mv t0, zero
	li t4, 16
	blt zero, t4, label296
	j label224
.p2align 2
label1193:
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1198
	j label1197
.p2align 2
label296:
	and t4, t3, t1
	andi t3, t4, 1
	beq t3, zero, label1338
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	li t4, 16
	blt t0, t4, label296
	bne t2, zero, label1194
	j label1193
.p2align 2
label1185:
	mv a2, a4
	mv a5, a3
	mv a4, zero
	bne a3, zero, label1349
	j label1348
.p2align 2
label302:
	beq a3, zero, label1348
.p2align 2
label1349:
	li t3, 1
	mv t0, a3
	mv t2, zero
	mv t1, zero
	li t4, 16
	blt zero, t4, label314
	j label2935
.p2align 2
label1382:
	mv t0, a4
	mv t1, a5
	bne a5, zero, label1386
	mv t0, a5
.p2align 2
label1448:
	li a5, 32767
	bgt a3, a5, label358
.p2align 2
label2737:
	lw t1, 28(sp)
	mv a5, t0
	divw a3, a3, t1
	j label302
.p2align 2
label1449:
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
	li t5, 16
	blt zero, t5, label384
	j label2738
.p2align 2
label373:
	sh2add t4, t0, s0
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t0, t4, label370
	lw t0, 28(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	blt zero, t4, label380
.p2align 2
label1489:
	mv t0, a5
	mv t1, t2
	bne t2, zero, label1449
.p2align 2
label2743:
	li a5, 32767
	bgt a3, a5, label358
	j label2737
.p2align 2
label380:
	and t4, t0, t3
	andi t5, t4, 1
	beq t5, zero, label1494
	sh2add t4, t1, s0
	lw t5, 0(t4)
	addw t2, t2, t5
	srliw t5, t3, 31
	addiw t1, t1, 1
	add t4, t3, t5
	srliw t5, t0, 31
	sraiw t3, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label380
	mv t0, a5
	mv t1, t2
	bne t2, zero, label1449
	j label2743
.p2align 2
label2738:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	j label365
.p2align 2
label384:
	andi t5, t4, 1
	bne t5, zero, label389
	andi t5, t2, 1
	beq t5, zero, label1512
.p2align 2
label388:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a5, a5, t6
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label384
	j label2738
.p2align 2
label389:
	andi t5, t2, 1
	beq t5, zero, label388
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label384
	j label2738
.p2align 2
label365:
	li t4, 16
	bge t0, t4, label1470
.p2align 2
label370:
	and t5, t1, t2
	andi t4, t5, 1
	bne t4, zero, label373
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t0, t4, label370
	lw t0, 28(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	blt zero, t4, label380
	j label1489
.p2align 2
label1386:
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
	j label322
.p2align 2
label2730:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1449
	j label1448
.p2align 2
label342:
	and t5, t0, t3
	andi t4, t5, 1
	bne t4, zero, label345
	srliw t5, t3, 31
	addiw t1, t1, 1
	add t4, t3, t5
	srliw t5, t0, 31
	sraiw t3, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label342
	mv t0, a4
	mv t1, t2
	bne t2, zero, label1386
	j label2730
.p2align 2
label1197:
	li a5, 32767
	ble a2, a5, label2703
.p2align 2
label261:
	lw a5, 28(sp)
	lui t1, 16
	lw t2, 84(sp)
	divw a2, a2, a5
	addw a5, a2, t1
	subw a2, a5, t2
	mv a5, t0
	bne a2, zero, label1186
	mv a2, a4
	mv a5, a3
	mv a4, zero
	bne a3, zero, label1349
	j label1348
.p2align 2
label1198:
	mv a5, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
	j label230
.p2align 2
label2704:
	lw t0, 28(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	li t4, 16
	blt zero, t4, label256
	j label1244
.p2align 2
label2710:
	li a5, 32767
	bgt a2, a5, label261
	j label2703
.p2align 2
label256:
	and t4, t0, t3
	andi t5, t4, 1
	beq t5, zero, label1249
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t2, t2, t4
	srliw t4, t3, 31
	addiw t1, t1, 1
	add t5, t3, t4
	srliw t4, t0, 31
	sraiw t3, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	li t4, 16
	blt t1, t4, label256
	mv t0, a5
	mv t1, t2
	bne t2, zero, label1198
	j label2710
.p2align 2
label1512:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label384
	j label2738
.p2align 2
label322:
	li t5, 16
	blt t3, t5, label346
.p2align 2
label1389:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	j label327
.p2align 2
label346:
	andi t5, t4, 1
	bne t5, zero, label351
	andi t5, t2, 1
	bne t5, zero, label347
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label346
	j label1389
.p2align 2
label327:
	li t4, 16
	bge t0, t4, label1393
.p2align 2
label332:
	and t4, t1, t2
	andi t5, t4, 1
	bne t5, zero, label335
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t0, t4, label332
	lw t0, 28(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	blt zero, t4, label342
	j label1412
.p2align 2
label335:
	sh2add t4, t0, s0
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t0, t4, label332
	lw t0, 28(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	blt zero, t4, label342
.p2align 2
label1412:
	mv t0, a4
	mv t1, t2
	bne t2, zero, label1386
	j label2730
.p2align 2
label230:
	li t5, 16
	bge t3, t5, label1201
.p2align 2
label235:
	andi t5, t4, 1
	bne t5, zero, label237
	andi t5, t2, 1
	bne t5, zero, label236
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label235
	mv t2, t0
	mv t3, zero
	mv t0, zero
	li t4, 16
	bge zero, t4, label2704
.p2align 2
label246:
	and t5, t1, t2
	andi t4, t5, 1
	beq t4, zero, label247
	sh2add t5, t0, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t0, t4, label246
	lw t0, 28(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	blt zero, t4, label256
	j label1244
.p2align 2
label1201:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	li t4, 16
	blt zero, t4, label246
	j label2704
.p2align 2
label236:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a5, a5, t6
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label235
	j label1201
.p2align 2
label247:
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t0, t4, label246
	lw t0, 28(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	blt zero, t4, label256
.p2align 2
label1244:
	mv t0, a5
	mv t1, t2
	bne t2, zero, label1198
	j label2710
.p2align 2
label1194:
	mv t0, a4
	mv t1, a5
	bne a5, zero, label1275
	mv t0, a5
	j label1197
.p2align 2
label347:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a4, a4, t6
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label346
	j label1389
.p2align 2
label351:
	andi t5, t2, 1
	beq t5, zero, label347
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label346
	j label1389
.p2align 2
label1275:
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
	j label266
.p2align 2
label279:
	sh2add t5, t0, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t0, t4, label276
	lw t0, 28(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	blt zero, t4, label286
.p2align 2
label1301:
	mv t0, a4
	mv t1, t2
	bne t2, zero, label1275
.p2align 2
label2716:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1198
	j label1197
.p2align 2
label286:
	and t4, t0, t3
	andi t5, t4, 1
	bne t5, zero, label289
	srliw t4, t3, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t3, t4
	add t4, t0, t6
	sraiw t3, t5, 1
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label286
	mv t0, a4
	mv t1, t2
	bne t2, zero, label1275
	j label2716
.p2align 2
label271:
	li t4, 16
	bge t0, t4, label1282
.p2align 2
label276:
	and t5, t1, t2
	andi t4, t5, 1
	bne t4, zero, label279
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t0, t4, label276
	lw t0, 28(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	blt zero, t4, label286
	j label1301
.p2align 2
label266:
	li t5, 16
	bge t3, t5, label1278
.p2align 2
label290:
	andi t5, t4, 1
	bne t5, zero, label291
	andi t5, t2, 1
	bne t5, zero, label292
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label290
.p2align 2
label1278:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	j label271
.p2align 2
label292:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a4, a4, t6
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label290
	j label1278
.p2align 2
label237:
	andi t5, t2, 1
	beq t5, zero, label236
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label235
	mv t2, t0
	mv t3, zero
	mv t0, zero
	li t4, 16
	blt zero, t4, label246
	j label2704
.p2align 2
label291:
	andi t5, t2, 1
	beq t5, zero, label292
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label290
	j label1278
.p2align 2
label1470:
	lw t0, 28(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	li t4, 16
	blt zero, t4, label380
	j label1489
.p2align 2
label314:
	and t3, t3, t0
	andi t4, t3, 1
	beq t4, zero, label1371
	sh2add t4, t1, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t4, t0, t3
	mv t3, zero
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label314
	bne t2, zero, label1382
	j label2935
.p2align 2
label1366:
	bne t2, zero, label1382
	j label2935
.p2align 2
label1371:
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t4, t0, t3
	mv t3, zero
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label314
	j label1366
.p2align 2
label2935:
	mv t0, a5
	mv t1, a5
	j label354
.p2align 2
label358:
	lw a5, 28(sp)
	lui t2, 16
	lw t1, 84(sp)
	divw a3, a3, a5
	addw a5, a3, t2
	subw a3, a5, t1
	mv a5, t0
	bne a3, zero, label1349
	li a3, 32767
	bgt a1, a3, label307
	j label2722
.p2align 2
label224:
	bne t2, zero, label1194
	j label1193
.p2align 2
label1338:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	li t4, 16
	blt t0, t4, label296
	j label224
.p2align 2
label1494:
	srliw t5, t3, 31
	addiw t1, t1, 1
	add t4, t3, t5
	srliw t5, t0, 31
	sraiw t3, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label380
	j label1489
.p2align 2
label345:
	sh2add t4, t1, s0
	lw t5, 0(t4)
	addw t2, t2, t5
	srliw t5, t3, 31
	addiw t1, t1, 1
	add t4, t3, t5
	srliw t5, t0, 31
	sraiw t3, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label342
	mv t0, a4
	mv t1, t2
	bne t2, zero, label1386
	j label2730
.p2align 2
label1393:
	lw t0, 28(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	li t4, 16
	blt zero, t4, label342
	j label1412
.p2align 2
label289:
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t2, t2, t4
	srliw t4, t3, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t3, t4
	add t4, t0, t6
	sraiw t3, t5, 1
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label286
	mv t0, a4
	mv t1, t2
	bne t2, zero, label1275
	j label2716
.p2align 2
label1282:
	lw t0, 28(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	li t4, 16
	blt zero, t4, label286
	j label1301
.p2align 2
label1249:
	srliw t4, t3, 31
	addiw t1, t1, 1
	add t5, t3, t4
	srliw t4, t0, 31
	sraiw t3, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	li t4, 16
	blt t1, t4, label256
	j label1244
.p2align 2
label1166:
	bne t0, zero, label1182
	j label2700
.p2align 2
label1171:
	srliw t1, a4, 31
	addiw a5, a5, 1
	add t2, a4, t1
	mv t1, zero
	sraiw a4, t2, 1
	li t2, 16
	blt a5, t2, label210
	j label1166
.p2align 2
label11:
	li t1, 16
	blt a3, t1, label16
.p2align 2
label795:
	bne a5, zero, label811
	j label2650
.p2align 2
label16:
	and t1, t0, a4
	andi t0, t1, 1
	bne t0, zero, label17
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	li t1, 16
	blt a3, t1, label16
	j label795
.p2align 2
label2700:
	mv a5, a3
	mv a4, zero
	j label302
.p2align 2
label307:
	lw a3, 28(sp)
	lui t0, 16
	lw a5, 84(sp)
	divw a1, a1, a3
	addw a3, a1, t0
	subw a1, a3, a5
	mv a3, a4
	bgt a1, zero, label1163
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a2, a1, label1529
	j label2699
label199:
	li a1, 16
	blt a0, a1, label1159
	j label2698
.p2align 2
label1162:
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a2, a1, label1529
label2699:
	addiw a0, a0, 1
	j label199
.p2align 2
label2650:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label978
	j label977
.p2align 2
label2681:
	lw t0, 28(sp)
	mv a4, a5
	divw a2, a2, t0
	bne a2, zero, label978
	li a2, 32767
	bgt a0, a2, label113
	j label2673
.p2align 2
label17:
	sh2add t1, a3, s0
	lw t0, 0(t1)
	addw a5, a5, t0
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	li t1, 16
	blt a3, t1, label16
	beq a5, zero, label2650
.p2align 2
label811:
	mv a4, a1
	mv a3, zero
	mv a1, a2
.p2align 2
label21:
	beq a1, zero, label814
.p2align 2
label815:
	li t2, 1
	mv a5, a1
	mv t1, zero
	mv t0, zero
	j label25
.p2align 2
label826:
	li t0, 32767
	bgt a1, t0, label67
.p2align 2
label2653:
	lw t0, 28(sp)
	mv a4, a5
	divw a1, a1, t0
	j label21
.p2align 2
label25:
	li t3, 16
	blt t0, t3, label102
	j label30
.p2align 2
label822:
	mv a5, a4
	mv t0, a4
	bne a4, zero, label827
	j label826
.p2align 2
label102:
	and t3, t2, a5
	andi t2, t3, 1
	beq t2, zero, label967
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label102
	bne t1, zero, label823
	j label822
.p2align 2
label827:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	j label36
.p2align 2
label834:
	lw a5, 28(sp)
	mv t1, zero
	mv t0, zero
	mulw t2, t2, a5
	li a5, 65535
	li t3, 16
	blt zero, t3, label56
.p2align 2
label853:
	mv a5, a4
	mv t0, t1
	bne t1, zero, label827
	j label2656
.p2align 2
label41:
	li t3, 16
	bge a5, t3, label834
.p2align 2
label46:
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label47
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	li t3, 16
	blt a5, t3, label46
	lw a5, 28(sp)
	mv t1, zero
	mv t0, zero
	mulw t2, t2, a5
	li a5, 65535
	blt zero, t3, label56
	j label853
.p2align 2
label2656:
	li t0, 32767
	bgt a1, t0, label67
	j label2653
.p2align 2
label56:
	and t3, a5, t2
	andi t4, t3, 1
	bne t4, zero, label59
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t3, t2, t4
	srliw t4, a5, 31
	sraiw t2, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label56
	mv a5, a4
	mv t0, t1
	bne t1, zero, label827
	j label2656
.p2align 2
label36:
	li t4, 16
	bge t2, t4, label830
.p2align 2
label60:
	andi t4, t3, 1
	bne t4, zero, label61
	andi t4, t1, 1
	bne t4, zero, label65
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label60
.p2align 2
label830:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label41
.p2align 2
label61:
	andi t4, t1, 1
	beq t4, zero, label65
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label60
	j label830
.p2align 2
label30:
	beq t1, zero, label822
.p2align 2
label823:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label904
	mv a5, a4
	j label826
.p2align 2
label904:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label72
.p2align 2
label2670:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label827
	j label826
.p2align 2
label99:
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label98
	mv a5, a3
	mv t0, t2
	bne t2, zero, label904
	j label2670
.p2align 2
label93:
	li t3, 16
	bge t0, t3, label950
.p2align 2
label98:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label99
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label98
	j label950
.p2align 2
label88:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label936
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	li t3, 16
	blt a5, t3, label88
	lw t0, 28(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	blt zero, t3, label98
.p2align 2
label950:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label904
	j label2670
.p2align 2
label72:
	li t4, 16
	blt t2, t4, label77
	j label907
.p2align 2
label2664:
	lw t0, 28(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label93
.p2align 2
label77:
	andi t4, t3, 1
	beq t4, zero, label911
	andi t4, t1, 1
	beq t4, zero, label81
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label77
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label88
	j label2664
.p2align 2
label911:
	andi t4, t1, 1
	bne t4, zero, label81
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label77
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label88
	j label2664
.p2align 2
label931:
	lw t0, 28(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	li t3, 16
	blt zero, t3, label98
	j label950
.p2align 2
label936:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	li t3, 16
	blt a5, t3, label88
	j label931
.p2align 2
label47:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	li t3, 16
	blt a5, t3, label46
	lw a5, 28(sp)
	mv t1, zero
	mv t0, zero
	mulw t2, t2, a5
	li a5, 65535
	blt zero, t3, label56
	j label853
.p2align 2
label59:
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t3, t2, t4
	srliw t4, a5, 31
	sraiw t2, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label56
	mv a5, a4
	mv t0, t1
	bne t1, zero, label827
	j label2656
.p2align 2
label81:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a3, a3, t4
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label77
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label88
	j label2664
.p2align 2
label65:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a4, a4, t4
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label60
	j label830
.p2align 2
label67:
	lw a4, 28(sp)
	lui t1, 16
	lw t0, 84(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	bne a1, zero, label815
	mv a1, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label978
	j label977
.p2align 2
label2703:
	lw t1, 28(sp)
	mv a5, t0
	divw a2, a2, t1
	j label215
.p2align 2
label967:
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label102
	j label30
.p2align 2
label2698:
	mv a0, zero
label392:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 88
	ret
.p2align 2
label1154:
	mv a0, zero
	li a1, 16
	blt zero, a1, label1159
	j label2698
label1529:
	li a0, 1
	j label392
.p2align 2
label496:
	bne a2, zero, label1721
	j label1720
.p2align 2
label907:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label88
	j label2664
.p2align 2
label1029:
	mv a5, a4
	mv t0, t1
	bne t1, zero, label1015
	j label2682
.p2align 2
label1849:
	mv a5, a3
	mv t0, t1
	bne t1, zero, label1835
	j label2799
.p2align 2
label354:
	bne t1, zero, label1449
	j label1448
