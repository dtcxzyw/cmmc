.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -88
	li a4, 1
	li a1, 2
	li a2, 4
	li a0, 8
	li a3, 16
	sd s0, 80(sp)
	addi s0, sp, 0
	sd s1, 72(sp)
	sd ra, 64(sp)
	sw a4, 0(sp)
	sw a1, 4(sp)
	sw a2, 8(sp)
	li a2, 32
	sw a0, 12(sp)
	li a0, 64
	sw a3, 16(sp)
	lui a3, 2
	sw a2, 20(sp)
	li a2, 128
	sw a0, 24(sp)
	li a0, 256
	sw a2, 28(sp)
	li a2, 512
	sw a0, 32(sp)
	li a0, 1024
	sw a2, 36(sp)
	slli a2, a0, 1
	sw a0, 40(sp)
	lui a0, 1
	sw a2, 44(sp)
	lui a2, 4
	sw a0, 48(sp)
	lui a0, 8
	sw a3, 52(sp)
	sw a2, 56(sp)
	sw a0, 60(sp)
	mv a0, zero
label2:
	ble a0, zero, label191
	mv a2, zero
	li t0, 1
	mv a3, a0
	mv a5, zero
label6:
	li t1, 16
	bge a5, t1, label15
	and t0, t0, a3
	andi t1, t0, 1
	beq t1, zero, label12
	sh2add t1, a5, s0
	lw t0, 0(t1)
	addw a2, a2, t0
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label6
label974:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label2
label191:
	mv a0, a4
	jal putint
	li a0, 10
	jal putch
	li a4, 1
	li a1, 2
	mv a0, a4
	j label192
label15:
	beq a2, zero, label807
	mv a5, zero
	mv a3, a1
	j label106
label807:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label18
label106:
	beq a3, zero, label988
	mv a2, zero
	li t2, 1
	mv t0, a3
	mv t1, zero
	j label110
label988:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label18
label110:
	li t3, 16
	bge t1, t3, label115
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label188
	j label1140
label18:
	beq a1, zero, label103
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
label22:
	li t3, 16
	bge t1, t3, label27
	j label99
label948:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	mv a5, a3
	j label18
label99:
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label964
	sh2add t3, t1, s0
	lw t2, 0(t3)
	addw a3, a3, t2
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label22
label964:
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label22
label188:
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label110
label1140:
	sh2add t2, t1, s0
	lw t3, 0(t2)
	addw a2, a2, t3
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label110
label192:
	ble a0, zero, label196
	li t0, 1
	mv a2, a0
	mv a5, zero
	mv a3, zero
label584:
	li t1, 16
	bge a3, t1, label589
	j label765
label1910:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label192
label765:
	and t0, t0, a2
	andi t1, t0, 1
	beq t1, zero, label2247
	sh2add t1, a3, s0
	lw t0, 0(t1)
	addw a5, a5, t0
	srliw t0, a2, 31
	addiw a3, a3, 1
	add t1, a2, t0
	mv t0, zero
	sraiw a2, t1, 1
	j label584
label589:
	beq a5, zero, label1902
	mv a5, zero
	mv a3, a1
	j label680
label1902:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label592
label680:
	beq a3, zero, label2083
	li t2, 1
	mv a2, a3
	mv t1, zero
	mv t0, zero
	j label684
label2083:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label592
label684:
	li t3, 16
	bge t0, t3, label689
	j label761
label689:
	beq t1, zero, label2091
	mv t0, a4
	j label728
label2091:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label692
label761:
	and t3, t2, a2
	andi t2, t3, 1
	beq t2, zero, label762
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t3, a2, 31
	addiw t0, t0, 1
	add t2, a2, t3
	sraiw a2, t2, 1
	mv t2, zero
	j label684
label692:
	beq t0, zero, label725
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label695:
	li t4, 16
	bge t2, t4, label2099
	j label700
label2099:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label706
label700:
	andi t4, t3, 1
	beq t4, zero, label704
	j label705
label703:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label695
label704:
	andi t4, t1, 1
	beq t4, zero, label701
	j label703
label705:
	andi t4, t1, 1
	bne t4, zero, label701
	j label703
label706:
	li t3, 16
	bge a5, t3, label711
	j label721
