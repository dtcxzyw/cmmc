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
	li a3, 64
	sd s0, 80(sp)
	addi s0, sp, 0
	sd s1, 72(sp)
	sd ra, 64(sp)
	sw a4, 0(sp)
	sw a1, 4(sp)
	sw a2, 8(sp)
	li a2, 16
	sw a0, 12(sp)
	li a0, 32
	sw a2, 16(sp)
	li a2, 128
	sw a0, 20(sp)
	li a0, 256
	sw a3, 24(sp)
	lui a3, 2
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
	beq t0, zero, label590
	j label1902
label766:
	li a3, 32767
	ble a0, a3, label2243
	lw a1, 4(sp)
	lui a3, 16
	lw a4, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a3
	subw a0, a1, a4
	mv a4, a2
	mv a1, a5
	j label2
label2243:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label2
label593:
	beq a2, zero, label1913
	mv a5, zero
	mv a3, a1
	j label594
label1913:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label681
label594:
	beq a3, zero, label1917
	li t2, 1
	mv a2, a3
	mv t1, zero
	mv t0, zero
	j label598
label1917:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label681
label598:
	li t3, 16
	bge t0, t3, label603
	and t2, t2, a2
	andi t3, t2, 1
	beq t3, zero, label2070
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t3, a2, 31
	addiw t0, t0, 1
	add t2, a2, t3
	sraiw a2, t2, 1
	mv t2, zero
	j label598
label603:
	beq t1, zero, label1925
	mv t0, a4
	j label642
label1925:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label606
label642:
	beq t0, zero, label2006
	mv a2, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label645
label2006:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label606
label645:
	li t4, 16
	bge t2, t4, label2010
	j label650
label2010:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label656
label650:
	andi t4, t3, 1
	beq t4, zero, label655
	andi t4, t1, 1
	bne t4, zero, label2019
label2018:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a2, a2, t5
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label645
label655:
	andi t4, t1, 1
	beq t4, zero, label2019
	j label2018
label656:
	li t3, 16
	bge a5, t3, label661
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label2058
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
	j label656
label606:
	beq t0, zero, label639
	mv a4, zero
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
	beq t4, zero, label618
	j label619
label618:
	andi t4, t1, 1
	beq t4, zero, label616
label1947:
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
	j label609
label619:
	andi t4, t1, 1
	bne t4, zero, label616
	j label1947
label620:
	li t3, 16
	bge a5, t3, label1957
	j label625
label1957:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label630
label625:
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label1962
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
	j label620
label630:
	li t3, 16
	bge t0, t3, label1976
	j label635
label1976:
	mv a5, a4
	mv t0, t2
	j label606
label635:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label636
	j label1980
label636:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label630
label639:
	li a4, 32767
	ble a3, a4, label1992
	j label1991
label1962:
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	j label620
label616:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label609
label2058:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label656
label2019:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label645
label1980:
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
	j label630
label681:
	beq a1, zero, label766
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
label685:
	li t3, 16
	bge t1, t3, label694
	and t2, t2, t0
	andi t3, t2, 1
	beq t3, zero, label2089
	sh2add t3, t1, s0
	lw t2, 0(t3)
	addw a3, a3, t2
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label685
label2228:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	mv a5, a3
	j label681
label2089:
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label685
label2070:
	srliw t3, a2, 31
	addiw t0, t0, 1
	add t2, a2, t3
	sraiw a2, t2, 1
	mv t2, zero
	j label598
label661:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
label662:
	li t3, 16
	bge t0, t3, label2041
	j label667
label2041:
	mv a5, a2
	mv t0, t2
	j label642
label667:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label668
	j label2045
label668:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label662
label2045:
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
	j label662
label694:
	beq a3, zero, label2099
	mv t0, a4
label695:
	beq t0, zero, label2099
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label698:
	li t4, 16
	bge t2, t4, label2107
	j label703
