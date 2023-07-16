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
	bge a5, t1, label593
	and t1, t0, a3
	andi t0, t1, 1
	beq t0, zero, label1903
	sh2add t0, a5, s0
	lw t1, 0(t0)
	addw a2, a2, t1
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label584
label681:
	li a1, 32767
	ble a0, a1, label2080
	lw a1, 4(sp)
	lui a4, 16
	lw a3, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a4
	mv a4, a2
	subw a0, a1, a3
	mv a1, a5
	j label2
label2080:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label2
label593:
	beq a2, zero, label1913
	mv a5, zero
	mv a3, a1
	j label684
label1913:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label596
label684:
	beq a3, zero, label2094
	li t2, 1
	mv a2, a3
	mv t1, zero
	mv t0, zero
	j label688
label2094:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label596
label688:
	li t3, 16
	bge t0, t3, label697
	and t3, t2, a2
	andi t2, t3, 1
	beq t2, zero, label2103
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, a2, 31
	addiw t0, t0, 1
	add t3, a2, t2
	mv t2, zero
	sraiw a2, t3, 1
	j label688
label596:
	beq a1, zero, label681
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
label600:
	li t3, 16
	bge t1, t3, label605
	j label677
label674:
	li a4, 32767
	ble a1, a4, label2055
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	mv a5, a3
	j label596
label2055:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label596
label677:
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label2070
	sh2add t2, t1, s0
	lw t3, 0(t2)
	addw a3, a3, t3
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label600
label2070:
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label600
label2103:
	srliw t2, a2, 31
	addiw t0, t0, 1
	add t3, a2, t2
	mv t2, zero
	sraiw a2, t3, 1
	j label688
label605:
	beq a3, zero, label1925
	mv t0, a4
label606:
	beq t0, zero, label1925
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label609:
	li t4, 16
	bge t2, t4, label1933
	j label614
label1933:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label620
label614:
	andi t4, t3, 1
	beq t4, zero, label619
	andi t4, t1, 1
	bne t4, zero, label1942
	j label1941
label620:
	li t3, 16
	bge a5, t3, label625
	j label635
label626:
	li t3, 16
	bge t0, t3, label1964
	j label631
label1964:
	mv a5, a3
	mv t0, t2
	j label606
label631:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label1969
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
	j label626
label1969:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label626
label635:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label1981
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
	j label620
label1981:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label620
label1942:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label609
label1941:
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
	j label609
label619:
	andi t4, t1, 1
	beq t4, zero, label1942
	j label1941
label625:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label626
label1925:
	mv a3, a5
	mv a5, a4
	mv t0, a4
label641:
	beq t0, zero, label674
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label644:
	li t4, 16
	bge t2, t4, label1996
	j label649
label1996:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label655
label649:
	andi t4, t3, 1
	beq t4, zero, label653
	j label654
label2010:
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
	j label644
label654:
	andi t4, t1, 1
	bne t4, zero, label651
	j label2010
label655:
	li t3, 16
	bge a5, t3, label660
	j label670
label660:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
label661:
	li t3, 16
	bge t0, t3, label2027
	j label666
label2027:
	mv a5, a4
	mv t0, t2
	j label641
label666:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label2032
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
	j label661
label2032:
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	j label661
label670:
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label2044
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
	j label655
label2044:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label655
label651:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label644
label653:
	andi t4, t1, 1
	beq t4, zero, label651
	j label2010
label1903:
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label584
label697:
	beq t1, zero, label2113
	mv t0, a4
	j label736
label2113:
	mv a2, a5
	mv a5, a4
	mv t0, a4
label700:
	beq t0, zero, label733
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label703:
	li t4, 16
	bge t2, t4, label2121
	j label708
label2121:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label714
label708:
	andi t4, t3, 1
	beq t4, zero, label710
	andi t4, t1, 1
	bne t4, zero, label711
	j label709
label714:
	li t3, 16
	bge a5, t3, label2145
	j label719