label711:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
label712:
	li t3, 16
	bge t0, t3, label2130
	j label717
label2130:
	mv a5, a4
	mv t0, t2
	j label692
label717:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label718
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
	j label712
label718:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label712
label721:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label2147
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
	j label706
label725:
	li a4, 32767
	ble a3, a4, label2158
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t0
	subw a3, a4, t1
	mv a4, a5
	mv a5, a2
	j label680
label2158:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label680
label701:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label695
label2147:
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	j label706
label728:
	beq t0, zero, label2172
	mv t1, t0
	mv t3, a5
	mv a2, zero
	mv t2, zero
	j label731
label2172:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label692
label731:
	li t4, 16
	bge t2, t4, label2176
	j label736
label2176:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label742
label736:
	andi t4, t3, 1
	beq t4, zero, label741
	j label738
label737:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a2, a2, t4
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label731
label738:
	andi t4, t1, 1
	bne t4, zero, label739
	j label737
label741:
	andi t4, t1, 1
	beq t4, zero, label739
	j label737
label742:
	li t3, 16
	bge a5, t3, label2200
	j label747
label2200:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label752
label747:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label2205
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
	j label742
label752:
	li t3, 16
	bge t0, t3, label2219
	j label757
label2219:
	mv a5, a2
	mv t0, t2
	j label728
label757:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label758
	j label2223
label758:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label752
label2205:
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label742
label739:
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label731
label2223:
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
	j label752
label592:
	beq a1, zero, label596
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
label599:
	li t3, 16
	bge t1, t3, label604
	j label676
label604:
	beq a3, zero, label1928
	mv t0, a4
	j label605
label643:
	li a4, 32767
	ble a1, a4, label644
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t0
	subw a1, a4, t1
	mv a4, a5
	mv a5, a3
	j label592
label676:
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label2073
	sh2add t3, t1, s0
	lw t2, 0(t3)
	addw a3, a3, t2
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label599
label605:
	beq t0, zero, label1928
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
label608:
	li t4, 16
	bge t2, t4, label1936
	j label613
label1936:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label619
label613:
	andi t4, t3, 1
	beq t4, zero, label615
	j label616
label614:
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
	j label608
label616:
	andi t4, t1, 1
	bne t4, zero, label1948
	j label614
label619:
	li t3, 16
	bge a5, t3, label624
	j label634
label625:
	li t3, 16
	bge t0, t3, label1967
	j label630
label1967:
	mv a5, a3
	mv t0, t2
	j label605
label630:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label1972
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
	j label625
label1972:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label625
label634:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label635
	j label1983
label1948:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label608
label635:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label619
label615:
	andi t4, t1, 1
	beq t4, zero, label1948
	j label614
label1983:
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
	j label619
label2073:
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label599
label624:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
	j label625
label762:
	srliw t3, a2, 31
	addiw t0, t0, 1
	add t2, a2, t3
	sraiw a2, t2, 1
	mv t2, zero
	j label684
label1928:
	mv a3, a5
	mv a5, a4
	mv t0, a4
label640:
	beq t0, zero, label643
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label646:
	li t4, 16
	bge t2, t4, label2013
	j label670
label2013:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label651:
	li t3, 16
	bge a5, t3, label656
	j label666
label657:
	li t3, 16
	bge t0, t3, label2024
	j label662
label2024:
	mv a5, a4
	mv t0, t2
	j label640
label662:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label663
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
	j label657
label663:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label657
label666:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label667
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
	j label651
label670:
	andi t4, t3, 1
	beq t4, zero, label673
	andi t4, t1, 1
	bne t4, zero, label2057
	j label2056
label673:
	andi t4, t1, 1
	beq t4, zero, label2057
	j label2056
label667:
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	j label651
label2057:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label646
label2056:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label646
label656:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
	j label657
label2247:
	srliw t0, a2, 31
	addiw a3, a3, 1
	add t1, a2, t0
	mv t0, zero
	sraiw a2, t1, 1
	j label584
label27:
	beq a3, zero, label819
	mv t0, a4
label28:
	beq t0, zero, label819
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label31:
	li t4, 16
	bge t2, t4, label827
	j label36