label2107:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label709
label703:
	andi t4, t3, 1
	beq t4, zero, label706
	j label707
label706:
	andi t4, t1, 1
	beq t4, zero, label704
	j label2117
label707:
	andi t4, t1, 1
	bne t4, zero, label704
	j label2117
label709:
	li t3, 16
	bge a5, t3, label2131
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label715
	j label2135
label719:
	li t3, 16
	bge t0, t3, label2150
	j label724
label2150:
	mv a5, a3
	mv t0, t2
	j label695
label724:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label2155
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
	j label719
label2155:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label719
label704:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label698
label715:
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label709
label2135:
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
	j label709
label2117:
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
	j label698
label2131:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label719
label2099:
	mv a3, a5
	mv a5, a4
	mv t0, a4
label730:
	beq t0, zero, label763
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label733:
	li t4, 16
	bge t2, t4, label2170
	j label738
label2170:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label744
label738:
	andi t4, t3, 1
	beq t4, zero, label740
	andi t4, t1, 1
	bne t4, zero, label2182
	j label739
label744:
	li t3, 16
	bge a5, t3, label749
	j label759
label749:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
label750:
	li t3, 16
	bge t0, t3, label2201
	j label755
label2201:
	mv a5, a4
	mv t0, t2
	j label730
label755:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label2206
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
	j label750
label2206:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label750
label759:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label760
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
	j label744
label760:
	srliw t3, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t2, t3
	add t3, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t3, 1
	j label744
label2182:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label733
label739:
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
	j label733
label740:
	andi t4, t1, 1
	beq t4, zero, label2182
	j label739
label763:
	li a4, 32767
	ble a1, a4, label2229
	j label2228
label2229:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label681
label590:
	srliw t1, a3, 31
	addiw a5, a5, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	j label584
label1902:
	sh2add t1, a5, s0
	lw t0, 0(t1)
	addw a2, a2, t0
	srliw t1, a3, 31
	addiw a5, a5, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	j label584
label1992:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label594
label1991:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t0
	subw a3, a4, t1
	mv a4, a5
	mv a5, a2
	j label594
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
	li t0, 1
	mv a2, a0
	mv a5, zero
	mv a3, zero
label11:
	li t1, 16
	bge a3, t1, label20
	and t1, t0, a2
	andi t0, t1, 1
	beq t0, zero, label801
	sh2add t1, a3, s0
	lw t0, 0(t1)
	addw a5, a5, t0
	srliw t1, a2, 31
	addiw a3, a3, 1
	add t0, a2, t1
	sraiw a2, t0, 1
	mv t0, zero
	j label11
label20:
	beq a5, zero, label811
	mv a5, zero
	mv a3, a1
	j label21
label811:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label108
label21:
	beq a3, zero, label815
	li t2, 1
	mv a2, a3
	mv t1, zero
	mv t0, zero
	j label25
label815:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label108
label25:
	li t3, 16
	bge t0, t3, label34
	and t3, t2, a2
	andi t2, t3, 1
	beq t2, zero, label824
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, a2, 31
	addiw t0, t0, 1
	add t3, a2, t2
	mv t2, zero
	sraiw a2, t3, 1
	j label25
label34:
	beq t1, zero, label834
	mv t0, a4
label35:
	beq t0, zero, label834
	mv t1, t0
	mv t3, a5
	mv a2, zero
	mv t2, zero
label38:
	li t4, 16
	bge t2, t4, label842
	j label62
label842:
	mv t1, a5
	mv t2, zero
	mv a5, zero
label43:
	li t3, 16
	bge a5, t3, label846
	j label48
label846:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label53
label48:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label49
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
	j label43
label62:
	andi t4, t3, 1
	beq t4, zero, label67
	andi t4, t1, 1
	bne t4, zero, label64
label892:
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
	j label38
label67:
	andi t4, t1, 1
	beq t4, zero, label64
	j label892
label113:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label7
label53:
	li t3, 16
	bge t0, t3, label865
	j label58
