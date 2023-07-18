.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -88
	li a4, 1
	li a1, 2
	li a0, 4
	li a2, 8
	sd s0, 80(sp)
	addi s0, sp, 0
	sd s1, 72(sp)
	sd ra, 64(sp)
	sw a4, 0(sp)
	sw a1, 4(sp)
	sw a0, 8(sp)
	li a0, 16
	sw a2, 12(sp)
	li a2, 32
	sw a0, 16(sp)
	li a0, 64
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
	lui a2, 2
	sw a0, 48(sp)
	lui a0, 4
	sw a2, 52(sp)
	lui a2, 8
	sw a0, 56(sp)
	mv a0, zero
	sw a2, 60(sp)
label2:
	ble a0, zero, label6
	mv a2, zero
	li t0, 1
	mv a3, a0
	mv a5, zero
label584:
	li t1, 16
	bge a5, t1, label589
	j label765
label2073:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label2
label765:
	and t0, t0, a3
	andi t1, t0, 1
	beq t1, zero, label766
	sh2add t0, a5, s0
	lw t1, 0(t0)
	addw a2, a2, t1
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label584
label589:
	beq a2, zero, label1902
	mv a5, zero
	mv a3, a1
	j label590
label1902:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label677
label590:
	beq a3, zero, label1906
	li t2, 1
	mv a2, a3
	mv t1, zero
	mv t0, zero
	j label594
label1906:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label677
label594:
	li t3, 16
	bge t0, t3, label603
	and t3, t2, a2
	andi t2, t3, 1
	beq t2, zero, label600
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, a2, 31
	addiw t0, t0, 1
	add t3, a2, t2
	mv t2, zero
	sraiw a2, t3, 1
	j label594
label677:
	beq a1, zero, label681
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
label684:
	li t3, 16
	bge t1, t3, label693
	and t2, t2, t0
	andi t3, t2, 1
	beq t3, zero, label690
	sh2add t3, t1, s0
	lw t2, 0(t3)
	addw a3, a3, t2
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label684
label729:
	beq t0, zero, label732
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label735
label732:
	li a4, 32767
	ble a1, a4, label2173
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t0
	subw a1, a4, t1
	mv a4, a5
	mv a5, a3
	j label677
label2173:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label677
label735:
	li t4, 16
	bge t2, t4, label2187
	j label740
label2187:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label746
label740:
	andi t4, t3, 1
	beq t4, zero, label742
	j label743
label741:
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
	j label735
label743:
	andi t4, t1, 1
	bne t4, zero, label2199
	j label741
label746:
	li t3, 16
	bge a5, t3, label751
	j label761
label751:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
label752:
	li t3, 16
	bge t0, t3, label2218
	j label757
label2218:
	mv a5, a4
	mv t0, t2
	j label729
label757:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label2223
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
	j label752
label2223:
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	j label752
label761:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label762
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
	j label746
label2199:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label735
label762:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label746
label693:
	beq a3, zero, label2102
	mv t0, a4
label694:
	beq t0, zero, label2102
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label697:
	li t4, 16
	bge t2, t4, label2110
	j label721
label2110:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label702:
	li t3, 16
	bge a5, t3, label707
	j label717
label707:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label708
label717:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label718
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
	j label702
label721:
	andi t4, t3, 1
	beq t4, zero, label725
	j label726
label725:
	andi t4, t1, 1
	beq t4, zero, label723
label2159:
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
	j label697
label726:
	andi t4, t1, 1
	bne t4, zero, label723
	j label2159
label708:
	li t3, 16
	bge t0, t3, label2121
	j label713
label2121:
	mv a5, a3
	mv t0, t2
	j label694
label713:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label2126
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
	j label708
label2126:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label708
label723:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label697
label718:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label702
label742:
	andi t4, t1, 1
	beq t4, zero, label2199
	j label741
label603:
	beq t1, zero, label1925
	mv t0, a4
label604:
	beq t0, zero, label1925
	mv a2, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label607:
	li t4, 16
	bge t2, t4, label1933
	j label631
label1933:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label612:
	li t3, 16
	bge a5, t3, label1937
	j label617
label1937:
	lw t0, 4(sp)
	mv t2, zero
	li a5, 65535
	mulw t1, t1, t0
	mv t0, zero
	j label622
label617:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label1942
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t3, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t2, t3
	add t3, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t3, 1
	j label612
label631:
	andi t4, t3, 1
	beq t4, zero, label633
	j label636