label2145:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label724
label719:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label720
	j label2149
label724:
	li t3, 16
	bge t0, t3, label2164
	j label729
label2164:
	mv a5, a4
	mv t0, t2
	j label700
label729:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label730
	j label2168
label730:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label724
label733:
	li a4, 32767
	ble a3, a4, label2180
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t0
	subw a3, a4, t1
	mv a4, a5
	mv a5, a2
	j label684
label711:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label703
label720:
	srliw t3, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t2, t3
	add t3, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t3, 1
	j label714
label736:
	beq t0, zero, label2194
	mv a2, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label739
label2194:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label700
label739:
	li t4, 16
	bge t2, t4, label2198
	j label744
label2198:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label750
label744:
	andi t4, t3, 1
	beq t4, zero, label748
	andi t4, t1, 1
	bne t4, zero, label746
	j label2206
label750:
	li t3, 16
	bge a5, t3, label2222
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label756
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t3, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t2, t3
	add t3, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t3, 1
	j label750
label760:
	li t3, 16
	bge t0, t3, label2241
	j label765
label2241:
	mv a5, a2
	mv t0, t2
	j label736
label765:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label2246
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
	j label760
label2246:
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	j label760
label746:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label739
label756:
	srliw t3, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t2, t3
	add t3, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t3, 1
	j label750
label709:
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
	j label703
label710:
	andi t4, t1, 1
	beq t4, zero, label711
	j label709
label2149:
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
	j label714
label2168:
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
	j label724
label748:
	andi t4, t1, 1
	beq t4, zero, label746
label2206:
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
	j label739
label2222:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
	j label760
label2180:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label684
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
	bge a5, t1, label20
	and t1, t0, a3
	andi t0, t1, 1
	beq t0, zero, label801
	sh2add t0, a5, s0
	lw t1, 0(t0)
	addw a2, a2, t1
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label11
label20:
	beq a2, zero, label811
	mv a5, zero
	mv a3, a1
	j label111
label811:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label23
label978:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label7
label111:
	beq a3, zero, label992
	mv a2, zero
	li t2, 1
	mv t0, a3
	mv t1, zero
	j label115
label992:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label23
label115:
	li t3, 16
	bge t1, t3, label124
	and t2, t2, t0
	andi t3, t2, 1
	beq t3, zero, label121
	j label1000
label124:
	beq a2, zero, label1011
	mv t0, a4
	j label125
label23:
	beq a1, zero, label108
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
label27:
	li t3, 16
	bge t1, t3, label36
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label33
	j label823
label36:
	beq a3, zero, label834
	mv t0, a4
	j label75
label834:
	mv a3, a5
	mv a5, a4
	mv t0, a4
label39:
	beq t0, zero, label72
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label42:
	li t4, 16
	bge t2, t4, label842
	j label47
label842:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label53
label47:
	andi t4, t3, 1
	beq t4, zero, label51
	j label52
label50:
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
	j label42
label52:
	andi t4, t1, 1
	bne t4, zero, label48
	j label50
label53:
	li t3, 16
	bge a5, t3, label58
	j label68
label58:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
label59:
	li t3, 16
	bge t0, t3, label873
	j label64
label873:
	mv a5, a4
	mv t0, t2
	j label39
label64:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label878
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
	j label59
label878:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label59
label68:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label69
	j label889
label72:
	li a4, 32767
	ble a1, a4, label73
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	mv a5, a3
	j label23
label73:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label23
label108:
	li a1, 32767
	ble a0, a1, label978
	j label977
label48:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label42
label69:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label53
label75:
	beq t0, zero, label915
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label78
label915:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label39
label78:
	li t4, 16
	bge t2, t4, label919
	j label102
label919:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label83:
	li t3, 16
	bge a5, t3, label923
	j label88
label923:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
	j label93
label88:
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label89
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
	j label83
label93:
	li t3, 16
	bge t0, t3, label942
	j label98
label942:
	mv a5, a3
	mv t0, t2
	j label75