label865:
	mv a5, a2
	mv t0, t2
	j label35
label58:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label870
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
	j label53
label870:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label53
label64:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label38
label49:
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	j label43
label108:
	beq a1, zero, label112
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
label115:
	li t3, 16
	bge t1, t3, label120
	j label192
label120:
	beq a3, zero, label1000
	mv t0, a4
	j label159
label1000:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label123
label156:
	li a4, 32767
	ble a1, a4, label157
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t0
	subw a1, a4, t1
	mv a4, a5
	mv a5, a3
	j label108
label157:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label108
label192:
	and t2, t2, t0
	andi t3, t2, 1
	beq t3, zero, label193
	j label1144
label123:
	beq t0, zero, label156
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label126:
	li t4, 16
	bge t2, t4, label1008
	j label131
label1008:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label137
label131:
	andi t4, t3, 1
	beq t4, zero, label132
	j label136
label132:
	andi t4, t1, 1
	beq t4, zero, label1016
label1015:
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
	bne t4, zero, label1016
	j label1015
label137:
	li t3, 16
	bge a5, t3, label142
	j label152
label142:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
label143:
	li t3, 16
	bge t0, t3, label1039
	j label148
label1039:
	mv a5, a4
	mv t0, t2
	j label123
label148:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label1044
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
label1044:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label143
label152:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label153
	j label1055
label153:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label137
label1016:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label126
label159:
	beq t0, zero, label1081
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label162
label1081:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label123
label162:
	li t4, 16
	bge t2, t4, label1085
	j label186
label1085:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label167:
	li t3, 16
	bge a5, t3, label1089
	j label172
label1089:
	lw t0, 4(sp)
	mv t2, zero
	li a5, 65535
	mulw t1, t1, t0
	mv t0, zero
	j label177
label172:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label1094
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
	j label167
label177:
	li t3, 16
	bge t0, t3, label1108
	j label182
label1108:
	mv a5, a3
	mv t0, t2
	j label159
label182:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label183
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
	j label177
label183:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label177
label186:
	andi t4, t3, 1
	beq t4, zero, label190
	j label191
label189:
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
	j label162
label191:
	andi t4, t1, 1
	bne t4, zero, label187
	j label189
label187:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label162
label1094:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label167
label1055:
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
	j label137
label190:
	andi t4, t1, 1
	beq t4, zero, label187
	j label189
label193:
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label115
label1144:
	sh2add t3, t1, s0
	lw t2, 0(t3)
	addw a3, a3, t2
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label115
label824:
	srliw t2, a2, 31
	addiw t0, t0, 1
	add t3, a2, t2
	mv t2, zero
	sraiw a2, t3, 1
	j label25
label801:
	srliw t1, a2, 31
	addiw a3, a3, 1
	add t0, a2, t1
	sraiw a2, t0, 1
	mv t0, zero
	j label11
label834:
	mv a2, a5
	mv a5, a4
	mv t0, a4
label70:
	beq t0, zero, label103
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label73:
	li t4, 16
	bge t2, t4, label905
	j label97
label905:
	mv t1, a5
	mv t2, zero
	mv a5, zero
label78:
	li t3, 16
	bge a5, t3, label909
	j label83
label909:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label88
label83:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label84
	j label913
label88:
	li t3, 16
	bge t0, t3, label928
	j label93
label928:
	mv a5, a4
	mv t0, t2
	j label70
label93:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label94
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
	j label88
label94:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label88
label97:
	andi t4, t3, 1
	beq t4, zero, label98
	j label102
label947:
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
	j label73
label102:
	andi t4, t1, 1
	bne t4, zero, label99
	j label947
label103:
	li t0, 32767
	ble a3, t0, label104
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t0
	subw a3, a4, t1
	mv a4, a5
	mv a5, a2
	j label21
label104:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label21
label99:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label73
label84:
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label78
label98:
	andi t4, t1, 1
	beq t4, zero, label99
	j label947