label827:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label42
label36:
	andi t4, t3, 1
	beq t4, zero, label39
	andi t4, t1, 1
	bne t4, zero, label836
	j label835
label42:
	li t3, 16
	bge a5, t3, label851
	j label47
label851:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label52
label47:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label856
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
	j label42
label52:
	li t3, 16
	bge t0, t3, label870
	j label57
label870:
	mv a5, a3
	mv t0, t2
	j label28
label57:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label58
	j label874
label58:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label52
label856:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label42
label836:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label31
label874:
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
	j label52
label835:
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
	j label31
label39:
	andi t4, t1, 1
	beq t4, zero, label836
	j label835
label819:
	mv a3, a5
	mv a5, a4
	mv t0, a4
label63:
	beq t0, zero, label96
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label66:
	li t4, 16
	bge t2, t4, label890
	j label90
label890:
	mv t1, a5
	mv t2, zero
	mv a5, zero
label71:
	li t3, 16
	bge a5, t3, label76
	j label86
label77:
	li t3, 16
	bge t0, t3, label901
	j label82
label901:
	mv a5, a4
	mv t0, t2
	j label63
label82:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label906
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
	j label77
label906:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label77
label86:
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label918
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
	j label71
label90:
	andi t4, t3, 1
	beq t4, zero, label95
	andi t4, t1, 1
	bne t4, zero, label92
label940:
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
	j label66
label95:
	andi t4, t1, 1
	beq t4, zero, label92
	j label940
label92:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label66
label918:
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label71
label76:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label77
label96:
	li t0, 32767
	ble a1, t0, label97
	j label948
label97:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label18
label12:
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label6
label644:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label592
label115:
	beq a2, zero, label996
	mv t0, a4
	j label154
label996:
	mv a2, a5
	mv a5, a4
	mv t0, a4
label118:
	beq t0, zero, label151
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label121:
	li t4, 16
	bge t2, t4, label1004
	j label126
label1004:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label132
label126:
	andi t4, t3, 1
	beq t4, zero, label129
	j label130
label1014:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label121
label130:
	andi t4, t1, 1
	bne t4, zero, label127
	j label1014
label132:
	li t3, 16
	bge a5, t3, label137
	j label147
label138:
	li t3, 16
	bge t0, t3, label1035
	j label143
label1035:
	mv a5, a4
	mv t0, t2
	j label118
label143:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label1040
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
	j label138
label1040:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label138
label147:
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label1052
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
	j label132
label151:
	li a4, 32767
	ble a3, a4, label1063
	j label1062
label127:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label121
label1052:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label132
label154:
	beq t0, zero, label1077
	mv a2, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label157
label1077:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label118
label157:
	li t4, 16
	bge t2, t4, label1081
	j label162
label1081:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label168
label162:
	andi t4, t3, 1
	beq t4, zero, label167
	andi t4, t1, 1
	bne t4, zero, label1090
	j label1089
label168:
	li t3, 16
	bge a5, t3, label173
	j label183
label173:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
label174:
	li t3, 16
	bge t0, t3, label1112
	j label179
label1112:
	mv a5, a2
	mv t0, t2
	j label154
label179:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label180
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
	j label174
label180:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label174
label183:
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label1129
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
	j label168
label1129:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label168
label1090:
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label157
label129:
	andi t4, t1, 1
	beq t4, zero, label127
	j label1014
label1089:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a2, a2, t4
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label157
label167:
	andi t4, t1, 1
	beq t4, zero, label1090
	j label1089
label137:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
	j label138
label1062:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t0
	subw a3, a4, t1
	mv a4, a5
	mv a5, a2
	j label106
label1063:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label106
label596:
	li a1, 32767
	ble a0, a1, label1910
	lw a1, 4(sp)
	lui a4, 16
	lw a3, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a4
	mv a4, a2
	subw a0, a1, a3
	mv a1, a5
	j label192
label103:
	li a1, 32767
	ble a0, a1, label974
	lw a1, 4(sp)
	lui a4, 16
	lw a3, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a4
	mv a4, a2
	subw a0, a1, a3
	mv a1, a5
	j label2
label196:
	mv a0, a4
	jal putint
	li a0, 10
	jal putch
	li s1, 2
label197:
	li a0, 16
	bge s1, a0, label1155
	li a1, 2
	li a4, 1
	mv a0, s1
	j label199
