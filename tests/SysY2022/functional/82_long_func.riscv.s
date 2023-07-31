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
label7:
	ble a0, zero, label196
label792:
	mv a5, zero
	li t0, 1
	mv a4, a0
	mv a3, zero
	li t1, 16
	blt zero, t1, label16
	j label795
label2674:
	lw a4, 28(sp)
	mv a2, a3
	divw a0, a0, a4
	j label7
label978:
	li t2, 1
	mv a5, a2
	mv t1, zero
	mv t0, zero
	li t3, 16
	blt zero, t3, label120
	j label2675
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
label1015:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	li t4, 16
	blt zero, t4, label154
	j label1018
label2683:
	li a4, 32767
	bgt a2, a4, label162
	j label2682
label2684:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1015
	j label2683
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
	j label2674
label154:
	andi t4, t3, 1
	bne t4, zero, label158
	andi t4, t1, 1
	beq t4, zero, label2687
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
label1018:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	li t3, 16
	bge zero, t3, label140
label150:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label151
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label150
	j label140
label151:
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
	blt a5, t3, label150
label140:
	lw a5, 28(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	li t3, 16
	bge zero, t3, label1029
label146:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label149
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	li t3, 16
	blt t0, t3, label146
	j label2684
label149:
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	li t3, 16
	blt t0, t3, label146
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1015
	j label2683
label2885:
	mv a5, a4
	mv t0, a4
	j label127
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
	j label2679
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
	bne t1, zero, label1011
	j label2885
label127:
	bne t0, zero, label1015
label1014:
	li a4, 32767
	bgt a2, a4, label162
	j label2682
label2687:
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
label2651:
	mv a4, a2
	mv a3, zero
	j label108
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
	bne a5, zero, label811
	j label2651
label108:
	bne a2, zero, label978
label977:
	li a2, 32767
	bgt a0, a2, label113
	j label2674
label2682:
	lw t0, 28(sp)
	mv a4, a5
	divw a2, a2, t0
	bne a2, zero, label978
	j label2691
label2679:
	beq t1, zero, label2885
label1011:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1092
	mv a5, a4
	j label127
label1092:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label166
label1126:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1092
label2696:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1015
	j label1014
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
	j label2696
label166:
	li t4, 16
	blt t2, t4, label171
	j label1095
label1099:
	andi t4, t1, 1
	bne t4, zero, label174
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label166
label171:
	andi t4, t3, 1
	beq t4, zero, label1099
	andi t4, t1, 1
	bne t4, zero, label1104
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
	bge zero, t3, label2693
label192:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label193
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label192
	j label2693
label193:
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
label2693:
	lw t0, 28(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	li t3, 16
	blt zero, t3, label188
	j label1126
label1095:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label192
	j label2693
label1104:
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
label2691:
	li a2, 32767
	bgt a0, a2, label113
	j label2674
label795:
	bne a5, zero, label811
	j label2651
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
	bgt s1, zero, label1534
label398:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, 1
	li a1, 16
	blt s1, a1, label1155
	j label1154
label1534:
	li t0, 1
	mv a3, a0
	mv a5, zero
	mv a4, zero
	li t1, 16
	blt zero, t1, label404
	j label2750
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
label2790:
	li a2, 32767
	bgt a0, a2, label502
	j label2780
label404:
	and t1, t0, a3
	andi t0, t1, 1
	bne t0, zero, label405
	srliw t0, a3, 31
	addiw a4, a4, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	li t1, 16
	blt a4, t1, label404
	j label1538
label405:
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
	beq a5, zero, label2956
label1554:
	mv a4, a1
	mv a3, zero
	mv a1, a2
	beq a2, zero, label1557
label1558:
	mv t1, zero
	li t2, 1
	mv t0, a1
	mv a5, zero
	li t3, 16
	blt zero, t3, label490
	j label1565
label1566:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1647
	mv a5, a4
	j label1569
label1647:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	li t4, 16
	blt zero, t4, label465
	j label1650
label2774:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1570
	j label1569
label2775:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1647
	j label2774
label465:
	andi t4, t3, 1
	beq t4, zero, label1654
	andi t4, t1, 1
	bne t4, zero, label1662
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
label2768:
	lw a5, 28(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	li t3, 16
	blt zero, t3, label482
	j label1681
label486:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label487
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label486
	j label2768
label487:
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label486
	j label2768
label482:
	and t3, a5, t1
	andi t4, t3, 1
	bne t4, zero, label485
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label482
	j label2775
label485:
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
	blt t0, t3, label482
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1647
	j label2774
label1654:
	andi t4, t1, 1
	bne t4, zero, label470
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
label1565:
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1570
	j label1569
label490:
	and t2, t2, t0
	andi t3, t2, 1
	bne t3, zero, label493
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	li t3, 16
	blt a5, t3, label490
	j label2778
label493:
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
label1570:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	li t4, 16
	blt zero, t4, label451
	j label2756
label1610:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1570
	j label2761
label2755:
	lw t0, 28(sp)
	mv a4, a5
	divw a1, a1, t0
	bne a1, zero, label1558
	j label2757
label426:
	lw a4, 28(sp)
	lui t0, 16
	lw t1, 84(sp)
	divw a1, a1, a4
	addw a4, a1, t0
	subw a1, a4, t1
	mv a4, a5
	bne a1, zero, label1558
	j label2758
label2761:
	li a4, 32767
	bgt a1, a4, label426
	j label2755
label447:
	and t3, a5, t1
	andi t4, t3, 1
	bne t4, zero, label448
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
label448:
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
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
label2756:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label437
	j label1591
label451:
	andi t4, t3, 1
	bne t4, zero, label455
	andi t4, t1, 1
	bne t4, zero, label456
	j label1633
label455:
	andi t4, t1, 1
	bne t4, zero, label1638
label456:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label451
	j label2756
label437:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label440
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label437
	j label2759
label440:
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label437
	lw t0, 28(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, t3, label447
	j label1610
label1633:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label451
	j label2756
label1638:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label451
	j label2756
label1662:
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
label2759:
	lw t0, 28(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	li t3, 16
	blt zero, t3, label447
	j label1610
label2778:
	bne t1, zero, label1566
	j label1565
label2956:
	mv a4, a2
	mv a3, zero
	beq a2, zero, label1720
label1721:
	mv t1, zero
	li t2, 1
	mv t0, a2
	mv a5, zero
	li t3, 16
	blt zero, t3, label508
	j label2983
label1754:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1835
	mv a5, a4
	j label515
label1835:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	li t4, 16
	blt zero, t4, label578
	j label1838
label570:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label573
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	li t3, 16
	blt t0, t3, label570
	j label2800
label573:
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
	blt t0, t3, label570
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1835
	j label2799
label578:
	andi t4, t3, 1
	bne t4, zero, label583
	j label1877
label582:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a3, a3, t4
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label578
	j label1838
label583:
	andi t4, t1, 1
	beq t4, zero, label582
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label578
	j label1838
label1877:
	andi t4, t1, 1
	bne t4, zero, label582
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label578
label1838:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label574
label564:
	lw a5, 28(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	li t3, 16
	blt zero, t3, label570
	j label1849
label574:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label577
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label574
	j label564
label577:
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label574
	j label564
label508:
	and t2, t2, t0
	andi t3, t2, 1
	bne t3, zero, label509
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label508
	j label1738
label509:
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
label2983:
	mv a5, a4
	mv t0, a4
label515:
	bne t0, zero, label1758
label1757:
	li a4, 32767
	bgt a2, a4, label520
label2787:
	lw t0, 28(sp)
	mv a4, a5
	divw a2, a2, t0
	bne a2, zero, label1721
	j label2789
label1758:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	li t4, 16
	blt zero, t4, label526
	j label2788
label520:
	lw a4, 28(sp)
	lui t1, 16
	lw t0, 84(sp)
	divw a2, a2, a4
	addw a4, a2, t1
	subw a2, a4, t0
	mv a4, a5
	bne a2, zero, label1721
	j label2790
label2796:
	li a4, 32767
	bgt a2, a4, label520
	j label2787
label547:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label550
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	li t3, 16
	blt t0, t3, label547
	j label2797
label550:
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	li t3, 16
	blt t0, t3, label547
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1758
	j label2796
label526:
	andi t4, t3, 1
	bne t4, zero, label531
	andi t4, t1, 1
	beq t4, zero, label2792
label527:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label526
	j label1775
label531:
	andi t4, t1, 1
	beq t4, zero, label527
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label526
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	bge zero, t3, label2988
label537:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label538
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label537
	j label1799
label538:
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label537
	lw t0, 28(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, t3, label547
label1818:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1758
	j label2796
label1799:
	lw t0, 28(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	li t3, 16
	blt zero, t3, label547
	j label1818
label1775:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label537
	j label2988
label2792:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label526
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label537
label2988:
	lw t0, 28(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	li t3, 16
	blt zero, t3, label547
	j label1818
label1738:
	bne t1, zero, label1754
	j label2983
label2797:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1758
	j label2796
label2799:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1758
	j label1757
label2800:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1835
	j label2799
label2780:
	lw a4, 28(sp)
	mv a2, a3
	divw a0, a0, a4
	bgt a0, zero, label1534
	j label398
label2789:
	li a2, 32767
	bgt a0, a2, label502
	j label2780
label1538:
	bne a5, zero, label1554
	j label2956
label1591:
	lw t0, 28(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	li t3, 16
	blt zero, t3, label447
	j label1610
label2757:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1721
	j label1720
label1569:
	li a4, 32767
	bgt a1, a4, label426
	j label2755
label2758:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1721
label1720:
	li a2, 32767
	bgt a0, a2, label502
	j label2780
label1154:
	mv a0, zero
label199:
	li a1, 16
	bge a0, a1, label1158
	li a3, 2
	li a2, 1
	mv a1, a0
label201:
	ble a1, zero, label390
label1163:
	li t1, 1
	mv a4, a1
	mv t0, zero
	mv a5, zero
	li t2, 16
	blt zero, t2, label210
	j label1166
label1348:
	li a3, 32767
	bgt a1, a3, label307
label2722:
	lw a5, 28(sp)
	mv a3, a4
	divw a1, a1, a5
	j label201
label2700:
	mv a5, a3
	mv a4, zero
	j label302
label210:
	and t2, t1, a4
	andi t1, t2, 1
	bne t1, zero, label211
	srliw t1, a4, 31
	addiw a5, a5, 1
	add t2, a4, t1
	mv t1, zero
	sraiw a4, t2, 1
	li t2, 16
	blt a5, t2, label210
	j label1166
label211:
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
	bne t0, zero, label1182
	j label2700
label302:
	bne a3, zero, label1349
	j label1348
label2737:
	lw t1, 28(sp)
	mv a5, t0
	divw a3, a3, t1
	j label302
label358:
	lw a5, 28(sp)
	lui t2, 16
	lw t1, 84(sp)
	divw a3, a3, a5
	addw a5, a3, t2
	subw a3, a5, t1
	mv a5, t0
	bne a3, zero, label1349
	j label2739
label2743:
	li a5, 32767
	bgt a3, a5, label358
	j label2737
label380:
	and t4, t0, t2
	andi t5, t4, 1
	bne t5, zero, label381
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label380
	j label1489
label381:
	sh2add t4, t1, s0
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label380
	mv t0, a5
	mv t1, t3
	beq t3, zero, label2743
label1449:
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
	li t5, 16
	blt zero, t5, label384
	j label2738
label1489:
	mv t0, a5
	mv t1, t3
	bne t3, zero, label1449
	j label2743
label384:
	andi t5, t4, 1
	bne t5, zero, label389
	andi t5, t2, 1
	beq t5, zero, label1512
label388:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a5, a5, t6
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	li t5, 16
	blt t3, t5, label384
	j label2738
label389:
	andi t5, t2, 1
	beq t5, zero, label388
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	li t5, 16
	blt t3, t5, label384
	j label2738
label1512:
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	li t5, 16
	blt t3, t5, label384
label2738:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	li t4, 16
	bge zero, t4, label1470
label370:
	and t4, t1, t2
	andi t5, t4, 1
	bne t5, zero, label373
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t0, t4, label370
	j label2741
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
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	blt zero, t4, label380
	j label1489
label1185:
	mv a2, a4
	mv a5, a3
	mv a4, zero
	beq a3, zero, label1348
label1349:
	li t3, 1
	mv t0, a3
	mv t2, zero
	mv t1, zero
	li t4, 16
	blt zero, t4, label314
	j label2935
label1382:
	mv t0, a4
	mv t1, a5
	bne a5, zero, label1386
	mv t0, a5
	j label1448
label1386:
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
	li t5, 16
	blt zero, t5, label346
	j label1389
label342:
	and t5, t0, t2
	andi t4, t5, 1
	bne t4, zero, label345
	srliw t4, t2, 31
	srliw t5, t0, 31
	addiw t1, t1, 1
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label342
	j label2731
label345:
	sh2add t4, t1, s0
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t2, 31
	srliw t5, t0, 31
	addiw t1, t1, 1
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label342
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1386
	j label2730
label1389:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	li t4, 16
	blt zero, t4, label332
	j label1393
label346:
	andi t5, t4, 1
	bne t5, zero, label351
	andi t5, t2, 1
	beq t5, zero, label2733
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
	j label2728
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
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	blt zero, t4, label342
label1412:
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1386
	j label2730
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
label2935:
	mv t0, a5
	mv t1, a5
	j label354
label314:
	and t3, t3, t0
	andi t4, t3, 1
	bne t4, zero, label315
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t4, t0, t3
	mv t3, zero
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label314
	j label1366
label315:
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
label354:
	bne t1, zero, label1449
label1448:
	li a5, 32767
	bgt a3, a5, label358
	j label2737
label2733:
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
label1366:
	bne t2, zero, label1382
	j label2935
label2741:
	lw t0, 28(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	li t4, 16
	blt zero, t4, label380
	j label1489
label2730:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1449
	j label1448
label2731:
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1386
	j label2730
label2728:
	lw t0, 28(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	li t4, 16
	blt zero, t4, label342
	j label1412
label1470:
	lw t0, 28(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	li t4, 16
	blt zero, t4, label380
	j label1489
label1166:
	bne t0, zero, label1182
	j label2700
label1393:
	lw t0, 28(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	li t4, 16
	blt zero, t4, label342
	j label1412
label307:
	lw a3, 28(sp)
	lui t0, 16
	lw a5, 84(sp)
	divw a1, a1, a3
	addw a3, a1, t0
	subw a1, a3, a5
	mv a3, a4
	bgt a1, zero, label1163
	j label390
label2739:
	li a3, 32767
	bgt a1, a3, label307
	j label2722
label390:
	sh2add a3, a0, s0
	lw a1, 0(a3)
	beq a2, a1, label1528
	li a0, 1
label392:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 88
	ret
label1557:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1721
	j label1720
label1681:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1647
	j label2774
label2750:
	bne a5, zero, label1554
	j label2956
label1158:
	mv a0, zero
	j label392
label2788:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label537
	j label2988
label1528:
	addiw a0, a0, 1
	j label199
label1849:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1835
	j label2799
label1650:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label486
	j label2768
label1182:
	mv a5, a2
	mv a4, zero
	mv a2, a3
label215:
	beq a2, zero, label1185
label1186:
	mv t2, zero
	li t3, 1
	mv t1, a2
	mv t0, zero
	li t4, 16
	blt zero, t4, label296
	j label224
label2703:
	lw t1, 28(sp)
	mv a5, t0
	divw a2, a2, t1
	j label215
label1193:
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1198
	j label1197
label296:
	and t4, t3, t1
	andi t3, t4, 1
	bne t3, zero, label297
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	li t4, 16
	blt t0, t4, label296
	j label224
label297:
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
label1198:
	mv a5, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
	li t5, 16
	blt zero, t5, label235
	j label1201
label1244:
	mv t0, a5
	mv t1, t3
	bne t3, zero, label1198
label2710:
	li a5, 32767
	bgt a2, a5, label261
	j label2703
label256:
	and t4, t0, t2
	andi t5, t4, 1
	bne t5, zero, label257
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	li t4, 16
	blt t1, t4, label256
	j label1244
label257:
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	li t4, 16
	blt t1, t4, label256
	mv t0, a5
	mv t1, t3
	bne t3, zero, label1198
	j label2710
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
label235:
	andi t5, t4, 1
	bne t5, zero, label237
	andi t5, t2, 1
	beq t5, zero, label2705
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
	bge zero, t4, label2704
label246:
	and t5, t1, t2
	andi t4, t5, 1
	bne t4, zero, label249
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t0, t4, label246
	j label2708
label249:
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
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	blt zero, t4, label256
	j label1244
label1201:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	li t4, 16
	blt zero, t4, label246
label2704:
	lw t0, 28(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	j label251
label2705:
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
label251:
	li t4, 16
	blt t1, t4, label256
	j label1244
label224:
	bne t2, zero, label1194
	j label1193
label2708:
	lw t0, 28(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	li t4, 16
	blt zero, t4, label256
	j label1244
label1197:
	li a5, 32767
	bgt a2, a5, label261
	j label2703
label1194:
	mv t0, a4
	mv t1, a5
	bne a5, zero, label1275
	mv t0, a5
	j label1197
label1275:
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
	li t5, 16
	blt zero, t5, label290
	j label1278
label2716:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1198
	j label1197
label2717:
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1275
	j label2716
label1278:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	li t4, 16
	blt zero, t4, label276
	j label1282
label290:
	andi t5, t4, 1
	bne t5, zero, label291
	andi t5, t2, 1
	beq t5, zero, label2719
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
	j label2714
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
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	blt zero, t4, label286
label1301:
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1275
	j label2716
label286:
	and t4, t0, t2
	andi t5, t4, 1
	bne t5, zero, label289
	srliw t4, t2, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label286
	j label2717
label289:
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t2, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label286
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1275
	j label2716
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
label2719:
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
label2714:
	lw t0, 28(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	li t4, 16
	blt zero, t4, label286
	j label1301
label1282:
	lw t0, 28(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	li t4, 16
	blt zero, t4, label286
	j label1301
label1029:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1015
	j label2683
label811:
	mv a4, a1
	mv a3, zero
	mv a1, a2
label21:
	beq a1, zero, label814
label815:
	li t2, 1
	mv a5, a1
	mv t1, zero
	mv t0, zero
	li t3, 16
	blt zero, t3, label102
	j label30
label2654:
	lw t0, 28(sp)
	mv a4, a5
	divw a1, a1, t0
	j label21
label822:
	mv a5, a4
	mv t0, a4
	bne a4, zero, label827
	j label826
label102:
	and t3, t2, a5
	andi t2, t3, 1
	bne t2, zero, label103
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label102
	j label30
label103:
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
label827:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	li t4, 16
	blt zero, t4, label60
	j label830
label2657:
	li t0, 32767
	bgt a1, t0, label67
	j label2654
label56:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label59
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label56
	j label2658
label59:
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label56
	mv a5, a4
	mv t0, t2
	bne t2, zero, label827
	j label2657
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
label830:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label46
	j label834
label60:
	andi t4, t3, 1
	bne t4, zero, label61
	andi t4, t1, 1
	beq t4, zero, label2660
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
label46:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label49
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	li t3, 16
	blt a5, t3, label46
	j label2655
label49:
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
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	blt zero, t3, label56
label853:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label827
	j label2657
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
label2660:
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
label30:
	bne t1, zero, label823
	j label822
label2658:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label827
	j label2657
label2655:
	lw a5, 28(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	li t3, 16
	blt zero, t3, label56
	j label853
label834:
	lw a5, 28(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	li t3, 16
	blt zero, t3, label56
	j label853
label823:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label904
	mv a5, a4
	j label826
label904:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	li t4, 16
	blt zero, t4, label77
	j label907
label950:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label904
label2671:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label827
	j label826
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
	j label2671
label2665:
	lw t0, 28(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label93
label77:
	andi t4, t3, 1
	beq t4, zero, label911
	andi t4, t1, 1
	bne t4, zero, label79
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
	mv t2, zero
	mv t1, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label88
	j label2665
label93:
	li t3, 16
	blt t0, t3, label98
	j label950
label88:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label89
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	li t3, 16
	blt a5, t3, label88
	j label931
label89:
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
	blt a5, t3, label88
	lw t0, 28(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, t3, label98
	j label950
label79:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label77
	mv t2, zero
	mv t1, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label88
	j label2665
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
	mv t2, zero
	mv t1, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label88
	j label2665
label931:
	lw t0, 28(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	li t3, 16
	blt zero, t3, label98
	j label950
label826:
	li t0, 32767
	bgt a1, t0, label67
	j label2654
label814:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label978
	j label977
label907:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label88
	j label2665
label2675:
	bne t1, zero, label1011
	j label2885
