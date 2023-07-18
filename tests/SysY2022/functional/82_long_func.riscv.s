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
	lui a3, 2
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
	bge a5, t1, label589
	j label765
label762:
	li a1, 32767
	ble a0, a1, label2232
	lw a1, 4(sp)
	lui a3, 16
	lw a4, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a3
	subw a0, a1, a4
	mv a4, a2
	mv a1, a5
	j label2
label2232:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label2
label765:
	and t0, t0, a3
	andi t1, t0, 1
	beq t1, zero, label766
	sh2add t1, a5, s0
	lw t0, 0(t1)
	addw a2, a2, t0
	srliw t1, a3, 31
	addiw a5, a5, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
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
	bge t0, t3, label599
	and t3, t2, a2
	andi t2, t3, 1
	beq t2, zero, label2059
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, a2, 31
	addiw t0, t0, 1
	add t3, a2, t2
	mv t2, zero
	sraiw a2, t3, 1
	j label594
label599:
	beq t1, zero, label1914
	mv t0, a4
label600:
	beq t0, zero, label1914
	mv a2, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label603:
	li t4, 16
	bge t2, t4, label1922
	j label608
label1922:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label614
label608:
	andi t4, t3, 1
	beq t4, zero, label611
	andi t4, t1, 1
	bne t4, zero, label1931
	j label1930
label614:
	li t3, 16
	bge a5, t3, label1946
	j label619
label1946:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label624
label619:
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label1951
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
	j label614
label624:
	li t3, 16
	bge t0, t3, label1965
	j label629
label1965:
	mv a5, a2
	mv t0, t2
	j label600
label629:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label1970
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
	j label624
label1970:
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	j label624
label1931:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label603
label1951:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label614
label1930:
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
	j label603
label611:
	andi t4, t1, 1
	beq t4, zero, label1931
	j label1930
label677:
	beq a1, zero, label762
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
label681:
	li t3, 16
	bge t1, t3, label686
	j label758
label2206:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	mv a5, a3
	j label677
label758:
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label2222
	sh2add t3, t1, s0
	lw t2, 0(t3)
	addw a3, a3, t2
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label681
label2222:
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label681
label2059:
	srliw t2, a2, 31
	addiw t0, t0, 1
	add t3, a2, t2
	mv t2, zero
	sraiw a2, t3, 1
	j label594
label686:
	beq a3, zero, label2077
	mv t0, a4
label687:
	beq t0, zero, label2077
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label690:
	li t4, 16
	bge t2, t4, label2085
	j label695
label2085:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label701
label695:
	andi t4, t3, 1
	beq t4, zero, label700
	andi t4, t1, 1
	bne t4, zero, label697
label2100:
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
	j label690
label700:
	andi t4, t1, 1
	beq t4, zero, label697
	j label2100
label701:
	li t3, 16
	bge a5, t3, label2109
	j label706
label2109:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label711
label706:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label2114
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
	j label701
label711:
	li t3, 16
	bge t0, t3, label2128
	j label716
label2128:
	mv a5, a3
	mv t0, t2
	j label687
label716:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label2133
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
	j label711
label2133:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label711
label697:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label690
label2114:
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	j label701
label2077:
	mv a3, a5
	mv a5, a4
	mv t0, a4
label722:
	beq t0, zero, label755
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label725:
	li t4, 16
	bge t2, t4, label2148
	j label749
label2148:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label730:
	li t3, 16
	bge a5, t3, label735
	j label745
label736:
	li t3, 16
	bge t0, t3, label2159
	j label741
label2159:
	mv a5, a4
	mv t0, t2
	j label722
label741:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label742
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
	j label736
label742:
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	j label736
label745:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label746
	j label2175
label749:
	andi t4, t3, 1
	beq t4, zero, label753
	andi t4, t1, 1
	bne t4, zero, label751
	j label2191
label753:
	andi t4, t1, 1
	beq t4, zero, label751
	j label2191
label755:
	li t0, 32767
	ble a1, t0, label2207
	j label2206
label2207:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label677
label751:
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label725
label746:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label730
label2175:
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
	j label730
label2191:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a4, a4, t4
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label725
label735:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label736
label766:
	srliw t1, a3, 31
	addiw a5, a5, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	j label584