label1155:
	mv a1, zero
	j label389
label199:
	ble a0, zero, label203
	li t0, 1
	mv a2, a0
	mv a5, zero
	mv a3, zero
	j label204
label203:
	mv a0, a4
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, 1
	j label197
label204:
	li t1, 16
	bge a3, t1, label213
	and t0, t0, a2
	andi t1, t0, 1
	beq t1, zero, label1169
	sh2add t0, a3, s0
	lw t1, 0(t0)
	addw a5, a5, t1
	srliw t1, a2, 31
	addiw a3, a3, 1
	add t0, a2, t1
	sraiw a2, t0, 1
	mv t0, zero
	j label204
label389:
	li a0, 16
	bge a1, a0, label1523
	li a2, 2
	li a5, 1
	mv a0, a1
	j label391
label1523:
	mv a0, zero
	j label582
label391:
	ble a0, zero, label580
	li t1, 1
	mv a3, a0
	mv t0, zero
	mv a4, zero
label395:
	li t2, 16
	bge a4, t2, label400
	and t2, t1, a3
	andi t1, t2, 1
	beq t1, zero, label577
	sh2add t2, a4, s0
	lw t1, 0(t2)
	addw t0, t0, t1
	srliw t2, a3, 31
	addiw a4, a4, 1
	add t1, a3, t2
	sraiw a3, t1, 1
	mv t1, zero
	j label395