label913:
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
	j label78
label112:
	li a1, 32767
	ble a0, a1, label113
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
	j label201
label1159:
	mv a0, zero
	j label392
label201:
	ble a0, zero, label390
	mv a3, zero
	li t1, 1
	mv a4, a0
	mv t0, zero
label205:
	li t2, 16
	bge t0, t2, label214
	and t2, t1, a4
	andi t1, t2, 1
	beq t1, zero, label211
	j label1171
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
	srliw t1, a3, 31
	addiw a5, a5, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	j label399
label404:
	beq a2, zero, label1543
	mv a5, zero
	mv a3, a1
	j label405
label1543:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label492
label405:
	beq a3, zero, label1547
	li t2, 1
	mv a2, a3
	mv t1, zero
	mv t0, zero
	j label409
label1547:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label492
label409:
	li t3, 16
	bge t0, t3, label418
	and t2, t2, a2
	andi t3, t2, 1
	beq t3, zero, label415
	sh2add t2, t0, s0
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t3, a2, 31
	addiw t0, t0, 1
	add t2, a2, t3
	sraiw a2, t2, 1
	mv t2, zero
	j label409
label418:
	beq t1, zero, label1566
	mv t0, a4
label419:
	beq t0, zero, label1566
	mv t1, t0
	mv t3, a5
	mv a2, zero
	mv t2, zero
label422:
	li t4, 16
	bge t2, t4, label1574
	j label446
label1574:
	mv t1, a5
	mv t2, zero
	mv a5, zero
label427:
	li t3, 16
	bge a5, t3, label1578
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label1583
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
	j label427
label446:
	andi t4, t3, 1
	beq t4, zero, label449
	andi t4, t1, 1
	bne t4, zero, label1622
	j label447
label1622:
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label422
label1583:
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	j label427
label447:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a2, a2, t5
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label422
label449:
	andi t4, t1, 1
	beq t4, zero, label1622
	j label447
label492:
	beq a1, zero, label496
	li t2, 1
	mv a3, a1
	mv t1, zero
	mv t0, zero
label499:
	li t3, 16
	bge t0, t3, label504
	j label576
label573:
	li t0, 32767
	ble a1, t0, label1862
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	mv a5, a3
	j label492
label576:
	and t3, t2, a3
	andi t2, t3, 1
	beq t2, zero, label577
	j label1876
label577:
	srliw t3, a3, 31
	addiw t0, t0, 1
	add t2, a3, t3
	sraiw a3, t2, 1
	mv t2, zero
	j label499
label1876:
	sh2add t2, t0, s0
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t3, a3, 31
	addiw t0, t0, 1
	add t2, a3, t3
	sraiw a3, t2, 1
	mv t2, zero
	j label499
label415:
	srliw t3, a2, 31
	addiw t0, t0, 1
	add t2, a2, t3
	sraiw a2, t2, 1
	mv t2, zero
	j label409
label214:
	beq a3, zero, label1182
	mv t0, zero
	mv a4, a2
	j label215
label1182:
	mv a3, a5
	mv a5, a2
	mv t0, zero
	j label302
label215:
	beq a4, zero, label1186
	mv a3, zero
	li t3, 1
	mv t1, a4
	mv t2, zero
	j label219
label1186:
	mv a3, t0
	mv a5, a2
	mv t0, zero
	j label302
label219:
	li t4, 16
	bge t2, t4, label228
	and t3, t3, t1
	andi t4, t3, 1
	beq t4, zero, label225
	j label1194
label228:
	beq a3, zero, label1205
	mv t1, a5
	j label267
label1205:
	mv a3, t0
	mv t0, a5
	mv t1, a5
	j label231
label267:
	beq t1, zero, label1286
	mv a3, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
	j label270
label1286:
	mv a3, t0
	mv t0, a5
	mv t1, a5
	j label231
label270:
	li t5, 16
	bge t3, t5, label1290
	j label275