label1914:
	mv a2, a5
	mv a5, a4
	mv t0, a4
label635:
	beq t0, zero, label668
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label638:
	li t4, 16
	bge t2, t4, label1985
	j label662
label1985:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label643:
	li t3, 16
	bge a5, t3, label1989
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label649
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
	j label643
label653:
	li t3, 16
	bge t0, t3, label2008
	j label658
label2008:
	mv a5, a4
	mv t0, t2
	j label635
label658:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label659
	j label2012
label659:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label653
label662:
	andi t4, t3, 1
	beq t4, zero, label667
	andi t4, t1, 1
	bne t4, zero, label664
label2035:
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
	j label638
label667:
	andi t4, t1, 1
	beq t4, zero, label664
	j label2035
label668:
	li t0, 32767
	ble a3, t0, label669
	j label2043
label664:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label638
label649:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label643
label2012:
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
	j label653
label1989:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label653
label2043:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t0
	subw a3, a4, t1
	mv a4, a5
	mv a5, a2
	j label590
label669:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label590
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
	sh2add t0, a3, s0
	lw t1, 0(t0)
	addw a5, a5, t1
	srliw t1, a2, 31
	addiw a3, a3, 1
	add t0, a2, t1
	sraiw a2, t0, 1
	mv t0, zero
	j label11
label109:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label7
label196:
	mv a0, a4
	jal putint
	li a0, 10
	jal putch
	li s1, 2
	j label197
label20:
	beq a5, zero, label811
	mv a5, zero
	mv a3, a1
	j label111
label811:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label23
label111:
	beq a3, zero, label992
	li t2, 1
	mv a2, a3
	mv t1, zero
	mv t0, zero
	j label115
label992:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label23
label115:
	li t3, 16
	bge t0, t3, label120
	j label192
label120:
	beq t1, zero, label1000
	mv t0, a4
label121:
	beq t0, zero, label1000
	mv t1, t0
	mv t3, a5
	mv a2, zero
	mv t2, zero
label124:
	li t4, 16
	bge t2, t4, label1008
	j label129
label1008:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label135
label129:
	andi t4, t3, 1
	beq t4, zero, label132
	andi t4, t1, 1
	bne t4, zero, label1017
	j label1016
label132:
	andi t4, t1, 1
	beq t4, zero, label1017
	j label1016
label135:
	li t3, 16
	bge a5, t3, label1032
	j label140
label1032:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label145
label140:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label1037
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
	j label135
label192:
	and t3, t2, a2
	andi t2, t3, 1
	beq t2, zero, label1145
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, a2, 31
	addiw t0, t0, 1
	add t3, a2, t2
	mv t2, zero
	sraiw a2, t3, 1
	j label115
label23:
	beq a1, zero, label108
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
label27:
	li t3, 16
	bge t1, t3, label32
	j label104
label32:
	beq a3, zero, label823
	mv t0, a4
	j label71
label823:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label35
label69:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label23
label71:
	beq t0, zero, label904
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label74
label904:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label35
label74:
	li t4, 16
	bge t2, t4, label908
	j label98
label908:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label79:
	li t3, 16
	bge a5, t3, label912
	j label84
label912:
	lw t0, 4(sp)
	mv t2, zero
	li a5, 65535
	mulw t1, t1, t0
	mv t0, zero
	j label89
label84:
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label917
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
	j label79
label98:
	andi t4, t3, 1
	beq t4, zero, label101
	andi t4, t1, 1
	bne t4, zero, label952
	j label951
label101:
	andi t4, t1, 1
	beq t4, zero, label952
	j label951
label104:
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label968
	sh2add t2, t1, s0
	lw t3, 0(t2)
	addw a3, a3, t3
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label27
label35:
	beq t0, zero, label68
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label38:
	li t4, 16
	bge t2, t4, label831
	j label43
label831:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label49
label43:
	andi t4, t3, 1
	beq t4, zero, label44
	j label48
label838:
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
	j label38
label48:
	andi t4, t1, 1
	bne t4, zero, label839
	j label838
label49:
	li t3, 16
	bge a5, t3, label855
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label55
	j label859
label59:
	li t3, 16
	bge t0, t3, label874
	j label64