label98:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label947
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
	j label93
label947:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label93
label102:
	andi t4, t3, 1
	beq t4, zero, label104
	andi t4, t1, 1
	bne t4, zero, label963
	j label962
label89:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label83
label963:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label78
label889:
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
	j label53
label51:
	andi t4, t1, 1
	beq t4, zero, label48
	j label50
label125:
	beq t0, zero, label1011
	mv t1, t0
	mv t3, a5
	mv a2, zero
	mv t2, zero
label128:
	li t4, 16
	bge t2, t4, label1019
	j label133
label1019:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label139
label133:
	andi t4, t3, 1
	beq t4, zero, label138
	andi t4, t1, 1
	bne t4, zero, label135
	j label1027
label138:
	andi t4, t1, 1
	beq t4, zero, label135
	j label1027
label139:
	li t3, 16
	bge a5, t3, label144
	j label154
label144:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
label145:
	li t3, 16
	bge t0, t3, label1050
	j label150
label1050:
	mv a5, a2
	mv t0, t2
	j label125
label150:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label1055
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
	j label145
label1055:
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	j label145
label154:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label1067
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
	j label139
label962:
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
	j label78
label104:
	andi t4, t1, 1
	beq t4, zero, label963
	j label962
label1067:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label139
label135:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label128
label1027:
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
	j label128
label33:
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label27
label823:
	sh2add t3, t1, s0
	lw t2, 0(t3)
	addw a3, a3, t2
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label27
label121:
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label115
label1000:
	sh2add t2, t1, s0
	lw t3, 0(t2)
	addw a2, a2, t3
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label115
label801:
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label11
label1011:
	mv a2, a5
	mv a5, a4
	mv t0, a4
label160:
	beq t0, zero, label193
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label163:
	li t4, 16
	bge t2, t4, label1082
	j label187
label1082:
	mv t1, a5
	mv t2, zero
	mv a5, zero
label168:
	li t3, 16
	bge a5, t3, label1086
	j label173
label1086:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label178
label173:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label1091
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
	j label168
label178:
	li t3, 16
	bge t0, t3, label1105
	j label183
label1105:
	mv a5, a4
	mv t0, t2
	j label160
label183:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label184
	j label1109
label184:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label178
label187:
	andi t4, t3, 1
	beq t4, zero, label190
	andi t4, t1, 1
	bne t4, zero, label1126
label1125:
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
	j label163
label190:
	andi t4, t1, 1
	beq t4, zero, label1126
	j label1125
label1091:
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label168
label1126:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label163
label1109:
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
	j label178
label193:
	li a4, 32767
	ble a3, a4, label1141
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t1
	subw a3, a4, t0
	mv a4, a5
	mv a5, a2
	j label111
label1141:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label111
label977:
	lw a1, 4(sp)
	lui a4, 16
	lw a3, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a4
	mv a4, a2
	subw a0, a1, a3
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
	ble a0, zero, label207
	li t1, 1
	mv a3, a0
	mv t0, zero
	mv a4, zero
label209:
	li t2, 16
	bge a4, t2, label218
	and t1, t1, a3
	andi t2, t1, 1
	beq t2, zero, label215
	j label1179
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
	and t0, t0, a3
	andi t1, t0, 1
	beq t1, zero, label581
	sh2add t1, a5, s0
	lw t0, 0(t1)
	addw a2, a2, t0
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label399
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
	j label505
label576:
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label577
	sh2add t2, t1, s0
	lw t3, 0(t2)
	addw a2, a2, t3
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label499
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
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t0
	subw a1, a4, t1
	mv a4, a5
	mv a5, a3
	j label407
label459:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label407
label461:
	li t4, 16
	bge t2, t4, label1654
	j label466
label1654:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label472
label466:
	andi t4, t3, 1
	beq t4, zero, label469
	j label471
label469:
	andi t4, t1, 1
	beq t4, zero, label467
	j label1664
label471:
	andi t4, t1, 1
	bne t4, zero, label467
	j label1664