label582:
	ld ra, 64(sp)
	ld s1, 72(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
label213:
	beq a5, zero, label1179
	mv a5, zero
	mv a3, a1
	j label304
label1179:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label216
label304:
	beq a3, zero, label1360
	li t2, 1
	mv a2, a3
	mv t1, zero
	mv t0, zero
	j label308
label1360:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label216
label308:
	li t3, 16
	bge t0, t3, label317
	and t3, t2, a2
	andi t2, t3, 1
	beq t2, zero, label314
	sh2add t2, t0, s0
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t3, a2, 31
	addiw t0, t0, 1
	add t2, a2, t3
	sraiw a2, t2, 1
	mv t2, zero
	j label308
label317:
	beq t1, zero, label1379
	mv t0, a4
	j label356
label1379:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label320
label356:
	beq t0, zero, label1460
	mv t1, t0
	mv t3, a5
	mv a2, zero
	mv t2, zero
	j label359
label1460:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label320
label359:
	li t4, 16
	bge t2, t4, label1464
	j label364
label1464:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label370
label364:
	andi t4, t3, 1
	beq t4, zero, label366
	andi t4, t1, 1
	bne t4, zero, label1473
	j label1472
label370:
	li t3, 16
	bge a5, t3, label1488
	j label375
label1488:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label380
label375:
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label376
	j label1492
label216:
	beq a1, zero, label301
	li t2, 1
	mv a3, a1
	mv t1, zero
	mv t0, zero
label220:
	li t3, 16
	bge t0, t3, label229
	and t3, t2, a3
	andi t2, t3, 1
	beq t2, zero, label1192
	sh2add t2, t0, s0
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t2, a3, 31
	addiw t0, t0, 1
	add t3, a3, t2
	mv t2, zero
	sraiw a3, t3, 1
	j label220
label232:
	beq t0, zero, label265
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label235:
	li t4, 16
	bge t2, t4, label1210
	j label240
label1210:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label246
label240:
	andi t4, t3, 1
	beq t4, zero, label242
	andi t4, t1, 1
	bne t4, zero, label1219
	j label1218
label242:
	andi t4, t1, 1
	beq t4, zero, label1219
	j label1218
label246:
	li t3, 16
	bge a5, t3, label1234
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label1239
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
	j label246
label256:
	li t3, 16
	bge t0, t3, label1253
	j label261
label1253:
	mv a5, a4
	mv t0, t2
	j label232
label261:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label1258
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
	j label256
label1258:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label256
label265:
	li a4, 32767
	ble a1, a4, label1269
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	mv a5, a3
	j label216
label1269:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label216
label1219:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label235
label1239:
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label246
label320:
	beq t0, zero, label323
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label326:
	li t4, 16
	bge t2, t4, label1401
	j label331
label1401:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label337
label331:
	andi t4, t3, 1
	beq t4, zero, label332
	j label336
label332:
	andi t4, t1, 1
	beq t4, zero, label333
label1408:
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
	j label326
label336:
	andi t4, t1, 1
	bne t4, zero, label333
	j label1408
label337:
	li t3, 16
	bge a5, t3, label342
	j label352
label343:
	li t3, 16
	bge t0, t3, label1432
	j label348
label1432:
	mv a5, a4
	mv t0, t2
	j label320
label348:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label349
	j label1436
label349:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label343
label352:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label353
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
	j label337
label1218:
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
	j label235
label333:
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label326
label353:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label337
label1436:
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
	j label343
label1473:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label359
label376:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label370
label380:
	li t3, 16
	bge t0, t3, label1507
	j label385
label1507:
	mv a5, a2
	mv t0, t2
	j label356
label385:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label386
	j label1511
label386:
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	j label380
label1492:
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
	j label370
label1472:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a2, a2, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label359
label366:
	andi t4, t1, 1
	beq t4, zero, label1473
	j label1472
label1511:
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	j label380
label1234:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label256
label1192:
	srliw t2, a3, 31
	addiw t0, t0, 1
	add t3, a3, t2
	mv t2, zero
	sraiw a3, t3, 1
	j label220
label314:
	srliw t3, a2, 31
	addiw t0, t0, 1
	add t2, a2, t3
	sraiw a2, t2, 1
	mv t2, zero
	j label308
label342:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label343
label229:
	beq t1, zero, label1202
	mv t0, a4
	j label268
label1202:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label232
label268:
	beq t0, zero, label1283
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label271
label1283:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label232
label271:
	li t4, 16
	bge t2, t4, label1287
	j label276
label1287:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label282
label276:
	andi t4, t3, 1
	beq t4, zero, label279
	j label281
label279:
	andi t4, t1, 1
	beq t4, zero, label277
label1297:
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
	j label271
label281:
	andi t4, t1, 1
	bne t4, zero, label277
	j label1297
label282:
	li t3, 16
	bge a5, t3, label287
	j label297
label288:
	li t3, 16
	bge t0, t3, label1318
	j label293
label1318:
	mv a5, a3
	mv t0, t2
	j label268
label293:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label1323
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
	j label288
label1323:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label288
label297:
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label298
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
	j label282
label277:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label271
label298:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label282
label287:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label288
label1169:
	srliw t1, a2, 31
	addiw a3, a3, 1
	add t0, a2, t1
	sraiw a2, t0, 1
	mv t0, zero
	j label204
label400:
	beq t0, zero, label1535
	mv t0, zero
	mv a4, a2
	j label491
label1535:
	mv a3, a5
	mv a5, a2
	mv t0, zero
	j label403
label491:
	beq a4, zero, label1716
	li t3, 1
	mv a3, a4
	mv t2, zero
	mv t1, zero
	j label495
label1716:
	mv a3, t0
	mv a5, a2
	mv t0, zero
	j label403
label495:
	li t4, 16
	bge t1, t4, label504
	and t4, t3, a3
	andi t3, t4, 1
	beq t3, zero, label501
	sh2add t4, t1, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, a3, 31
	addiw t1, t1, 1
	add t3, a3, t4
	sraiw a3, t3, 1
	mv t3, zero
	j label495
label504:
	beq t2, zero, label1735
	mv t1, a5
label505:
	beq t1, zero, label1735
	mv t2, t1
	mv t4, t0
	mv a3, zero
	mv t3, zero
label508:
	li t5, 16
	bge t3, t5, label1743
	j label513
label1743:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	j label519
label513:
	andi t5, t4, 1
	beq t5, zero, label518
	andi t5, t2, 1
	bne t5, zero, label515
label1758:
	sh2add t6, t3, s0
	lw t5, 0(t6)
	addw a3, a3, t5
	srliw t5, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add a6, t4, t5
	add t5, t2, t6
	sraiw t4, a6, 1
	sraiw t2, t5, 1
	j label508
label518:
	andi t5, t2, 1
	beq t5, zero, label515
	j label1758
label519:
	li t4, 16
	bge t0, t4, label1767
	j label524
label1767:
	lw t1, 4(sp)
	li t0, 65535
	mv t3, zero
	mulw t2, t2, t1
	mv t1, zero
	j label529
label524:
	and t4, t1, t3
	andi t5, t4, 1
	beq t5, zero, label1772
	sh2add t5, t0, s0
	lw t4, 0(t5)
	addw t2, t2, t4
	srliw t5, t3, 31
	addiw t0, t0, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label519
label529:
	li t4, 16
	bge t1, t4, label1786
	j label534
label1786:
	mv t0, a3
	mv t1, t3
	j label505
label534:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label1791
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t2, 31
	srliw t5, t0, 31
	addiw t1, t1, 1
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	j label529
label1791:
	srliw t4, t2, 31
	srliw t5, t0, 31
	addiw t1, t1, 1
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	j label529
label1772:
	srliw t5, t3, 31
	addiw t0, t0, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label519
label515:
	srliw t5, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add a6, t4, t5
	add t5, t2, t6
	sraiw t4, a6, 1
	sraiw t2, t5, 1
	j label508
label403:
	beq a2, zero, label407
	li t3, 1
	mv a4, a2
	mv t2, zero
	mv t1, zero
	j label410
label407:
	li a2, 32767
	ble a0, a2, label1543
	j label1542
label410:
	li t4, 16
	bge t1, t4, label415
	j label487
label422:
	lw t1, 4(sp)
	mv a5, t0
	mv t0, a4
	divw a2, a2, t1
	j label403
label487:
	and t4, t3, a4
	andi t3, t4, 1
	beq t3, zero, label1706
	sh2add t4, t1, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, a4, 31
	addiw t1, t1, 1
	add t3, a4, t4
	sraiw a4, t3, 1
	mv t3, zero
	j label410
label1706:
	srliw t4, a4, 31
	addiw t1, t1, 1
	add t3, a4, t4
	sraiw a4, t3, 1
	mv t3, zero
	j label410
label501:
	srliw t4, a3, 31
	addiw t1, t1, 1
	add t3, a3, t4
	sraiw a3, t3, 1
	mv t3, zero
	j label495
label323:
	li a4, 32767
	ble a3, a4, label324
	j label1386
label324:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label304
label1386:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t1
	subw a3, a4, t0
	mv a4, a5
	mv a5, a2
	j label304
label415:
	beq t2, zero, label1561
	mv t1, a5
	j label454
label1561:
	mv a4, t0
	mv t0, a5
	mv t1, a5
label418:
	beq t1, zero, label421
	mv a5, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
	j label424
label421:
	li a5, 32767
	ble a2, a5, label422
	j label1568
label424:
	li t5, 16
	bge t3, t5, label1583
	j label429
label1583:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	j label435
label429:
	andi t5, t4, 1
	beq t5, zero, label431
	andi t5, t2, 1
	bne t5, zero, label1592
	j label1591
label435:
	li t4, 16
	bge t0, t4, label1607
	and t5, t1, t3
	andi t4, t5, 1
	beq t4, zero, label441
	sh2add t4, t0, s0
	lw t5, 0(t4)
	addw t2, t2, t5
	srliw t5, t3, 31
	addiw t0, t0, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label435
label445:
	li t4, 16
	bge t1, t4, label1626
	j label450
label1626:
	mv t0, a5
	mv t1, t3
	j label418
label450:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label451
	j label1630
label451:
	srliw t4, t2, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	j label445
label1592:
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	j label424
label441:
	srliw t5, t3, 31
	addiw t0, t0, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label435
label454:
	beq t1, zero, label1642
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
	j label457
label1642:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	j label418
label457:
	li t5, 16
	bge t3, t5, label1646
	j label481
label1646:
	mv t2, t0
	mv t3, zero
	mv t0, zero
label462:
	li t4, 16
	bge t0, t4, label467
	j label477
label468:
	li t4, 16
	bge t1, t4, label1657
	j label473
label1657:
	mv t0, a4
	mv t1, t3
	j label454
label473:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label1662
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
	j label468
label1662:
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label468
label477:
	and t4, t1, t2
	andi t5, t4, 1
	beq t5, zero, label1674
	sh2add t4, t0, s0
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t2, 31
	srliw t5, t1, 31
	addiw t0, t0, 1
	add t6, t2, t4
	add t4, t1, t5
	sraiw t2, t6, 1
	sraiw t1, t4, 1
	j label462
label481:
	andi t5, t4, 1
	beq t5, zero, label482
	andi t5, t2, 1
	bne t5, zero, label1689
	j label1688
label1630:
	sh2add t4, t1, s0
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t2, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	j label445
label1591:
	sh2add t6, t3, s0
	lw t5, 0(t6)
	addw a5, a5, t5
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	j label424
label431:
	andi t5, t2, 1
	beq t5, zero, label1592
	j label1591
label1674:
	srliw t4, t2, 31
	srliw t5, t1, 31
	addiw t0, t0, 1
	add t6, t2, t4
	add t4, t1, t5
	sraiw t2, t6, 1
	sraiw t1, t4, 1
	j label462
label1689:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label457
label482:
	andi t5, t2, 1
	beq t5, zero, label1689
label1688:
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
	j label457
label1607:
	lw t1, 4(sp)
	li t0, 65535
	mv t3, zero
	mulw t2, t2, t1
	mv t1, zero
	j label445
label467:
	lw t0, 4(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	j label468
label577:
	srliw t2, a3, 31
	addiw a4, a4, 1
	add t1, a3, t2
	sraiw a3, t1, 1
	mv t1, zero
	j label395
label301:
	li a1, 32767
	ble a0, a1, label1346
	lw a1, 4(sp)
	lui a4, 16
	lw a3, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a4
	mv a4, a2
	subw a0, a1, a3
	mv a1, a5
	j label199
label1346:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label199
label1568:
	lw a5, 4(sp)
	lui t2, 16
	lw t1, 60(sp)
	divw a2, a2, a5
	addw a5, a2, t2
	subw a2, a5, t1
	mv a5, t0
	mv t0, a4
	j label403
label1735:
	mv a3, t0
	mv t0, a5
	mv t1, a5
label540:
	beq t1, zero, label543
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
	j label546
label543:
	li a5, 32767
	ble a4, a5, label1806
	lw a5, 4(sp)
	lui t2, 16
	lw t1, 60(sp)
	divw a4, a4, a5
	addw a5, a4, t2
	subw a4, a5, t1
	mv a5, t0
	mv t0, a3
	j label491
label546:
	li t5, 16
	bge t3, t5, label1820
	j label570
label1820:
	mv t2, t0
	mv t3, zero
	mv t0, zero
label551:
	li t4, 16
	bge t0, t4, label556
	j label566
label557:
	li t4, 16
	bge t1, t4, label1831
	j label562
label1831:
	mv t0, a5
	mv t1, t3
	j label540
label562:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label563
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
	j label557
label563:
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	j label557
label566:
	and t5, t1, t2
	andi t4, t5, 1
	beq t4, zero, label567
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
	j label551
label570:
	andi t5, t4, 1
	beq t5, zero, label574
	j label575
label1869:
	sh2add t6, t3, s0
	lw t5, 0(t6)
	addw a5, a5, t5
	srliw t5, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add a6, t4, t5
	add t5, t2, t6
	sraiw t4, a6, 1
	sraiw t2, t5, 1
	j label546
label575:
	andi t5, t2, 1
	bne t5, zero, label572
	j label1869
label572:
	srliw t5, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add a6, t4, t5
	add t5, t2, t6
	sraiw t4, a6, 1
	sraiw t2, t5, 1
	j label546
label567:
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label551
label574:
	andi t5, t2, 1
	beq t5, zero, label572
	j label1869
label556:
	lw t0, 4(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	j label557
label1806:
	lw t1, 4(sp)
	mv a5, t0
	mv t0, a3
	divw a4, a4, t1
	j label491
label1543:
	lw a4, 4(sp)
	mv a2, t0
	mv a5, a3
	divw a0, a0, a4
	j label391
label1542:
	lw a2, 4(sp)
	lui a5, 16
	lw a4, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	mv a5, a3
	subw a0, a2, a4
	mv a2, t0
	j label391
label580:
	sh2add a0, a1, s0
	lw a2, 0(a0)
	beq a5, a2, label581
	li a0, 1
	j label582
label581:
	addiw a1, a1, 1
	j label389