label632:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a2, a2, t4
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label607
label636:
	andi t4, t1, 1
	bne t4, zero, label634
	j label632
label622:
	li t3, 16
	bge t0, t3, label1956
	j label627
label1956:
	mv a5, a2
	mv t0, t2
	j label604
label627:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label628
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
	j label622
label628:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label622
label634:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label607
label1942:
	srliw t3, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t2, t3
	add t3, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t3, 1
	j label612
label633:
	andi t4, t1, 1
	beq t4, zero, label634
	j label632
label690:
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label684
label600:
	srliw t2, a2, 31
	addiw t0, t0, 1
	add t3, a2, t2
	mv t2, zero
	sraiw a2, t3, 1
	j label594
label2102:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label729
label766:
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label584
label1925:
	mv a2, a5
	mv a5, a4
	mv t0, a4
label639:
	beq t0, zero, label642
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	j label645
label642:
	li a4, 32767
	ble a3, a4, label643
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t1
	subw a3, a4, t0
	mv a4, a5
	mv a5, a2
	j label590
label645:
	li t4, 16
	bge t2, t4, label2010
	j label669
label2010:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label650:
	li t3, 16
	bge a5, t3, label2014
	j label655
label2014:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label660
label655:
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label656
	j label2018
label660:
	li t3, 16
	bge t0, t3, label2033
	j label665
label2033:
	mv a5, a4
	mv t0, t2
	j label639
label665:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label666
	j label2037
label666:
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	j label660
label669:
	andi t4, t3, 1
	beq t4, zero, label674
	andi t4, t1, 1
	bne t4, zero, label2054
	j label2053
label656:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label650
label2054:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label645
label2018:
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
	j label650
label2053:
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
	j label645
label674:
	andi t4, t1, 1
	beq t4, zero, label2054
	j label2053
label2037:
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
	j label660
label643:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label590
label681:
	li a1, 32767
	ble a0, a1, label2073
	lw a1, 4(sp)
	lui a3, 16
	lw a4, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a3
	subw a0, a1, a4
	mv a4, a2
	mv a1, a5
	j label2
label6:
	mv a0, a4
	jal putint
	li a0, 10
	jal putch
	li a4, 1
	li a1, 2
	mv a0, a4
label7:
	ble a0, zero, label196
	mv a2, zero
	li t0, 1
	mv a3, a0
	mv a5, zero
label11:
	li t1, 16
	bge a5, t1, label16
	j label192
label1130:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label7
label192:
	and t1, t0, a3
	andi t0, t1, 1
	beq t0, zero, label1145
	sh2add t1, a5, s0
	lw t0, 0(t1)
	addw a2, a2, t0
	srliw t1, a3, 31
	addiw a5, a5, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	j label11
label16:
	beq a2, zero, label800
	mv a5, zero
	mv a3, a1
	j label17
label800:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label104
label17:
	beq a3, zero, label804
	mv a2, zero
	li t2, 1
	mv t0, a3
	mv t1, zero
	j label21
label804:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label104
label21:
	li t3, 16
	bge t1, t3, label26
	j label98
label26:
	beq a2, zero, label812
	mv t0, a4
	j label27
label98:
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label99
	sh2add t3, t1, s0
	lw t2, 0(t3)
	addw a2, a2, t2
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label21
label104:
	beq a1, zero, label189
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
label108:
	li t3, 16
	bge t1, t3, label117
	and t2, t2, t0
	andi t3, t2, 1
	beq t3, zero, label976
	sh2add t3, t1, s0
	lw t2, 0(t3)
	addw a3, a3, t2
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label108
label117:
	beq a3, zero, label986
	mv t0, a4
	j label156
label986:
	mv a3, a5
	mv a5, a4
	mv t0, a4
label120:
	beq t0, zero, label123
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	j label126
label123:
	li a4, 32767
	ble a1, a4, label124
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	mv a5, a3
	j label104
label124:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label104
label126:
	li t4, 16
	bge t2, t4, label1008
	j label131
label1008:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label137
label131:
	andi t4, t3, 1
	beq t4, zero, label136
	andi t4, t1, 1
	bne t4, zero, label1017
label1016:
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
	j label126
label136:
	andi t4, t1, 1
	beq t4, zero, label1017
	j label1016
label137:
	li t3, 16
	bge a5, t3, label142
	j label152
label143:
	li t3, 16
	bge t0, t3, label1039
	j label148
label1039:
	mv a5, a4
	mv t0, t2
	j label120
label148:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label149
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
	j label143