label874:
	mv a5, a4
	mv t0, t2
	j label35
label64:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label65
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
	j label59
label65:
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	j label59
label68:
	li a4, 32767
	ble a1, a4, label69
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	mv a5, a3
	j label23
label55:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label49
label839:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label38
label89:
	li t3, 16
	bge t0, t3, label931
	j label94
label931:
	mv a5, a3
	mv t0, t2
	j label71
label94:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label95
	j label935
label95:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label89
label917:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label79
label952:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label74
label859:
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
	j label49
label44:
	andi t4, t1, 1
	beq t4, zero, label839
	j label838
label935:
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
	j label89
label951:
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
	j label74
label145:
	li t3, 16
	bge t0, t3, label1051
	j label150
label1051:
	mv a5, a2
	mv t0, t2
	j label121
label150:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label1056
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
	j label145
label1056:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label145
label1017:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label124
label1037:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label135
label1016:
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
	j label124
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
	mv a3, zero
	li t1, 1
	mv a4, a0
	mv t0, zero
label209:
	li t2, 16
	bge t0, t2, label218
	and t2, t1, a4
	andi t1, t2, 1
	beq t1, zero, label1180
	sh2add t1, t0, s0
	lw t2, 0(t1)
	addw a3, a3, t2
	srliw t2, a4, 31
	addiw t0, t0, 1
	add t1, a4, t2
	sraiw a4, t1, 1
	mv t1, zero
	j label209
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
	sh2add t0, a5, s0
	lw t1, 0(t0)
	addw a2, a2, t1
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
	li t2, 1
	mv a2, a3
	mv t1, zero
	mv t0, zero
	j label499
label1724:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label407
label499:
	li t3, 16
	bge t0, t3, label508
	and t3, t2, a2
	andi t2, t3, 1
	beq t2, zero, label1733
	sh2add t2, t0, s0
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t3, a2, 31
	addiw t0, t0, 1
	add t2, a2, t3
	sraiw a2, t2, 1
	mv t2, zero
	j label499
label508:
	beq t1, zero, label1743
	mv t0, a4
label509:
	beq t0, zero, label1743
	mv t1, t0
	mv t3, a5
	mv a2, zero
	mv t2, zero
label512:
	li t4, 16
	bge t2, t4, label1751
	j label536
label1751:
	mv t1, a5
	mv t2, zero
	mv a5, zero
label517:
	li t3, 16
	bge a5, t3, label1755
	j label522
label1755:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label527
label522:
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label523
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	j label517
label536:
	andi t4, t3, 1
	beq t4, zero, label539
	andi t4, t1, 1
	bne t4, zero, label1795
label1794:
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
	j label512
label539:
	andi t4, t1, 1
	beq t4, zero, label1795
	j label1794
label1795:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label512
label523:
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	j label517
label527:
	li t3, 16
	bge t0, t3, label1774
	j label532
label1774:
	mv a5, a2
	mv t0, t2
	j label509
label532:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label533
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
	j label527
label533:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label527
label407:
	beq a1, zero, label411
	li t2, 1
	mv a3, a1
	mv t1, zero
	mv t0, zero
	j label414
label411:
	li a1, 32767
	ble a0, a1, label412
	j label1550
label412:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label394
label414:
	li t3, 16
	bge t0, t3, label423
	and t2, t2, a3
	andi t3, t2, 1
	beq t3, zero, label420
	j label1569
label459:
	li a4, 32767
	ble a1, a4, label460
	j label1646
label460:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label407
label420:
	srliw t2, a3, 31
	addiw t0, t0, 1
	add t3, a3, t2
	mv t2, zero
	sraiw a3, t3, 1
	j label414
label1569:
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, a3, 31
	addiw t0, t0, 1
	add t3, a3, t2
	mv t2, zero
	sraiw a3, t3, 1
	j label414
label1733:
	srliw t3, a2, 31
	addiw t0, t0, 1
	add t2, a2, t3
	sraiw a2, t2, 1
	mv t2, zero
	j label499
label423:
	beq t1, zero, label1580
	mv t0, a4
	j label462
label1580:
	mv a3, a5
	mv a5, a4
	mv t0, a4