label472:
	li t3, 16
	bge a5, t3, label1678
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label1683
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
	j label472
label482:
	li t3, 16
	bge t0, t3, label1697
	j label487
label1697:
	mv a5, a4
	mv t0, t2
	j label455
label487:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label1702
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
	j label482
label1702:
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	j label482
label491:
	and t2, t2, t0
	andi t3, t2, 1
	beq t3, zero, label492
	j label1713
label467:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label461
label1683:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label472
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
	j label428
label1577:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label434
label428:
	andi t4, t3, 1
	beq t4, zero, label429
	j label433
label429:
	andi t4, t1, 1
	beq t4, zero, label1585
label1584:
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
label433:
	andi t4, t1, 1
	bne t4, zero, label1585
	j label1584
label434:
	li t3, 16
	bge a5, t3, label439
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label450
	j label1624
label1585:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label423
label450:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label434
label1664:
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
	j label461
label505:
	beq t0, zero, label1732
	mv t1, t0
	mv t3, a5
	mv a2, zero
	mv t2, zero
label508:
	li t4, 16
	bge t2, t4, label1740
	j label513
label1740:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label519
label513:
	andi t4, t3, 1
	beq t4, zero, label515
	j label518
label514:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a2, a2, t5
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label508
label515:
	andi t4, t1, 1
	beq t4, zero, label516
	j label514
label518:
	andi t4, t1, 1
	bne t4, zero, label516
	j label514
label519:
	li t3, 16
	bge a5, t3, label1764
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label1769
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
	j label519
label529:
	li t3, 16
	bge t0, t3, label1783
	j label534
label1783:
	mv a5, a2
	mv t0, t2
	j label505
label534:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label535
	j label1787
label535:
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	j label529
label1624:
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
	j label434
label516:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label508
label1769:
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	j label519
label1787:
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
	j label529
label1678:
	lw t0, 4(sp)
	mv t2, zero
	li a5, 65535
	mulw t1, t1, t0
	mv t0, zero
	j label482
label492:
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label414
label439:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
label440:
	li t3, 16
	bge t0, t3, label1608
	j label445
label1608:
	mv a5, a3
	mv t0, t2
	j label420
label445:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label1613
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
	j label440
label1613:
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	j label440
label1713:
	sh2add t3, t1, s0
	lw t2, 0(t3)
	addw a3, a3, t2
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label414
label577:
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label499
label1764:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label529
label1569:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label455
label581:
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label399
label218:
	beq t0, zero, label1190
	mv t0, zero
	mv a4, a2
	j label219
label1190:
	mv a3, a5
	mv a5, a2
	mv t0, zero
	j label306
label219:
	beq a4, zero, label1194
	li t3, 1
	mv a3, a4
	mv t2, zero
	mv t1, zero
	j label223
label1194:
	mv a3, t0
	mv a5, a2
	mv t0, zero
	j label306
label223:
	li t4, 16
	bge t1, t4, label232
	and t4, t3, a3
	andi t3, t4, 1
	beq t3, zero, label1203
	sh2add t4, t1, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, a3, 31
	addiw t1, t1, 1
	add t4, a3, t3
	mv t3, zero
	sraiw a3, t4, 1
	j label223
label232:
	beq t2, zero, label1213
	mv t1, a5
	j label271
label1213:
	mv a3, t0
	mv t0, a5
	mv t1, a5
label235:
	beq t1, zero, label268
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
label238:
	li t5, 16
	bge t3, t5, label1221
	j label243
label1221:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	j label249
label243:
	andi t5, t4, 1
	beq t5, zero, label245
	j label248
label244:
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
	j label238
label245:
	andi t5, t2, 1
	beq t5, zero, label246
	j label244
label248:
	andi t5, t2, 1
	bne t5, zero, label246
	j label244