label1290:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	j label281
label275:
	andi t5, t4, 1
	beq t5, zero, label276
	j label277
label276:
	andi t5, t2, 1
	beq t5, zero, label1298
label1297:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a3, a3, t6
	srliw t5, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add a6, t4, t5
	add t5, t2, t6
	sraiw t4, a6, 1
	sraiw t2, t5, 1
	j label270
label277:
	andi t5, t2, 1
	bne t5, zero, label1298
	j label1297
label281:
	li t4, 16
	bge t0, t4, label286
	j label296
label286:
	lw t0, 4(sp)
	mv t3, zero
	mv t1, zero
	mulw t2, t2, t0
	li t0, 65535
	j label287
label296:
	and t4, t1, t3
	andi t5, t4, 1
	beq t5, zero, label297
	j label1337
label231:
	beq t1, zero, label264
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
label234:
	li t5, 16
	bge t3, t5, label1213
	j label239
label1213:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	j label245
label239:
	andi t5, t4, 1
	beq t5, zero, label241
	j label242
label240:
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
	j label234
label241:
	andi t5, t2, 1
	beq t5, zero, label1225
	j label240
label242:
	andi t5, t2, 1
	bne t5, zero, label1225
	j label240
label245:
	li t4, 16
	bge t0, t4, label250
	j label260
label251:
	li t4, 16
	bge t1, t4, label1244
	j label256
label1244:
	mv t0, a5
	mv t1, t3
	j label231
label256:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label257
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
	j label251
label257:
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	j label251
label260:
	and t5, t1, t2
	andi t4, t5, 1
	beq t4, zero, label261
	sh2add t4, t0, s0
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t2, 31
	srliw t6, t1, 31
	addiw t0, t0, 1
	add t5, t2, t4
	add t4, t1, t6
	sraiw t2, t5, 1
	sraiw t1, t4, 1
	j label245
label264:
	li a5, 32767
	ble a4, a5, label265
	lw a5, 4(sp)
	lui t1, 16
	lw t2, 60(sp)
	divw a4, a4, a5
	addw a5, a4, t1
	subw a4, a5, t2
	mv a5, t0
	mv t0, a3
	j label215
label1225:
	srliw t5, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add a6, t4, t5
	add t5, t2, t6
	sraiw t4, a6, 1
	sraiw t2, t5, 1
	j label234
label261:
	srliw t4, t2, 31
	srliw t6, t1, 31
	addiw t0, t0, 1
	add t5, t2, t4
	add t4, t1, t6
	sraiw t2, t5, 1
	sraiw t1, t4, 1
	j label245
label287:
	li t4, 16
	bge t1, t4, label1321
	j label292
label1321:
	mv t0, a3
	mv t1, t3
	j label267
label292:
	and t5, t0, t2
	andi t4, t5, 1
	beq t4, zero, label293
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
	j label287
label293:
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	j label287
label297:
	srliw t4, t3, 31
	addiw t0, t0, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label281
label1298:
	srliw t5, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add a6, t4, t5
	add t5, t2, t6
	sraiw t4, a6, 1
	sraiw t2, t5, 1
	j label270
label1578:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
label437:
	li t3, 16
	bge t0, t3, label1597
	j label442
label1597:
	mv a5, a2
	mv t0, t2
	j label419
label442:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label443
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
	j label437
label443:
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	j label437
label1337:
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
	j label281
label302:
	beq a2, zero, label387
	mv a4, zero
	li t3, 1
	mv t1, a2
	mv t2, zero
label306:
	li t4, 16
	bge t2, t4, label311
	j label383
label1424:
	lw t1, 4(sp)
	mv a5, t0
	mv t0, a4
	divw a2, a2, t1
	j label302
label383:
	and t3, t3, t1
	andi t4, t3, 1
	beq t4, zero, label384
	j label1501
label387:
	li a2, 32767
	ble a0, a2, label1512
	j label1511