label426:
	beq t0, zero, label459
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label429:
	li t4, 16
	bge t2, t4, label1588
	j label453
label1588:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label434:
	li t3, 16
	bge a5, t3, label1592
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label440
	j label1596
label444:
	li t3, 16
	bge t0, t3, label1611
	j label449
label1611:
	mv a5, a4
	mv t0, t2
	j label426
label449:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label1616
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
	j label444
label1616:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label444
label453:
	andi t4, t3, 1
	beq t4, zero, label455
	j label456
label454:
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
	j label429
label455:
	andi t4, t1, 1
	beq t4, zero, label1635
	j label454
label456:
	andi t4, t1, 1
	bne t4, zero, label1635
	j label454
label1635:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label429
label440:
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	j label434
label462:
	beq t0, zero, label1661
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label465
label1661:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label426
label465:
	li t4, 16
	bge t2, t4, label1665
	j label470
label1665:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label476
label470:
	andi t4, t3, 1
	beq t4, zero, label472
	j label475
label471:
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
	j label465
label472:
	andi t4, t1, 1
	beq t4, zero, label473
	j label471
label475:
	andi t4, t1, 1
	bne t4, zero, label473
	j label471
label476:
	li t3, 16
	bge a5, t3, label481
	j label491
label481:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
label482:
	li t3, 16
	bge t0, t3, label1696
	j label487
label1696:
	mv a5, a3
	mv t0, t2
	j label462
label487:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label1701
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
	j label482
label1701:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label482
label491:
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label492
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
	j label476
label473:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label465
label492:
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	j label476
label1596:
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
	j label434
label1592:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label444
label581:
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label399
label855:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
	j label59
label968:
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label27
label218:
	beq a3, zero, label1190
	mv t0, zero
	mv a4, a2
	j label309
label1190:
	mv a3, a5
	mv a5, a2
	mv t0, zero
	j label221
label309:
	beq a4, zero, label1371
	mv a3, zero
	li t3, 1
	mv t1, a4
	mv t2, zero
	j label313
label1371:
	mv a3, t0
	mv a5, a2
	mv t0, zero
	j label221
label313:
	li t4, 16
	bge t2, t4, label322
	and t3, t3, t1
	andi t4, t3, 1
	beq t4, zero, label319
	j label1379
label322:
	beq a3, zero, label1390
	mv t1, a5
label323:
	beq t1, zero, label1390
	mv a3, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
label326:
	li t5, 16
	bge t3, t5, label1398
	j label331
label1398:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	j label337
label331:
	andi t5, t4, 1
	beq t5, zero, label332
	j label334
label332:
	andi t5, t2, 1
	beq t5, zero, label1406
	j label1405
label334:
	andi t5, t2, 1
	bne t5, zero, label1406
	j label1405
label337:
	li t4, 16
	bge t0, t4, label342
	j label352
label342:
	lw t0, 4(sp)
	mv t3, zero
	mv t1, zero
	mulw t2, t2, t0
	li t0, 65535
label343:
	li t4, 16
	bge t1, t4, label1429
	j label348
label1429:
	mv t0, a3
	mv t1, t3
	j label323
label348:
	and t5, t0, t2
	andi t4, t5, 1
	beq t4, zero, label1434
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
	j label343
label1434:
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label343
label352:
	and t4, t1, t3
	andi t5, t4, 1
	beq t5, zero, label353
	sh2add t5, t0, s0
	lw t4, 0(t5)
	addw t2, t2, t4
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t0, t0, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label337
label1406:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label326
label353:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t0, t0, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label337
label1405:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a3, a3, t6
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label326
label221:
	beq a2, zero, label225
	mv a4, zero
	li t3, 1
	mv t1, a2
	mv t2, zero
	j label228
label225:
	li a2, 32767
	ble a0, a2, label226
	j label1197
label228:
	li t4, 16
	bge t2, t4, label233
	j label305
label1346:
	lw t1, 4(sp)
	mv a5, t0
	mv t0, a4
	divw a2, a2, t1
	j label221
label305:
	and t4, t3, t1
	andi t3, t4, 1
	beq t3, zero, label306
	sh2add t3, t2, s0
	lw t4, 0(t3)
	addw a4, a4, t4
	srliw t3, t1, 31
	addiw t2, t2, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	j label228
