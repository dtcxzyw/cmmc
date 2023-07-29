.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -88
	li a1, 1
	li a2, 2
	li a3, 4
	li a0, 8
	li a4, 256
	sd s0, 80(sp)
	addi s0, sp, 0
	sd s1, 72(sp)
	sd ra, 64(sp)
	sw a1, 0(sp)
	sw a2, 4(sp)
	sw a3, 8(sp)
	li a3, 16
	sw a0, 12(sp)
	li a0, 32
	sw a3, 16(sp)
	li a3, 64
	sw a0, 20(sp)
	li a0, 128
	sw a3, 24(sp)
	li a3, 512
	sw a0, 28(sp)
	li a0, 1024
	sw a4, 32(sp)
	lui a4, 4
	sw a3, 36(sp)
	slli a3, a0, 1
	sw a0, 40(sp)
	lui a0, 1
	sw a3, 44(sp)
	lui a3, 2
	sw a0, 48(sp)
	lui a0, 8
	sw a3, 52(sp)
	sw a4, 56(sp)
	sw a0, 60(sp)
	mv a0, zero
.p2align 2
label2:
	ble a0, zero, label191
label788:
	li t0, 1
	mv a3, a0
	mv a5, zero
	mv a4, zero
.p2align 2
label6:
	li t1, 16
	bge a4, t1, label791
.p2align 2
label11:
	and t1, t0, a3
	andi t0, t1, 1
	bne t0, zero, label14
	srliw t0, a3, 31
	addiw a4, a4, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label6
.p2align 2
label14:
	sh2add t0, a4, s0
	lw t1, 0(t0)
	addw a5, a5, t1
	srliw t0, a3, 31
	addiw a4, a4, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	li t1, 16
	blt a4, t1, label11
	j label791
.p2align 2
label810:
	li a2, 32767
	bgt a0, a2, label104
	lw a4, 4(sp)
	mv a2, a3
	divw a0, a0, a4
	j label2
.p2align 2
label885:
	li a4, 32767
	bgt a2, a4, label97
	lw t0, 4(sp)
	mv a4, a5
	divw a2, a2, t0
	j label18
.p2align 2
label886:
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label66
.p2align 2
label920:
	mv a5, a4
	mv t0, t1
	bne t1, zero, label886
	j label885
.p2align 2
label89:
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t3, t2, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t2, t3
	add t3, a5, t4
	sraiw t2, t5, 1
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label88
	j label920
.p2align 2
label97:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a2, a2, a4
	addw a4, a2, t0
	subw a2, a4, t1
	mv a4, a5
	bne a2, zero, label811
	j label810
.p2align 2
label104:
	lw a2, 4(sp)
	lui a5, 16
	lw a4, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	bgt a0, zero, label788
label191:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	li a1, 1
	li a2, 2
	mv a0, a1
	j label192
.p2align 2
label2665:
	lw a5, 4(sp)
	mv t0, zero
	mulw t2, t1, a5
	li a5, 65535
	mv t1, zero
.p2align 2
label83:
	li t3, 16
	bge t0, t3, label920
.p2align 2
label88:
	and t4, a5, t2
	andi t3, t4, 1
	bne t3, zero, label89
	srliw t3, t2, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t2, t3
	add t3, a5, t4
	sraiw t2, t5, 1
	sraiw a5, t3, 1
	j label83
.p2align 2
label93:
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
	blt a5, t3, label92
	j label2665
.p2align 2
label77:
	li t3, 16
	blt a5, t3, label92
	j label2665
.p2align 2
label2668:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label77
.p2align 2
label92:
	and t3, t0, t2
	andi t4, t3, 1
	bne t4, zero, label93
	j label2668
.p2align 2
label66:
	li t4, 16
	blt t2, t4, label71
	j label889
.p2align 2
label73:
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
	j label66
.p2align 2
label71:
	andi t4, t3, 1
	bne t4, zero, label72
	andi t4, t1, 1
	bne t4, zero, label73
	j label2666
.p2align 2
label72:
	andi t4, t1, 1
	beq t4, zero, label73
	j label2666
.p2align 2
label889:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label92
	j label2665
.p2align 2
label2653:
	mv a1, a3
	mv a4, a2
	mv a3, zero
.p2align 2
label18:
	beq a2, zero, label810
.p2align 2
label811:
	li t2, 1
	mv a5, a2
	mv t1, zero
	mv t0, zero
.p2align 2
label22:
	li t3, 16
	blt t0, t3, label99
	j label814
.p2align 2
label2656:
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	j label22
.p2align 2
label99:
	and t3, t2, a5
	andi t2, t3, 1
	bne t2, zero, label100
	j label2656
.p2align 2
label106:
	beq a1, zero, label2653
.p2align 2
label988:
	mv t1, zero
	li t2, 1
	mv t0, a1
	mv a5, zero
	j label110
.p2align 2
label1073:
	li a4, 32767
	bgt a1, a4, label189
	lw t0, 4(sp)
	mv a4, a5
	divw a1, a1, t0
	j label106
.p2align 2
label1074:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	j label158
.p2align 2
label1120:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1074
	j label1073
.p2align 2
label185:
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
	blt t0, t3, label184
	j label1120
.p2align 2
label189:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	bne a1, zero, label988
	j label2653