label311:
	beq a4, zero, label1357
	mv t1, a5
	j label350
label1357:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	j label314
label350:
	beq t1, zero, label1438
	mv a4, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
	j label353
label1438:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	j label314
label353:
	li t5, 16
	bge t3, t5, label1442
	j label377
label1442:
	mv t2, zero
	mv t3, t0
	mv t0, zero
label358:
	li t4, 16
	bge t0, t4, label363
	and t5, t1, t3
	andi t4, t5, 1
	beq t4, zero, label374
	j label1469
label377:
	andi t5, t4, 1
	beq t5, zero, label382
	andi t5, t2, 1
	bne t5, zero, label379
	j label1485
label314:
	beq t1, zero, label347
	mv a5, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
label317:
	li t5, 16
	bge t3, t5, label1365
	j label341
label1365:
	mv t2, zero
	mv t3, t0
	mv t0, zero
label322:
	li t4, 16
	bge t0, t4, label327
	j label337
label328:
	li t4, 16
	bge t1, t4, label1376
	j label333
label1376:
	mv t0, a5
	mv t1, t3
	j label314
label333:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label1381
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
	j label328
label1381:
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label328
label337:
	and t4, t1, t3
	andi t5, t4, 1
	beq t5, zero, label338
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
	j label322
label341:
	andi t5, t4, 1
	beq t5, zero, label342
	andi t5, t2, 1
	bne t5, zero, label1408
	j label1407
label1408:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label317
label338:
	srliw t4, t3, 31
	addiw t0, t0, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label322
label342:
	andi t5, t2, 1
	beq t5, zero, label1408
label1407:
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
	j label317
label379:
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	j label353
label374:
	srliw t4, t3, 31
	addiw t0, t0, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label358
label1469:
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
	j label358
label1485:
	sh2add t6, t3, s0
	lw t5, 0(t6)
	addw a4, a4, t5
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	j label353
label382:
	andi t5, t2, 1
	beq t5, zero, label379
	j label1485
label327:
	lw t0, 4(sp)
	mv t3, zero
	mv t1, zero
	mulw t2, t2, t0
	li t0, 65535
	j label328
label384:
	srliw t4, t1, 31
	addiw t2, t2, 1
	add t3, t1, t4
	sraiw t1, t3, 1
	mv t3, zero
	j label306
label504:
	beq t1, zero, label1732
	mv t0, a4
label505:
	beq t0, zero, label1732
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label508:
	li t4, 16
	bge t2, t4, label1740
	j label532
label1740:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label513:
	li t3, 16
	bge a5, t3, label518
	j label528
label518:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
label519:
	li t3, 16
	bge t0, t3, label1751
	j label524
label1751:
	mv a5, a3
	mv t0, t2
	j label505
label524:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label1756
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
	j label519
label1756:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label519
label528:
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label529
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
	j label513
label532:
	andi t4, t3, 1
	beq t4, zero, label537
	andi t4, t1, 1
	bne t4, zero, label534
label1790:
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
	j label508
label537:
	andi t4, t1, 1
	beq t4, zero, label534
	j label1790
label534:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label508
label529:
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	j label513
label1732:
	mv a3, a5
	mv a5, a4
	mv t0, a4
label540:
	beq t0, zero, label573
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label543:
	li t4, 16
	bge t2, t4, label1803
	j label567
label1803:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label548:
	li t3, 16
	bge a5, t3, label1807
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label554
	j label1811
label558:
	li t3, 16
	bge t0, t3, label1826
	j label563
label1826:
	mv a5, a4
	mv t0, t2
	j label540
label563:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label1831
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
	j label558
label1831:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label558
label567:
	andi t4, t3, 1
	beq t4, zero, label571
	j label572
label570:
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
	j label543
label572:
	andi t4, t1, 1
	bne t4, zero, label568
	j label570
label568:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label543
label554:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label548
label571:
	andi t4, t1, 1
	beq t4, zero, label568
	j label570