label249:
	li t4, 16
	bge t0, t4, label1245
	and t5, t1, t3
	andi t4, t5, 1
	beq t4, zero, label255
	sh2add t4, t0, s0
	lw t5, 0(t4)
	addw t2, t2, t5
	srliw t4, t3, 31
	addiw t0, t0, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label249
label259:
	li t4, 16
	bge t1, t4, label1264
	j label264
label1264:
	mv t0, a5
	mv t1, t3
	j label235
label264:
	and t5, t0, t2
	andi t4, t5, 1
	beq t4, zero, label265
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
	j label259
label265:
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label259
label268:
	li a5, 32767
	ble a4, a5, label1280
	lw a5, 4(sp)
	lui t1, 16
	lw t2, 60(sp)
	divw a4, a4, a5
	addw a5, a4, t1
	subw a4, a5, t2
	mv a5, t0
	mv t0, a3
	j label219
label1280:
	lw t1, 4(sp)
	mv a5, t0
	mv t0, a3
	divw a4, a4, t1
	j label219
label246:
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label238
label255:
	srliw t4, t3, 31
	addiw t0, t0, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label249
label271:
	beq t1, zero, label1294
	mv t2, t1
	mv t4, t0
	mv a3, zero
	mv t3, zero
	j label274
label1294:
	mv a3, t0
	mv t0, a5
	mv t1, a5
	j label235
label274:
	li t5, 16
	bge t3, t5, label1298
	j label298
label1298:
	mv t2, t0
	mv t3, zero
	mv t0, zero
label279:
	li t4, 16
	bge t0, t4, label1302
	j label284