label306:
	srliw t3, t1, 31
	addiw t2, t2, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	j label228
label319:
	srliw t3, t1, 31
	addiw t2, t2, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	j label313
label1646:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t0
	subw a1, a4, t1
	mv a4, a5
	mv a5, a3
	j label407
label1743:
	mv a2, a5
	mv a5, a4
	mv t0, a4
label544:
	beq t0, zero, label577
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label547:
	li t4, 16
	bge t2, t4, label1814
	j label552
label1814:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label558
label552:
	andi t4, t3, 1
	beq t4, zero, label557
	andi t4, t1, 1
	bne t4, zero, label554
	j label1822
label557:
	andi t4, t1, 1
	beq t4, zero, label554
	j label1822
label558:
	li t3, 16
	bge a5, t3, label563
	j label573
label564:
	li t3, 16
	bge t0, t3, label1845
	j label569
label1845:
	mv a5, a4
	mv t0, t2
	j label544
label569:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label1850
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
	j label564
label1850:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label564
label573:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label1862
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
	j label558
label554:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label547
label1862:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label558
label1822:
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
	j label547
label563:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label564
label577:
	li a4, 32767
	ble a3, a4, label1873
	j label1872
label1145:
	srliw t2, a2, 31
	addiw t0, t0, 1
	add t3, a2, t2
	mv t2, zero
	sraiw a2, t3, 1
	j label115
label1379:
	sh2add t4, t2, s0
	lw t3, 0(t4)
	addw a3, a3, t3
	srliw t3, t1, 31
	addiw t2, t2, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	j label313
label1872:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t1
	subw a3, a4, t0
	mv a4, a5
	mv a5, a2
	j label495
label1873:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label495
label233:
	beq a4, zero, label1216
	mv t1, a5
label234:
	beq t1, zero, label1216
	mv a4, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
label237:
	li t5, 16
	bge t3, t5, label1224
	j label261
label1224:
	mv t2, zero
	mv t3, t0
	mv t0, zero
label242:
	li t4, 16
	bge t0, t4, label247
	j label257
label248:
	li t4, 16
	bge t1, t4, label1235
	j label253
label1235:
	mv t0, a4
	mv t1, t3
	j label234
label253:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label1240
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
	j label248
label1240:
	srliw t4, t2, 31
	srliw t5, t0, 31
	addiw t1, t1, 1
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	j label248
label257:
	and t5, t1, t3
	andi t4, t5, 1
	beq t4, zero, label258
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
	j label242
label261:
	andi t5, t4, 1
	beq t5, zero, label265
	andi t5, t2, 1
	bne t5, zero, label262
	j label1270
label262:
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label237
label258:
	srliw t4, t3, 31
	addiw t0, t0, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label242
label1270:
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
	j label237
label265:
	andi t5, t2, 1
	beq t5, zero, label262
	j label1270
label247:
	lw t0, 4(sp)
	mv t3, zero
	mv t1, zero
	mulw t2, t2, t0
	li t0, 65535
	j label248
label1216:
	mv a4, t0
	mv t0, a5
	mv t1, a5
label269:
	beq t1, zero, label302
	mv a5, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
label272:
	li t5, 16
	bge t3, t5, label1287
	j label296
label1287:
	mv t2, zero
	mv t3, t0
	mv t0, zero
label277:
	li t4, 16
	bge t0, t4, label1291
	and t5, t1, t3
	andi t4, t5, 1
	beq t4, zero, label1296
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
	j label277
label287:
	li t4, 16
	bge t1, t4, label1310
	j label292
label1310:
	mv t0, a5
	mv t1, t3
	j label269
label292:
	and t5, t0, t2
	andi t4, t5, 1
	beq t4, zero, label1315
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
	j label287
label1315:
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	j label287
label296:
	andi t5, t4, 1
	beq t5, zero, label297
	andi t5, t2, 1
	bne t5, zero, label1330
	j label1329
label302:
	li t1, 32767
	ble a2, t1, label1346
	j label1345
label1330:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label272
label1296:
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t0, t0, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label277
label297:
	andi t5, t2, 1
	beq t5, zero, label1330
label1329:
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
	j label272