.p2align 2
label158:
	li t4, 16
	bge t2, t4, label1077
	andi t4, t3, 1
	bne t4, zero, label166
	andi t4, t1, 1
	bne t4, zero, label164
.p2align 2
label2692:
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label158
.p2align 2
label166:
	andi t4, t1, 1
	beq t4, zero, label164
	j label2692
.p2align 2
label2666:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label66
.p2align 2
label2691:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label179
.p2align 2
label169:
	li t3, 16
	bge a5, t3, label2691
.p2align 2
label174:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label177
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label169
.p2align 2
label177:
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
	blt a5, t3, label174
	j label2691
.p2align 2
label179:
	li t3, 16
	bge t0, t3, label1120
.p2align 2
label184:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label185
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label179
.p2align 2
label164:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label158
.p2align 2
label1077:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label174
	j label2691
.p2align 2
label192:
	ble a0, zero, label381
label1151:
	mv a5, zero
	li t0, 1
	mv a4, a0
	mv a3, zero
.p2align 2
label196:
	li t1, 16
	bge a3, t1, label1154
.p2align 2
label201:
	and t1, t0, a4
	andi t0, t1, 1
	bne t0, zero, label202
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	j label196
.p2align 2
label1173:
	li a2, 32767
	bgt a0, a2, label213
	lw a4, 4(sp)
	mv a2, a3
	divw a0, a0, a4
	j label192
.p2align 2
label213:
	lw a2, 4(sp)
	lui a4, 16
	lw a5, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a4
	subw a0, a2, a5
	mv a2, a3
	bgt a0, zero, label1151
label381:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	li s1, 2
	li a1, 16
	bge s1, a1, label1513
label1514:
	li a2, 2
	li a1, 1
	mv a0, s1
	j label384
.p2align 2
label1513:
	mv a0, zero
	li a1, 16
	blt zero, a1, label1882
	j label2760
.p2align 2
label384:
	ble a0, zero, label388
.p2align 2
label1518:
	mv a5, zero
	li t0, 1
	mv a4, a0
	mv a3, zero
	li t1, 16
	blt zero, t1, label570
	j label1522
.p2align 2
label388:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, 1
	li a1, 16
	blt s1, a1, label1514
	j label1513
.p2align 2
label1522:
	beq a5, zero, label2763
	mv a4, a1
	mv a3, zero
	mv a1, a2
	bne a2, zero, label1708
	j label2765
.p2align 2
label1530:
	li a2, 32767
	bgt a0, a2, label483
	lw a4, 4(sp)
	mv a2, a3
	divw a0, a0, a4
	j label384
.p2align 2
label483:
	lw a2, 4(sp)
	lui a5, 16
	lw a4, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	bgt a0, zero, label1518
	j label388
label1882:
	li a3, 2
	li a2, 1
	mv a1, a0
	j label578
.p2align 2
label2765:
	mv a1, a3
	mv a4, a2
	mv a3, zero
.p2align 2
label397:
	beq a2, zero, label1530
.p2align 2
label1531:
	mv t1, zero
	li t2, 1
	mv t0, a2
	mv a5, zero
	j label401
.p2align 2
label485:
	beq a1, zero, label2765
.p2align 2
label1708:
	mv t1, zero
	li t2, 1
	mv t0, a1
	mv a5, zero
.p2align 2
label489:
	li t3, 16
	blt a5, t3, label494
.p2align 2
label1711:
	bne t1, zero, label1727
	j label2792
.p2align 2
label494:
	and t3, t2, t0
	andi t2, t3, 1
	bne t2, zero, label497
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label489
.p2align 2
label497:
	sh2add t2, a5, s0
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label494
	j label1711
.p2align 2
label1727:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1731
	j label1730
.p2align 2
label1793:
	li a4, 32767
	bgt a1, a4, label568
	lw t0, 4(sp)
	mv a4, a5
	divw a1, a1, t0
	j label485
.p2align 2
label1794:
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label537
.p2align 2
label1840:
	mv a5, a4
	mv t0, t1
	bne t1, zero, label1794
	j label1793
.p2align 2
label564:
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t3, t2, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t2, t3
	add t3, a5, t5
	sraiw t2, t4, 1
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label563
	j label1840
.p2align 2
label568:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t0
	subw a1, a4, t1
	mv a4, a5
	bne a1, zero, label1708
	j label2765
.p2align 2
label2808:
	lw a5, 4(sp)
	mv t0, zero
	mulw t2, t1, a5
	li a5, 65535
	mv t1, zero
	j label558
.p2align 2
label548:
	li t3, 16
	bge a5, t3, label2808
.p2align 2
label553:
	and t3, t0, t2
	andi t4, t3, 1
	bne t4, zero, label556
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label548
.p2align 2
label556:
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	li t3, 16
	blt a5, t3, label553
	j label2808
.p2align 2
label558:
	li t3, 16
	bge t0, t3, label1840
.p2align 2
label563:
	and t3, a5, t2
	andi t4, t3, 1
	bne t4, zero, label564
	srliw t3, t2, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t2, t3
	add t3, a5, t5
	sraiw t2, t4, 1
	sraiw a5, t3, 1
	j label558