label1302:
	lw t1, 4(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
	j label289
label284:
	and t4, t1, t2
	andi t5, t4, 1
	beq t5, zero, label1307
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
	j label279
label289:
	li t4, 16
	bge t1, t4, label1321
	j label294
label1321:
	mv t0, a3
	mv t1, t3
	j label271
label294:
	and t5, t0, t2
	andi t4, t5, 1
	beq t4, zero, label1326
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
	j label289
label1326:
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label289
label298:
	andi t5, t4, 1
	beq t5, zero, label303
	j label302
label301:
	sh2add t6, t3, s0
	lw t5, 0(t6)
	addw a3, a3, t5
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label274
label302:
	andi t5, t2, 1
	bne t5, zero, label299
	j label301
label303:
	andi t5, t2, 1
	beq t5, zero, label299
	j label301
label299:
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label274
label1307:
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label279
label306:
	beq a2, zero, label310
	li t3, 1
	mv a4, a2
	mv t2, zero
	mv t1, zero
	j label313
label310:
	li a2, 32767
	ble a0, a2, label1361
	j label1360
label313:
	li t4, 16
	bge t1, t4, label318
	j label390
label1509:
	lw t1, 4(sp)
	mv a5, t0
	mv t0, a4
	divw a2, a2, t1
	j label306
label390:
	and t3, t3, a4
	andi t4, t3, 1
	beq t4, zero, label1524
	sh2add t4, t1, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, a4, 31
	addiw t1, t1, 1
	add t3, a4, t4
	sraiw a4, t3, 1
	mv t3, zero
	j label313
label1524:
	srliw t4, a4, 31
	addiw t1, t1, 1
	add t3, a4, t4
	sraiw a4, t3, 1
	mv t3, zero
	j label313
label1245:
	lw t0, 4(sp)
	mv t3, zero
	mv t1, zero
	mulw t2, t2, t0
	li t0, 65535
	j label259
label1203:
	srliw t3, a3, 31
	addiw t1, t1, 1
	add t4, a3, t3
	mv t3, zero
	sraiw a3, t4, 1
	j label223
label1732:
	mv a2, a5
	mv a5, a4
	mv t0, a4
label540:
	beq t0, zero, label543
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
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
label553:
	andi t4, t1, 1
	beq t4, zero, label1826
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
	mv a5, a4
	mv t0, t2
	j label540
label568:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label569
	j label1852
label569:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label563
label572:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label573
	j label1864
label1826:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label546
label573:
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	j label557
label1825:
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
	j label546
label1864:
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
	j label557
label1852:
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
	j label563
label562:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label563
label543:
	li a4, 32767
	ble a3, a4, label1803
	j label1802
label1803:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label495
label1802:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t1
	subw a3, a4, t0
	mv a4, a5
	mv a5, a2
	j label495
label318:
	beq t2, zero, label1379
	mv t1, a5
label319:
	beq t1, zero, label1379
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
label322:
	li t5, 16
	bge t3, t5, label1387
	j label346
label1387:
	mv t2, zero
	mv t3, t0
	mv t0, zero
label327:
	li t4, 16
	bge t0, t4, label1391
	and t4, t1, t3
	andi t5, t4, 1
	beq t5, zero, label1396
	sh2add t4, t0, s0
	lw t5, 0(t4)
	addw t2, t2, t5
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t0, t0, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label327
label337:
	li t4, 16
	bge t1, t4, label1410
	j label342
label1410:
	mv t0, a4
	mv t1, t3
	j label319
label342:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label1415
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
	j label337
label1415:
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label337
label346:
	andi t5, t4, 1
	beq t5, zero, label347
	j label351
label1429:
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
	j label322
label351:
	andi t5, t2, 1
	bne t5, zero, label1430
	j label1429
label1396:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t0, t0, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label327
label1430:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label322
label347:
	andi t5, t2, 1
	beq t5, zero, label1430
	j label1429
label1391:
	lw t1, 4(sp)
	mv t3, zero
	li t0, 65535
	mulw t2, t2, t1
	mv t1, zero
	j label337
label1379:
	mv a4, t0
	mv t0, a5
	mv t1, a5
label354:
	beq t1, zero, label387
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
label357:
	li t5, 16
	bge t3, t5, label1450
	j label362
label1450:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	j label368
label362:
	andi t5, t4, 1
	beq t5, zero, label363
	j label364
label1457:
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
	j label357
label364:
	andi t5, t2, 1
	bne t5, zero, label1458
	j label1457
label368:
	li t4, 16
	bge t0, t4, label1474
	and t4, t1, t2
	andi t5, t4, 1
	beq t5, zero, label374
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
	j label368
label378:
	li t4, 16
	bge t1, t4, label1493
	j label383
label1493:
	mv t0, a5
	mv t1, t3
	j label354
label383:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label1498
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
	j label378
label1498:
	srliw t4, t2, 31
	srliw t5, t0, 31
	addiw t1, t1, 1
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	j label378
label387:
	li a5, 32767
	ble a2, a5, label1509
	j label1508
label1458:
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label357
label374:
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label368
label363:
	andi t5, t2, 1
	beq t5, zero, label1458
	j label1457
label1474:
	lw t0, 4(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	j label378
label215:
	srliw t2, a3, 31
	addiw a4, a4, 1
	add t1, a3, t2
	sraiw a3, t1, 1
	mv t1, zero
	j label209
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
label1508:
	lw a5, 4(sp)
	lui t1, 16
	lw t2, 60(sp)
	divw a2, a2, a5
	addw a5, a2, t1
	subw a2, a5, t2
	mv a5, t0
	mv t0, a4
	j label306
label1179:
	sh2add t1, a4, s0
	lw t2, 0(t1)
	addw t0, t0, t2
	srliw t2, a3, 31
	addiw a4, a4, 1
	add t1, a3, t2
	sraiw a3, t1, 1
	mv t1, zero
	j label209
label1361:
	lw a4, 4(sp)
	mv a2, t0
	mv a5, a3
	divw a0, a0, a4
	j label203
label1360:
	lw a2, 4(sp)
	lui a4, 16
	lw a5, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a4
	subw a0, a2, a5
	mv a5, a3
	mv a2, t0
	j label203
label207:
	sh2add a0, a1, s0
	lw a2, 0(a0)
	beq a5, a2, label208
	li a0, 1
	j label201
label208:
	addiw a1, a1, 1
	j label199