label1291:
	lw t1, 4(sp)
	mv t3, zero
	li t0, 65535
	mulw t2, t2, t1
	mv t1, zero
	j label287
label1180:
	srliw t2, a4, 31
	addiw t0, t0, 1
	add t1, a4, t2
	sraiw a4, t1, 1
	mv t1, zero
	j label209
label801:
	srliw t1, a2, 31
	addiw a3, a3, 1
	add t0, a2, t1
	sraiw a2, t0, 1
	mv t0, zero
	j label11
label1345:
	lw a5, 4(sp)
	lui t1, 16
	lw t2, 60(sp)
	divw a2, a2, a5
	addw a5, a2, t1
	subw a2, a5, t2
	mv a5, t0
	mv t0, a4
	j label221
label1390:
	mv a3, t0
	mv t0, a5
	mv t1, a5
label358:
	beq t1, zero, label391
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
label361:
	li t5, 16
	bge t3, t5, label1461
	j label366
label1461:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	j label372
label366:
	andi t5, t4, 1
	beq t5, zero, label368
	j label369
label367:
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
	j label361
label368:
	andi t5, t2, 1
	beq t5, zero, label1473
	j label367
label369:
	andi t5, t2, 1
	bne t5, zero, label1473
	j label367
label372:
	li t4, 16
	bge t0, t4, label377
	j label387
label378:
	li t4, 16
	bge t1, t4, label1492
	j label383
label1492:
	mv t0, a5
	mv t1, t3
	j label358
label383:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label384
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
	j label378
label384:
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label378
label387:
	and t4, t1, t2
	andi t5, t4, 1
	beq t5, zero, label388
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
	j label372
label1473:
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	j label361
label388:
	srliw t4, t2, 31
	srliw t6, t1, 31
	addiw t0, t0, 1
	add t5, t2, t4
	add t4, t1, t6
	sraiw t2, t5, 1
	sraiw t1, t4, 1
	j label372
label377:
	lw t1, 4(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
	j label378
label391:
	li a5, 32767
	ble a4, a5, label392
	lw a5, 4(sp)
	lui t1, 16
	lw t2, 60(sp)
	divw a4, a4, a5
	addw a5, a4, t1
	subw a4, a5, t2
	mv a5, t0
	mv t0, a3
	j label309
label392:
	lw t1, 4(sp)
	mv a5, t0
	mv t0, a3
	divw a4, a4, t1
	j label309
label1550:
	lw a1, 4(sp)
	lui a4, 16
	lw a3, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a4
	mv a4, a2
	subw a0, a1, a3
	mv a1, a5
	j label394
label1000:
	mv a2, a5
	mv a5, a4
	mv t0, a4
label156:
	beq t0, zero, label189
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label159:
	li t4, 16
	bge t2, t4, label1071
	j label183
label1071:
	mv t1, a5
	mv t2, zero
	mv a5, zero
label164:
	li t3, 16
	bge a5, t3, label1075
	j label169
label1075:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label174
label169:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label170
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
	j label164
label174:
	li t3, 16
	bge t0, t3, label1094
	j label179
label1094:
	mv a5, a4
	mv t0, t2
	j label156
label179:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label180
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
	j label174
label180:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label174
label183:
	andi t4, t3, 1
	beq t4, zero, label187
	j label188
label186:
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
	j label159
label188:
	andi t4, t1, 1
	bne t4, zero, label184
	j label186
label189:
	li t0, 32767
	ble a3, t0, label1130
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t0
	subw a3, a4, t1
	mv a4, a5
	mv a5, a2
	j label111
label170:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label164
label184:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label159
label187:
	andi t4, t1, 1
	beq t4, zero, label184
	j label186
label1130:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label111
label108:
	li a1, 32767
	ble a0, a1, label109
	lw a1, 4(sp)
	lui a4, 16
	lw a3, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a4
	mv a4, a2
	subw a0, a1, a3
	mv a1, a5
	j label7
label1197:
	lw a2, 4(sp)
	lui a5, 16
	lw a4, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	mv a5, a3
	subw a0, a2, a4
	mv a2, t0
	j label203
label226:
	lw a4, 4(sp)
	mv a2, t0
	mv a5, a3
	divw a0, a0, a4
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