label1811:
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
	j label548
label1807:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label558
label581:
	srliw t1, a3, 31
	addiw a5, a5, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	j label399
label363:
	lw t0, 4(sp)
	mv t3, zero
	mv t1, zero
	mulw t2, t2, t0
	li t0, 65535
label364:
	li t4, 16
	bge t1, t4, label1453
	j label369
label1453:
	mv t0, a4
	mv t1, t3
	j label350
label369:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label1458
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
	j label364
label1458:
	srliw t4, t2, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	j label364
label1501:
	sh2add t4, t2, s0
	lw t3, 0(t4)
	addw a4, a4, t3
	srliw t4, t1, 31
	addiw t2, t2, 1
	add t3, t1, t4
	sraiw t1, t3, 1
	mv t3, zero
	j label306
label250:
	lw t1, 4(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
	j label251
label225:
	srliw t3, t1, 31
	addiw t2, t2, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	j label219
label1862:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label492
label1566:
	mv a2, a5
	mv a5, a4
	mv t0, a4
label454:
	beq t0, zero, label487
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label457:
	li t4, 16
	bge t2, t4, label1637
	j label462
label1637:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label468
label462:
	andi t4, t3, 1
	beq t4, zero, label467
	j label464
label463:
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
	j label457
label464:
	andi t4, t1, 1
	bne t4, zero, label465
	j label463
label467:
	andi t4, t1, 1
	beq t4, zero, label465
	j label463
label468:
	li t3, 16
	bge a5, t3, label473
	j label483
label474:
	li t3, 16
	bge t0, t3, label1668
	j label479
label1668:
	mv a5, a4
	mv t0, t2
	j label454
label479:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label1673
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
	j label474
label1673:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label474
label483:
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label484
	j label1684
label465:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label457
label484:
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	j label468
label1684:
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
	j label468
label473:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label474
label487:
	li a4, 32767
	ble a3, a4, label488
	j label1695
label1194:
	sh2add t4, t2, s0
	lw t3, 0(t4)
	addw a3, a3, t3
	srliw t3, t1, 31
	addiw t2, t2, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	j label219
label1695:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t1
	subw a3, a4, t0
	mv a4, a5
	mv a5, a2
	j label405
label488:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label405
label347:
	li t1, 32767
	ble a2, t1, label1424
	lw a5, 4(sp)
	lui t1, 16
	lw t2, 60(sp)
	divw a2, a2, a5
	addw a5, a2, t1
	subw a2, a5, t2
	mv a5, t0
	mv t0, a4
	j label302
label211:
	srliw t2, a4, 31
	addiw t0, t0, 1
	add t1, a4, t2
	sraiw a4, t1, 1
	mv t1, zero
	j label205
label496:
	li a1, 32767
	ble a0, a1, label497
	j label1713
label1171:
	sh2add t1, t0, s0
	lw t2, 0(t1)
	addw a3, a3, t2
	srliw t2, a4, 31
	addiw t0, t0, 1
	add t1, a4, t2
	sraiw a4, t1, 1
	mv t1, zero
	j label205
label1713:
	lw a1, 4(sp)
	lui a4, 16
	lw a3, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a4
	mv a4, a2
	subw a0, a1, a3
	mv a1, a5
	j label394
label497:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label394
label265:
	lw t1, 4(sp)
	mv a5, t0
	mv t0, a3
	divw a4, a4, t1
	j label215
label1512:
	lw a4, 4(sp)
	mv a2, t0
	mv a5, a3
	divw a0, a0, a4
	j label201
label1511:
	lw a2, 4(sp)
	lui a5, 16
	lw a4, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	mv a5, a3
	subw a0, a2, a4
	mv a2, t0
	j label201
label390:
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a5, a2, label391
	li a0, 1
	j label392
label391:
	addiw a1, a1, 1
	j label199
label392:
	ld ra, 64(sp)
	ld s1, 72(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