label149:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label143
label152:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label153
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	j label137
label153:
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	j label137
label1017:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label126
label156:
	beq t0, zero, label1067
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label159
label1067:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label120
label159:
	li t4, 16
	bge t2, t4, label1071
	j label164
label1071:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label170
label164:
	andi t4, t3, 1
	beq t4, zero, label167
	andi t4, t1, 1
	bne t4, zero, label165
	j label1081
label170:
	li t3, 16
	bge a5, t3, label1095
	j label175
label1095:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
	j label180
label175:
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label176
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
	j label170
label180:
	li t3, 16
	bge t0, t3, label1114
	j label185
label1114:
	mv a5, a3
	mv t0, t2
	j label156
label185:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label1119
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
	j label180
label1119:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label180
label176:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label170
label165:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label159
label27:
	beq t0, zero, label812
	mv t1, t0
	mv t3, a5
	mv a2, zero
	mv t2, zero
label30:
	li t4, 16
	bge t2, t4, label820
	j label35
label820:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label41
label35:
	andi t4, t3, 1
	beq t4, zero, label37
	j label38
label36:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a2, a2, t4
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label30
label37:
	andi t4, t1, 1
	beq t4, zero, label832
	j label36
label38:
	andi t4, t1, 1
	bne t4, zero, label832
	j label36
label41:
	li t3, 16
	bge a5, t3, label844
	j label46
label844:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label51
label46:
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label849
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
	j label41
label51:
	li t3, 16
	bge t0, t3, label863
	j label56
label863:
	mv a5, a2
	mv t0, t2
	j label27
label56:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label868
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	j label51
label868:
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	j label51
label167:
	andi t4, t1, 1
	beq t4, zero, label165
label1081:
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
	j label159
label849:
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label41
label832:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label30
label142:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label143
label976:
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label108
label99:
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label21
label1145:
	srliw t1, a3, 31
	addiw a5, a5, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	j label11
label812:
	mv a2, a5
	mv a5, a4
	mv t0, a4
label62:
	beq t0, zero, label95
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label65:
	li t4, 16
	bge t2, t4, label883
	j label70
label883:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label76
label70:
	andi t4, t3, 1
	beq t4, zero, label71
	j label72
label890:
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
	j label65
label72:
	andi t4, t1, 1
	bne t4, zero, label891
	j label890
label76:
	li t3, 16
	bge a5, t3, label907
	j label81
label907:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label86
label81:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label82
	j label911
label86:
	li t3, 16
	bge t0, t3, label926
	j label91
label926:
	mv a5, a4
	mv t0, t2
	j label62
label91:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label92
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
	j label86
label92:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label86
label95:
	li a4, 32767
	ble a3, a4, label942
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t0
	subw a3, a4, t1
	mv a4, a5
	mv a5, a2
	j label17
label942:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label17
label82:
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label76
label891:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label65
label71:
	andi t4, t1, 1
	beq t4, zero, label891
	j label890
label911:
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
	j label76
label189:
	li a1, 32767
	ble a0, a1, label1130
	lw a1, 4(sp)
	lui a3, 16
	lw a4, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a3
	subw a0, a1, a4
	mv a4, a2
	mv a1, a5
	j label7
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
	j label394
label1155:
	mv a1, zero
label199:
	li a0, 16
	bge a1, a0, label1159
	li a2, 2
	li a5, 1
	mv a0, a1
	j label203
label1159:
	mv a0, zero