.p2align 2
label1730:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label534
.p2align 2
label1731:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label502
.p2align 2
label2795:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
.p2align 2
label513:
	li t3, 16
	blt t0, t3, label518
.p2align 2
label1745:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1731
	j label1730
.p2align 2
label518:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label521
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label513
.p2align 2
label521:
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
	blt t0, t3, label518
	j label1745
.p2align 2
label534:
	bne t0, zero, label1794
	j label1793
.p2align 2
label537:
	li t4, 16
	blt t2, t4, label542
	j label1797
.p2align 2
label2809:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label537
.p2align 2
label542:
	andi t4, t3, 1
	bne t4, zero, label547
	andi t4, t1, 1
	bne t4, zero, label546
	j label2809
.p2align 2
label547:
	andi t4, t1, 1
	bne t4, zero, label1817
.p2align 2
label546:
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
	blt t2, t4, label542
.p2align 2
label1797:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label553
	j label2808
.p2align 2
label1817:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label542
	j label1797
.p2align 2
label507:
	li t3, 16
	blt a5, t3, label522
	j label2795
.p2align 2
label2797:
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label507
.p2align 2
label522:
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label2797
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
	blt a5, t3, label522
	j label2795
.p2align 2
label502:
	li t4, 16
	bge t2, t4, label1734
.p2align 2
label526:
	andi t4, t3, 1
	bne t4, zero, label527
	andi t4, t1, 1
	bne t4, zero, label530
	j label1789
.p2align 2
label527:
	andi t4, t1, 1
	beq t4, zero, label530
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label502
.p2align 2
label1789:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label526
.p2align 2
label1734:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label522
	j label2795
.p2align 2
label530:
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
	blt t2, t4, label526
	j label1734
.p2align 2
label401:
	li t3, 16
	blt a5, t3, label478
	j label1534
.p2align 2
label2768:
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label401
.p2align 2
label478:
	and t2, t2, t0
	andi t3, t2, 1
	bne t3, zero, label479
	j label2768
.p2align 2
label1534:
	beq t1, zero, label2767
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1543
	j label1542
.p2align 2
label479:
	sh2add t3, a5, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label478
	j label1534
.p2align 2
label1542:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label442
.p2align 2
label1543:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label410
.p2align 2
label1557:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1543
	j label1542
.p2align 2
label442:
	bne t0, zero, label1606
.p2align 2
label1605:
	li a4, 32767
	bgt a2, a4, label476
	lw t0, 4(sp)
	mv a4, a5
	divw a2, a2, t0
	j label397
.p2align 2
label1606:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	j label445
.p2align 2
label1652:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1606
	j label1605
.p2align 2
label472:
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label471
	j label1652
.p2align 2
label476:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a2, a2, a4
	addw a4, a2, t0
	subw a2, a4, t1
	mv a4, a5
	bne a2, zero, label1531
	j label1530
.p2align 2
label445:
	li t4, 16
	bge t2, t4, label1609
	andi t4, t3, 1
	bne t4, zero, label453
	andi t4, t1, 1
	bne t4, zero, label451
.p2align 2
label2781:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label445
.p2align 2
label453:
	andi t4, t1, 1
	bne t4, zero, label2781
.p2align 2
label451:
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
	j label445
.p2align 2
label1609:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label461
.p2align 2
label2780:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label466
.p2align 2
label456:
	li t3, 16
	bge a5, t3, label2780
.p2align 2
label461:
	and t4, t0, t2
	andi t3, t4, 1
	bne t3, zero, label462
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label456
.p2align 2
label466:
	li t3, 16
	bge t0, t3, label1652
.p2align 2
label471:
	and t3, a5, t1
	andi t4, t3, 1
	bne t4, zero, label472
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label466
.p2align 2
label462:
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label461
	j label2780
.p2align 2
label2769:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label421
.p2align 2
label415:
	li t3, 16
	blt a5, t3, label430
	j label2769
.p2align 2
label2771:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label415
.p2align 2
label421:
	li t3, 16
	bge t0, t3, label1557
.p2align 2
label426:
	and t3, a5, t1
	andi t4, t3, 1
	bne t4, zero, label429
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	j label421
.p2align 2
label429:
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
	blt t0, t3, label426
	j label1557
.p2align 2
label430:
	and t3, t0, t2
	andi t4, t3, 1
	bne t4, zero, label431
	j label2771
.p2align 2
label410:
	li t4, 16
	bge t2, t4, label1546
	andi t4, t3, 1
	bne t4, zero, label437
	andi t4, t1, 1
	beq t4, zero, label2776
.p2align 2
label436:
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
	j label410
.p2align 2
label1546:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label430
	j label2769
.p2align 2
label431:
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
	blt a5, t3, label430
	j label2769
.p2align 2
label437:
	andi t4, t1, 1
	beq t4, zero, label436
.p2align 2
label2776:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label410
.p2align 2
label2767:
	mv a5, a4
	mv t0, a4
	j label442
.p2align 2
label2792:
	mv a5, a4
	mv t0, a4
	j label534
.p2align 2
label2760:
	mv a0, zero
	j label576
label574:
	li a1, 16
	blt a0, a1, label1882
	j label2760