label201:
	ld ra, 64(sp)
	ld s1, 72(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
label203:
	ble a0, zero, label392
	li t1, 1
	mv a3, a0
	mv t0, zero
	mv a4, zero
label207:
	li t2, 16
	bge a4, t2, label216
	and t2, t1, a3
	andi t1, t2, 1
	beq t1, zero, label1172
	sh2add t2, a4, s0
	lw t1, 0(t2)
	addw t0, t0, t1
	srliw t2, a3, 31
	addiw a4, a4, 1
	add t1, a3, t2
	sraiw a3, t1, 1
	mv t1, zero
	j label207
label394:
	ble a0, zero, label398
	mv a2, zero
	li t0, 1
	mv a3, a0
	mv a5, zero
	j label399
label398:
	mv a0, a4
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, 1
	j label197
label399:
	li t1, 16
	bge a5, t1, label404
	and t2, t0, a3
	andi t0, t2, 1
	beq t0, zero, label581
	j label1887
label404:
	beq a2, zero, label1543
	mv a5, zero
	mv a3, a1
	j label495
label1543:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label407
label495:
	beq a3, zero, label1724
	mv a2, zero
	li t2, 1
	mv t0, a3
	mv t1, zero
	j label499
label1724:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label407
label499:
	li t3, 16
	bge t1, t3, label504
	j label576
label504:
	beq a2, zero, label1732
	mv t0, a4
	j label543
label1732:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label507
label576:
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label1877
	sh2add t3, t1, s0
	lw t2, 0(t3)
	addw a2, a2, t2
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label499
label507:
	beq t0, zero, label510
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label513:
	li t4, 16
	bge t2, t4, label1754
	j label537
label1754:
	mv t1, a5
	mv t2, zero
	mv a5, zero
label518:
	li t3, 16
	bge a5, t3, label523
	j label533
label524:
	li t3, 16
	bge t0, t3, label1765
	j label529
label1765:
	mv a5, a4
	mv t0, t2
	j label507
label529:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label530
	j label1769
label530:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label524
label533:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label534
	j label1781
label537:
	andi t4, t3, 1
	beq t4, zero, label540
	andi t4, t1, 1
	bne t4, zero, label1798
label1797:
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
	j label513
label540:
	andi t4, t1, 1
	beq t4, zero, label1798
	j label1797
label1798:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label513
label534:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label518
label543:
	beq t0, zero, label1813
	mv t1, t0
	mv t3, a5
	mv a2, zero
	mv t2, zero
	j label546
label1813:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label507
label546:
	li t4, 16
	bge t2, t4, label1817
	j label551
label1817:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label557
label551:
	andi t4, t3, 1
	beq t4, zero, label553
	andi t4, t1, 1
	bne t4, zero, label1826
	j label1825
label557:
	li t3, 16
	bge a5, t3, label562
	j label572
label563:
	li t3, 16
	bge t0, t3, label1848
	j label568
label1848:
	mv a5, a2
	mv t0, t2
	j label543
label568:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label569
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
	j label563
label569:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label563
label572:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label1865
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
	j label557
label1781:
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
	j label518
label1769:
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
	j label524
label1865:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label557
label1826:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label546
label1825:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a2, a2, t4
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label546
label553:
	andi t4, t1, 1
	beq t4, zero, label1826
	j label1825
label407:
	beq a1, zero, label411
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
label414:
	li t3, 16
	bge t1, t3, label419
	j label491
label459:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label407
label491:
	and t2, t2, t0
	andi t3, t2, 1
	beq t3, zero, label1714
	sh2add t2, t1, s0
	lw t3, 0(t2)
	addw a3, a3, t3
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label414
label1714:
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label414
label1877:
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label499
label523:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label524
label216:
	beq t0, zero, label1182
	mv t0, zero
	mv a4, a2
	j label217
label1182:
	mv a3, a5
	mv a5, a2
	mv t0, zero
	j label304
label217:
	beq a4, zero, label1186
	li t3, 1
	mv a3, a4
	mv t2, zero
	mv t1, zero
	j label221
label1186:
	mv a3, t0
	mv a5, a2
	mv t0, zero
	j label304
label221:
	li t4, 16
	bge t1, t4, label230
	and t4, t3, a3
	andi t3, t4, 1
	beq t3, zero, label227
	sh2add t3, t1, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, a3, 31
	addiw t1, t1, 1
	add t3, a3, t4
	sraiw a3, t3, 1
	mv t3, zero
	j label221
label230:
	beq t2, zero, label1205
	mv t1, a5
label231:
	beq t1, zero, label1205
	mv t2, t1
	mv t4, t0
	mv a3, zero
	mv t3, zero
label234:
	li t5, 16
	bge t3, t5, label1213
	j label258
label1213:
	mv t2, t0
	mv t3, zero
	mv t0, zero
label239:
	li t4, 16
	bge t0, t4, label1217
	j label244
label1217:
	lw t1, 4(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
	j label249
label244:
	and t4, t1, t2
	andi t5, t4, 1
	beq t5, zero, label1222
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
	j label239
label258:
	andi t5, t4, 1
	beq t5, zero, label263
	andi t5, t2, 1
	bne t5, zero, label259
label1259:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a3, a3, t6
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label234
label263:
	andi t5, t2, 1
	beq t5, zero, label259
	j label1259
label249:
	li t4, 16
	bge t1, t4, label1236
	j label254
label1236:
	mv t0, a3
	mv t1, t3
	j label231
label254:
	and t5, t0, t2
	andi t4, t5, 1
	beq t4, zero, label1241
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label249
label1241:
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label249
label1222:
	srliw t4, t2, 31
	srliw t5, t1, 31
	addiw t0, t0, 1
	add t6, t2, t4
	add t4, t1, t5
	sraiw t2, t6, 1
	sraiw t1, t4, 1
	j label239
label259:
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label234
label562:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label563
label304:
	beq a2, zero, label389
	li t3, 1
	mv a4, a2
	mv t2, zero
	mv t1, zero
label308:
	li t4, 16
	bge t1, t4, label313
	j label385
label1487:
	lw t1, 4(sp)
	mv a5, t0
	mv t0, a4
	divw a2, a2, t1
	j label304
label385:
	and t4, t3, a4
	andi t3, t4, 1
	beq t3, zero, label1502
	sh2add t3, t1, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, a4, 31
	addiw t1, t1, 1
	add t3, a4, t4
	sraiw a4, t3, 1
	mv t3, zero
	j label308
label389:
	li a2, 32767
	ble a0, a2, label1512
	j label1511
label313:
	beq t2, zero, label1357
	mv t1, a5
label314:
	beq t1, zero, label1357
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
label317:
	li t5, 16
	bge t3, t5, label1365
	j label322
label1365:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	j label328
label322:
	andi t5, t4, 1
	beq t5, zero, label323
	j label327
label1372:
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
	j label317
label327:
	andi t5, t2, 1
	bne t5, zero, label1373
	j label1372
label328:
	li t4, 16
	bge t0, t4, label333
	and t4, t1, t3
	andi t5, t4, 1
	beq t5, zero, label344
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
	j label328
label1373:
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	j label317
label344:
	srliw t5, t3, 31
	addiw t0, t0, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label328
label323:
	andi t5, t2, 1
	beq t5, zero, label1373
	j label1372
label1502:
	srliw t4, a4, 31
	addiw t1, t1, 1
	add t3, a4, t4
	sraiw a4, t3, 1
	mv t3, zero
	j label308
label419:
	beq a3, zero, label1569
	mv t0, a4
label420:
	beq t0, zero, label1569
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label423:
	li t4, 16
	bge t2, t4, label1577
	j label447
label1577:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label428:
	li t3, 16
	bge a5, t3, label1581
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label434
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
	j label428
label438:
	li t3, 16
	bge t0, t3, label1600
	j label443
label1600:
	mv a5, a3
	mv t0, t2
	j label420
label443:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label1605
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
	j label438
label1605:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label438
label447:
	andi t4, t3, 1
	beq t4, zero, label448
	j label452
label448:
	andi t4, t1, 1
	beq t4, zero, label1620
label1619:
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
	j label423
label452:
	andi t4, t1, 1
	bne t4, zero, label1620
	j label1619
label1620:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label423
label434:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label428
label1581:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label438
label1569:
	mv a3, a5
	mv a5, a4
	mv t0, a4
label455:
	beq t0, zero, label458
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	j label461
label458:
	li a4, 32767
	ble a1, a4, label459
	j label1639
label461:
	li t4, 16
	bge t2, t4, label1654
	j label485
label1654:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label466:
	li t3, 16
	bge a5, t3, label471
	j label481
label471:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
label472:
	li t3, 16
	bge t0, t3, label1665
	j label477
label1665:
	mv a5, a4
	mv t0, t2
	j label455
label477:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label1670
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
	j label472
label1670:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label472
label481:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label1682
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
	j label466
label485:
	andi t4, t3, 1
	beq t4, zero, label488
	j label490
label1699:
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
	j label461
label490:
	andi t4, t1, 1
	bne t4, zero, label486
	j label1699
label486:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label461
label1682:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label466
label488:
	andi t4, t1, 1
	beq t4, zero, label486
	j label1699
label581:
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label399
label333:
	lw t0, 4(sp)
	mv t3, zero
	mv t1, zero
	mulw t2, t2, t0
	li t0, 65535
label334:
	li t4, 16
	bge t1, t4, label1396
	j label339
label1396:
	mv t0, a4
	mv t1, t3
	j label314
label339:
	and t5, t0, t2
	andi t4, t5, 1
	beq t4, zero, label1401
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label334
label1401:
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label334
label227:
	srliw t4, a3, 31
	addiw t1, t1, 1
	add t3, a3, t4
	sraiw a3, t3, 1
	mv t3, zero
	j label221
label1639:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t0
	subw a1, a4, t1
	mv a4, a5
	mv a5, a3
	j label407
label1887:
	sh2add t1, a5, s0
	lw t0, 0(t1)
	addw a2, a2, t0
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label399
label510:
	li a4, 32767
	ble a3, a4, label1740
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t1
	subw a3, a4, t0
	mv a4, a5
	mv a5, a2
	j label495
label1740:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label495
label1357:
	mv a4, t0
	mv t0, a5
	mv t1, a5
label349:
	beq t1, zero, label382
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
label352:
	li t5, 16
	bge t3, t5, label1428
	j label376
label1428:
	mv t2, t0
	mv t3, zero
	mv t0, zero
label357:
	li t4, 16
	bge t0, t4, label362
	j label372
label363:
	li t4, 16
	bge t1, t4, label1439
	j label368
label1439:
	mv t0, a5
	mv t1, t3
	j label349
label368:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label1444
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label363
label1444:
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label363
label372:
	and t5, t1, t2
	andi t4, t5, 1
	beq t4, zero, label373
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
	j label357
label376:
	andi t5, t4, 1
	beq t5, zero, label378
	andi t5, t2, 1
	bne t5, zero, label1475
	j label377
label382:
	li a5, 32767
	ble a2, a5, label1487
	lw a5, 4(sp)
	lui t1, 16
	lw t2, 60(sp)
	divw a2, a2, a5
	addw a5, a2, t1
	subw a2, a5, t2
	mv a5, t0
	mv t0, a4
	j label304
label1475:
	srliw t5, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add a6, t4, t5
	add t5, t2, t6
	sraiw t4, a6, 1
	sraiw t2, t5, 1
	j label352
label373:
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label357
label377:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a5, a5, t6
	srliw t5, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add a6, t4, t5
	add t5, t2, t6
	sraiw t4, a6, 1
	sraiw t2, t5, 1
	j label352
label378:
	andi t5, t2, 1
	beq t5, zero, label1475
	j label377
label362:
	lw t0, 4(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	j label363
label1172:
	srliw t2, a3, 31
	addiw a4, a4, 1
	add t1, a3, t2
	sraiw a3, t1, 1
	mv t1, zero
	j label207
label411:
	li a1, 32767
	ble a0, a1, label412
	lw a1, 4(sp)
	lui a4, 16
	lw a3, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a4
	mv a4, a2
	subw a0, a1, a3
	mv a1, a5
	j label394
label412:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label394
label1205:
	mv a3, t0
	mv t0, a5
	mv t1, a5
label266:
	beq t1, zero, label299
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
label269:
	li t5, 16
	bge t3, t5, label1276
	j label274
label1276:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	j label280
label274:
	andi t5, t4, 1
	beq t5, zero, label276
	j label279
label275:
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
	j label269
label276:
	andi t5, t2, 1
	beq t5, zero, label277
	j label275
label279:
	andi t5, t2, 1
	bne t5, zero, label277
	j label275
label280:
	li t4, 16
	bge t0, t4, label285
	j label295
label286:
	li t4, 16
	bge t1, t4, label1307
	j label291
label1307:
	mv t0, a5
	mv t1, t3
	j label266
label291:
	and t5, t0, t2
	andi t4, t5, 1
	beq t4, zero, label292
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
	j label286
label292:
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	j label286
label295:
	and t5, t1, t3
	andi t4, t5, 1
	beq t4, zero, label296
	sh2add t5, t0, s0
	lw t4, 0(t5)
	addw t2, t2, t4
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t0, t0, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label280
label299:
	li a5, 32767
	ble a4, a5, label1335
	lw a5, 4(sp)
	lui t1, 16
	lw t2, 60(sp)
	divw a4, a4, a5
	addw a5, a4, t1
	subw a4, a5, t2
	mv a5, t0
	mv t0, a3
	j label217
label1335:
	lw t1, 4(sp)
	mv a5, t0
	mv t0, a3
	divw a4, a4, t1
	j label217
label277:
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label269
label296:
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t0, t0, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label280
label285:
	lw t0, 4(sp)
	mv t3, zero
	mv t1, zero
	mulw t2, t2, t0
	li t0, 65535
	j label286
label1512:
	lw a4, 4(sp)
	mv a2, t0
	mv a5, a3
	divw a0, a0, a4
	j label203
label1511:
	lw a2, 4(sp)
	lui a4, 16
	lw a5, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a4
	subw a0, a2, a5
	mv a5, a3
	mv a2, t0
	j label203
label392:
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a5, a2, label393
	li a0, 1
	j label201
label393:
	addiw a1, a1, 1
	j label199