label576:
	ld ra, 64(sp)
	ld s1, 72(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label578:
	bgt a1, zero, label1886
.p2align 2
label1885:
	sh2add a1, a0, s0
	lw a3, 0(a1)
	bne a2, a3, label2252
	addiw a0, a0, 1
	j label574
label1886:
	li t1, 1
	mv a4, a1
	mv t0, zero
	mv a5, zero
	j label582
.p2align 2
label2060:
	li a3, 32767
	bgt a1, a3, label680
	lw a5, 4(sp)
	mv a3, a4
	divw a1, a1, a5
	j label578
.p2align 2
label680:
	lw a3, 4(sp)
	lui t0, 16
	lw a5, 60(sp)
	divw a1, a1, a3
	addw a3, a1, t0
	subw a1, a3, a5
	mv a3, a4
	bgt a1, zero, label1886
	j label1885
label2252:
	li a0, 1
	j label576
.p2align 2
label1897:
	mv a2, a4
	mv a5, a3
	mv a4, zero
	j label675
.p2align 2
label1983:
	li a5, 32767
	bgt a2, a5, label672
	lw t1, 4(sp)
	mv a5, t0
	divw a2, a2, t1
	j label588
.p2align 2
label1984:
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
	j label640
.p2align 2
label2030:
	mv t0, a5
	mv t1, t2
	bne t2, zero, label1984
	j label1983
.p2align 2
label672:
	lw a5, 4(sp)
	lui t2, 16
	lw t1, 60(sp)
	divw a2, a2, a5
	addw a5, a2, t2
	subw a2, a5, t1
	mv a5, t0
	bne a2, zero, label1898
	j label1897
.p2align 2
label675:
	beq a3, zero, label2060
.p2align 2
label2061:
	li t3, 1
	mv t0, a3
	mv t2, zero
	mv t1, zero
	li t4, 16
	blt zero, t4, label759
	j label2078
.p2align 2
label640:
	li t5, 16
	blt t3, t5, label645
.p2align 2
label1987:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	li t4, 16
	blt zero, t4, label656
	j label2836
.p2align 2
label645:
	andi t5, t4, 1
	bne t5, zero, label646
	andi t5, t2, 1
	bne t5, zero, label647
	j label2007
.p2align 2
label646:
	andi t5, t2, 1
	beq t5, zero, label647
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label640
.p2align 2
label2007:
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	li t5, 16
	blt t3, t5, label645
	j label1987
.p2align 2
label2836:
	lw t0, 4(sp)
	mv t1, zero
	mulw t3, t2, t0
	li t0, 65535
	mv t2, zero
	j label661
.p2align 2
label651:
	li t4, 16
	bge t0, t4, label2836
.p2align 2
label656:
	and t5, t1, t3
	andi t4, t5, 1
	bne t4, zero, label659
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t0, t0, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label651
.p2align 2
label659:
	sh2add t4, t0, s0
	lw t5, 0(t4)
	addw t2, t2, t5
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t0, t0, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t0, t4, label656
	j label2836
.p2align 2
label661:
	li t4, 16
	bge t1, t4, label2030
.p2align 2
label666:
	and t5, t0, t3
	andi t4, t5, 1
	bne t4, zero, label669
	srliw t5, t3, 31
	addiw t1, t1, 1
	add t4, t3, t5
	srliw t5, t0, 31
	sraiw t3, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label661
.p2align 2
label669:
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t2, t2, t4
	srliw t5, t3, 31
	addiw t1, t1, 1
	add t4, t3, t5
	srliw t5, t0, 31
	sraiw t3, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label666
	j label2030
.p2align 2
label647:
	sh2add t6, t3, s0
	lw t5, 0(t6)
	addw a5, a5, t5
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	li t5, 16
	blt t3, t5, label645
	j label1987
.p2align 2
label682:
	li t4, 16
	blt t1, t4, label759
.p2align 2
label2078:
	bne t2, zero, label2083
	j label2851
.p2align 2
label2852:
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t4, t0, t3
	mv t3, zero
	sraiw t0, t4, 1
	j label682
.p2align 2
label2083:
	mv t0, a4
	mv t1, a5
	bne a5, zero, label2164
	j label2853
.p2align 2
label759:
	and t4, t3, t0
	andi t3, t4, 1
	beq t3, zero, label2852
	sh2add t4, t1, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t4, t0, t3
	mv t3, zero
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label759
	j label2078
.p2align 2
label2853:
	mv a4, t0
	mv t0, a5
	mv t1, a5
.p2align 2
label690:
	bne t1, zero, label2087
	j label2086
.p2align 2
label2164:
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
	li t5, 16
	blt zero, t5, label734
	j label2167
.p2align 2
label2198:
	mv t0, a4
	mv t1, t2
	bne t2, zero, label2164
	j label2853
.p2align 2
label752:
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
	blt t1, t4, label751
	j label2198
.p2align 2
label2086:
	li a5, 32767
	bgt a3, a5, label695
	lw t1, 4(sp)
	mv a5, t0
	divw a3, a3, t1
	j label675
.p2align 2
label2087:
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
	li t5, 16
	blt zero, t5, label701
	j label2104
.p2align 2
label695:
	lw a5, 4(sp)
	lui t2, 16
	lw t1, 60(sp)
	divw a3, a3, a5
	addw a5, a3, t2
	subw a3, a5, t1
	mv a5, t0
	bne a3, zero, label2061
	j label2060
.p2align 2
label2858:
	lw t1, 4(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
	j label717
.p2align 2
label707:
	li t4, 16
	bge t0, t4, label2858
.p2align 2
label712:
	and t5, t1, t2
	andi t4, t5, 1
	bne t4, zero, label715
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label707
.p2align 2
label715:
	sh2add t5, t0, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t0, t4, label712
	j label2858
.p2align 2
label717:
	li t4, 16
	blt t1, t4, label722
.p2align 2
label2147:
	mv t0, a5
	mv t1, t3
	bne t3, zero, label2087
	j label2086
.p2align 2
label722:
	and t4, t0, t2
	andi t5, t4, 1
	bne t5, zero, label725
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	j label717
.p2align 2
label725:
	sh2add t4, t1, s0
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	li t4, 16
	blt t1, t4, label722
	j label2147
.p2align 2
label701:
	andi t5, t4, 1
	bne t5, zero, label702
	andi t5, t2, 1
	bne t5, zero, label2114
	j label2859
.p2align 2
label2104:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	li t4, 16
	blt zero, t4, label712
	j label2858
.p2align 2
label2114:
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
	blt t3, t5, label701
	j label2104
.p2align 2
label734:
	andi t5, t4, 1
	bne t5, zero, label738
	andi t5, t2, 1
	bne t5, zero, label737
	j label2187
.p2align 2
label738:
	andi t5, t2, 1
	beq t5, zero, label737
	j label2183
.p2align 2
label2187:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label734
	j label2167
.p2align 2
label702:
	andi t5, t2, 1
	beq t5, zero, label2114
	j label2859
.p2align 2
label696:
	li t5, 16
	blt t3, t5, label701
	j label2104
.p2align 2
label2859:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label696
.p2align 2
label2866:
	lw t0, 4(sp)
	mv t1, zero
	mulw t3, t2, t0
	li t0, 65535
	mv t2, zero
	j label746
.p2align 2
label740:
	li t4, 16
	blt t0, t4, label755
	j label2866
.p2align 2
label2873:
	srliw t4, t3, 31
	addiw t0, t0, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label740
.p2align 2
label746:
	li t4, 16
	bge t1, t4, label2198
.p2align 2
label751:
	and t5, t0, t3
	andi t4, t5, 1
	bne t4, zero, label752
	srliw t4, t3, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t3, t4
	add t4, t0, t6
	sraiw t3, t5, 1
	sraiw t0, t4, 1
	j label746
.p2align 2
label755:
	and t5, t1, t3
	andi t4, t5, 1
	beq t4, zero, label2873
	sh2add t5, t0, s0
	lw t4, 0(t5)
	addw t2, t2, t4
	srliw t4, t3, 31
	addiw t0, t0, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t0, t4, label755
	j label2866
.p2align 2
label2167:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	li t4, 16
	blt zero, t4, label755
	j label2866
.p2align 2
label737:
	sh2add t6, t3, s0
	lw t5, 0(t6)
	addw a4, a4, t5
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label734
	j label2167
.p2align 2
label2183:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label734
	j label2167
.p2align 2
label389:
	li t1, 16
	blt a3, t1, label570
	j label1522
.p2align 2
label2764:
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	j label389
.p2align 2
label570:
	and t0, t0, a4
	andi t1, t0, 1
	beq t1, zero, label2764
	sh2add t0, a3, s0
	lw t1, 0(t0)
	addw a5, a5, t1
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	li t1, 16
	blt a3, t1, label570
	j label1522
.p2align 2
label2703:
	mv a1, a3
	mv a4, a2
	mv a3, zero
.p2align 2
label208:
	beq a2, zero, label1173
.p2align 2
label1174:
	li t2, 1
	mv a5, a2
	mv t1, zero
	mv t0, zero
	li t3, 16
	blt zero, t3, label220
.p2align 2
label1191:
	beq t1, zero, label2708
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1211
.p2align 2
label1210:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label260
.p2align 2
label1211:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	li t4, 16
	blt zero, t4, label233
	j label1214
.p2align 2
label1245:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1211
	j label1210
.p2align 2
label251:
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
	blt t0, t3, label250
	j label1245
.p2align 2
label260:
	bne t0, zero, label1274
.p2align 2
label1273:
	li a4, 32767
	bgt a2, a4, label264
	lw t0, 4(sp)
	mv a4, a5
	divw a2, a2, t0
	j label208
.p2align 2
label1274:
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	li t4, 16
	blt zero, t4, label271
	j label1291
.p2align 2
label264:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a2, a2, a4
	addw a4, a2, t0
	subw a2, a4, t1
	mv a4, a5
	bne a2, zero, label1174
	j label1173
.p2align 2
label1291:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label282
	j label2725
.p2align 2
label1334:
	mv a5, a4
	mv t0, t1
	bne t1, zero, label1274
	j label1273
.p2align 2
label271:
	andi t4, t3, 1
	bne t4, zero, label272
	andi t4, t1, 1
	bne t4, zero, label276
	j label2726
.p2align 2
label272:
	andi t4, t1, 1
	bne t4, zero, label2726
.p2align 2
label276:
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
	blt t2, t4, label271
	j label1291
.p2align 2
label2725:
	lw t0, 4(sp)
	li a5, 65535
	mulw t2, t1, t0
	mv t0, zero
	mv t1, zero
	j label287
.p2align 2
label277:
	li t3, 16
	bge a5, t3, label2725
.p2align 2
label282:
	and t4, t0, t2
	andi t3, t4, 1
	bne t3, zero, label283
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	j label277
.p2align 2
label287:
	li t3, 16
	bge t0, t3, label1334
.p2align 2
label292:
	and t4, a5, t2
	andi t3, t4, 1
	bne t3, zero, label295
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label287
.p2align 2
label295:
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	li t3, 16
	blt t0, t3, label292
	j label1334
.p2align 2
label283:
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label282
	j label2725
.p2align 2
label233:
	andi t4, t3, 1
	bne t4, zero, label237
	andi t4, t1, 1
	bne t4, zero, label238
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label233
	j label1214
.p2align 2
label237:
	andi t4, t1, 1
	beq t4, zero, label238
	j label1230
.p2align 2
label2710:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
.p2align 2
label245:
	li t3, 16
	bge t0, t3, label1245
.p2align 2
label250:
	and t3, a5, t1
	andi t4, t3, 1
	bne t4, zero, label251
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label245
.p2align 2
label255:
	sh2add t3, t1, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, a5, 31
	addiw t1, t1, 1
	add t3, a5, t4
	srliw t4, t0, 31
	sraiw a5, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	li t3, 16
	blt t1, t3, label254
	j label2710
.p2align 2
label1214:
	mv t2, zero
	mv t1, zero
	li t3, 16
	blt zero, t3, label254
	j label2710
.p2align 2
label1230:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label233
	j label1214
.p2align 2
label239:
	li t3, 16
	blt t1, t3, label254
	j label2710
.p2align 2
label2717:
	srliw t4, a5, 31
	addiw t1, t1, 1
	add t3, a5, t4
	srliw t4, t0, 31
	sraiw a5, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label239
.p2align 2
label254:
	and t3, t0, a5
	andi t4, t3, 1
	bne t4, zero, label255
	j label2717
.p2align 2
label238:
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
	blt t2, t4, label233
	j label1214
.p2align 2
label266:
	li t4, 16
	blt t2, t4, label271
	j label1291
.p2align 2
label2726:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label266
.p2align 2
label215:
	li t3, 16
	bge t0, t3, label1191
.p2align 2
label220:
	and t3, t2, a5
	andi t2, t3, 1
	bne t2, zero, label221
	srliw t3, a5, 31
	addiw t0, t0, 1
	add t2, a5, t3
	sraiw a5, t2, 1
	mv t2, zero
	j label215
.p2align 2
label221:
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t3, a5, 31
	addiw t0, t0, 1
	add t2, a5, t3
	sraiw a5, t2, 1
	mv t2, zero
	li t3, 16
	blt t0, t3, label220
	j label1191
.p2align 2
label814:
	beq t1, zero, label2655
	mv a5, a3
	mv t0, a4
	bne a4, zero, label823
	j label822
.p2align 2
label100:
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label99
	j label814
.p2align 2
label822:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label63
.p2align 2
label823:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label31
.p2align 2
label2657:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label52
.p2align 2
label48:
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
	blt a5, t3, label47
	j label2657
.p2align 2
label52:
	li t3, 16
	blt t0, t3, label57
.p2align 2
label869:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label823
	j label822
.p2align 2
label57:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label60
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label52
.p2align 2
label60:
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
	blt t0, t3, label57
	j label869
.p2align 2
label63:
	bne t0, zero, label886
	j label885
.p2align 2
label42:
	li t3, 16
	bge a5, t3, label2657
.p2align 2
label47:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label48
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label42
.p2align 2
label31:
	li t4, 16
	blt t2, t4, label36
	j label826
.p2align 2
label2658:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label31
.p2align 2
label37:
	andi t4, t1, 1
	beq t4, zero, label836
	j label2658
.p2align 2
label36:
	andi t4, t3, 1
	bne t4, zero, label37
	andi t4, t1, 1
	bne t4, zero, label836
	j label2658
.p2align 2
label826:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label47
	j label2657
.p2align 2
label836:
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
	blt t2, t4, label36
	j label826
.p2align 2
label2851:
	mv t0, a5
	mv t1, a5
	j label690
.p2align 2
label588:
	beq a2, zero, label1897
.p2align 2
label1898:
	mv t2, zero
	li t3, 1
	mv t1, a2
	mv t0, zero
.p2align 2
label592:
	li t4, 16
	blt t0, t4, label597
.p2align 2
label1901:
	bne t2, zero, label1917
	j label2824
.p2align 2
label597:
	and t3, t3, t1
	andi t4, t3, 1
	bne t4, zero, label600
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	j label592
.p2align 2
label600:
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	li t4, 16
	blt t0, t4, label597
	j label1901
.p2align 2
label1917:
	mv t0, a4
	mv t1, a5
	bne a5, zero, label1921
.p2align 2
label1920:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	j label637
.p2align 2
label1921:
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
	j label605
.p2align 2
label1967:
	mv t0, a4
	mv t1, t2
	bne t2, zero, label1921
	j label1920
.p2align 2
label632:
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t2, t2, t4
	srliw t4, t3, 31
	srliw t5, t0, 31
	addiw t1, t1, 1
	add t6, t3, t4
	add t4, t0, t5
	sraiw t3, t6, 1
	sraiw t0, t4, 1
	li t4, 16
	blt t1, t4, label631
	j label1967
.p2align 2
label637:
	bne t1, zero, label1984
	j label1983
.p2align 2
label2827:
	lw t0, 4(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	j label626
.p2align 2
label616:
	li t4, 16
	bge t0, t4, label2827
.p2align 2
label621:
	and t4, t1, t2
	andi t5, t4, 1
	bne t5, zero, label624
	srliw t4, t2, 31
	srliw t5, t1, 31
	addiw t0, t0, 1
	add t6, t2, t4
	add t4, t1, t5
	sraiw t2, t6, 1
	sraiw t1, t4, 1
	j label616
.p2align 2
label624:
	sh2add t5, t0, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t2, 31
	srliw t5, t1, 31
	addiw t0, t0, 1
	add t6, t2, t4
	add t4, t1, t5
	sraiw t2, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t0, t4, label621
	j label2827
.p2align 2
label626:
	li t4, 16
	bge t1, t4, label1967
.p2align 2
label631:
	and t5, t0, t3
	andi t4, t5, 1
	bne t4, zero, label632
	srliw t4, t3, 31
	srliw t5, t0, 31
	addiw t1, t1, 1
	add t6, t3, t4
	add t4, t0, t5
	sraiw t3, t6, 1
	sraiw t0, t4, 1
	j label626
.p2align 2
label605:
	li t5, 16
	blt t3, t5, label610
	j label1924
.p2align 2
label2828:
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label605
.p2align 2
label610:
	andi t5, t4, 1
	bne t5, zero, label612
	andi t5, t2, 1
	bne t5, zero, label1933
	j label2828
.p2align 2
label612:
	andi t5, t2, 1
	beq t5, zero, label1933
	j label2828
.p2align 2
label1924:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	li t4, 16
	blt zero, t4, label621
	j label2827
.p2align 2
label1933:
	sh2add t6, t3, s0
	lw t5, 0(t6)
	addw a4, a4, t5
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	li t5, 16
	blt t3, t5, label610
	j label1924
.p2align 2
label2763:
	mv a4, a2
	mv a3, zero
	j label397
.p2align 2
label2708:
	mv a5, a4
	mv t0, a4
	j label260
.p2align 2
label2655:
	mv a5, a4
	mv t0, a4
	j label63
.p2align 2
label110:
	li t3, 16
	bge a5, t3, label991
.p2align 2
label115:
	and t3, t2, t0
	andi t2, t3, 1
	bne t2, zero, label116
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label110
.p2align 2
label991:
	bne t1, zero, label1007
	j label2677
.p2align 2
label116:
	sh2add t3, a5, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	li t3, 16
	blt a5, t3, label115
	j label991
.p2align 2
label1007:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1011
.p2align 2
label1010:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label155
.p2align 2
label1011:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	li t4, 16
	blt zero, t4, label147
.p2align 2
label1014:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label143
	j label2679
.p2align 2
label1025:
	mv a5, a3
	mv t0, t1
	bne t1, zero, label1011
	j label1010
.p2align 2
label140:
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t3, t2, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t2, t3
	add t3, a5, t5
	sraiw t2, t4, 1
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label139
	j label1025
.p2align 2
label147:
	andi t4, t3, 1
	bne t4, zero, label151
	andi t4, t1, 1
	bne t4, zero, label148
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label147
	j label1014
.p2align 2
label155:
	bne t0, zero, label1074
	j label1073
.p2align 2
label2679:
	lw a5, 4(sp)
	mv t0, zero
	mulw t2, t1, a5
	li a5, 65535
	mv t1, zero
.p2align 2
label134:
	li t3, 16
	bge t0, t3, label1025
.p2align 2
label139:
	and t4, a5, t2
	andi t3, t4, 1
	bne t3, zero, label140
	srliw t3, t2, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t2, t3
	add t3, a5, t5
	sraiw t2, t4, 1
	sraiw a5, t3, 1
	j label134
.p2align 2
label144:
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
	blt a5, t3, label143
	j label2679
.p2align 2
label148:
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
	blt t2, t4, label147
	j label1014
.p2align 2
label128:
	li t3, 16
	blt a5, t3, label143
	j label2679
.p2align 2
label2681:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label128
.p2align 2
label143:
	and t4, t0, t2
	andi t3, t4, 1
	bne t3, zero, label144
	j label2681
.p2align 2
label151:
	andi t4, t1, 1
	beq t4, zero, label148
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label147
	j label1014
.p2align 2
label2824:
	mv t0, a5
	mv t1, a5
	j label637
.p2align 2
label2677:
	mv a5, a4
	mv t0, a4
	j label155
.p2align 2
label582:
	li t2, 16
	blt a5, t2, label763
	j label1889
.p2align 2
label2823:
	srliw t1, a4, 31
	addiw a5, a5, 1
	add t2, a4, t1
	mv t1, zero
	sraiw a4, t2, 1
	j label582
.p2align 2
label763:
	and t3, t1, a4
	andi t1, t3, 1
	bne t1, zero, label764
	j label2823
.p2align 2
label1889:
	beq t0, zero, label2822
	mv a5, a2
	mv a4, zero
	mv a2, a3
	j label588
.p2align 2
label764:
	sh2add t2, a5, s0
	lw t1, 0(t2)
	addw t0, t0, t1
	srliw t1, a4, 31
	addiw a5, a5, 1
	add t2, a4, t1
	mv t1, zero
	sraiw a4, t2, 1
	li t2, 16
	blt a5, t2, label763
	j label1889
.p2align 2
label1154:
	bne a5, zero, label1170
	j label2701
.p2align 2
label202:
	sh2add t0, a3, s0
	lw t1, 0(t0)
	addw a5, a5, t1
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	li t1, 16
	blt a3, t1, label201
	j label1154
.p2align 2
label1170:
	mv a4, a1
	mv a3, zero
	mv a1, a2
	bne a2, zero, label1351
	j label2703
.p2align 2
label791:
	beq a5, zero, label2650
	mv a4, a1
	mv a3, zero
	mv a1, a2
	bne a2, zero, label988
	j label2653
.p2align 2
label2822:
	mv a5, a3
	mv a4, zero
	j label675
.p2align 2
label2701:
	mv a4, a2
	mv a3, zero
	j label208
.p2align 2
label2650:
	mv a4, a2
	mv a3, zero
	j label18
.p2align 2
label296:
	beq a1, zero, label2703
.p2align 2
label1351:
	li t2, 1
	mv a5, a1
	mv t1, zero
	mv t0, zero
.p2align 2
label300:
	li t3, 16
	bge t0, t3, label1354
.p2align 2
label305:
	and t3, t2, a5
	andi t2, t3, 1
	bne t2, zero, label308
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	j label300
.p2align 2
label308:
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label305
.p2align 2
label1354:
	beq t1, zero, label2733
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1451
.p2align 2
label2736:
	mv a3, a5
	mv a5, a4
	mv t0, a4
.p2align 2
label312:
	bne t0, zero, label1374
.p2align 2
label1373:
	li a4, 32767
	bgt a1, a4, label347
	lw t0, 4(sp)
	mv a4, a5
	divw a1, a1, t0
	j label296
.p2align 2
label1374:
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	li t4, 16
	blt zero, t4, label339
	j label1377
.p2align 2
label1400:
	mv a5, a4
	mv t0, t1
	bne t1, zero, label1374
	j label1373
.p2align 2
label339:
	andi t4, t3, 1
	bne t4, zero, label343
	j label1416
.p2align 2
label347:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	bne a1, zero, label1351
	j label2703
.p2align 2
label1377:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label325
	j label2738
.p2align 2
label340:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label339
	j label1377
.p2align 2
label2738:
	lw a5, 4(sp)
	mv t1, zero
	mv t0, zero
	mulw t2, t2, a5
	li a5, 65535
	j label330
.p2align 2
label320:
	li t3, 16
	bge a5, t3, label2738
.p2align 2
label325:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label328
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label320
.p2align 2
label328:
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
	blt a5, t3, label325
	j label2738
.p2align 2
label330:
	li t3, 16
	bge t0, t3, label1400
.p2align 2
label335:
	and t3, a5, t2
	andi t4, t3, 1
	bne t4, zero, label338
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label330
.p2align 2
label338:
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	li t3, 16
	blt t0, t3, label335
	j label1400
.p2align 2
label1416:
	andi t4, t1, 1
	bne t4, zero, label340
	j label1432
.p2align 2
label343:
	andi t4, t1, 1
	beq t4, zero, label340
	j label1428
.p2align 2
label1432:
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label339
	j label1377
.p2align 2
label1451:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label351
.p2align 2
label1497:
	mv a5, a3
	mv t0, t1
	bne t1, zero, label1451
	j label2736
.p2align 2
label378:
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
	blt t0, t3, label377
	j label1497
.p2align 2
label351:
	li t4, 16
	bge t2, t4, label1454
.p2align 2
label356:
	andi t4, t3, 1
	bne t4, zero, label357
	andi t4, t1, 1
	bne t4, zero, label361
.p2align 2
label2753:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label351
.p2align 2
label357:
	andi t4, t1, 1
	bne t4, zero, label2753
.p2align 2
label361:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a3, a3, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label356
	j label1454
.p2align 2
label2752:
	lw a5, 4(sp)
	mv t0, zero
	mulw t2, t1, a5
	li a5, 65535
	mv t1, zero
	j label372
.p2align 2
label362:
	li t3, 16
	bge a5, t3, label2752
.p2align 2
label367:
	and t3, t0, t2
	andi t4, t3, 1
	bne t4, zero, label370
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label362
.p2align 2
label370:
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label367
	j label2752
.p2align 2
label372:
	li t3, 16
	bge t0, t3, label1497
.p2align 2
label377:
	and t3, a5, t2
	andi t4, t3, 1
	bne t4, zero, label378
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label372
.p2align 2
label1454:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label367
	j label2752
.p2align 2
label1428:
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label339
	j label1377
.p2align 2
label2733:
	mv a5, a4
	mv t0, a4
	j label312
