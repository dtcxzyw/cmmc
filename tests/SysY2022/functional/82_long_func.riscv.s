.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -88
	li a1, 1
	li a2, 2
	li a0, 4
	li a3, 8
	li a4, 32
	sd s0, 80(sp)
	addi s0, sp, 0
	sd s1, 72(sp)
	sd ra, 64(sp)
	sw a1, 0(sp)
	sw a2, 4(sp)
	sw a0, 8(sp)
	li a0, 16
	sw a3, 12(sp)
	li a3, 64
	sw a0, 16(sp)
	li a0, 128
	sw a4, 20(sp)
	li a4, 512
	sw a3, 24(sp)
	li a3, 256
	sw a0, 28(sp)
	li a0, 1024
	sw a3, 32(sp)
	slli a3, a0, 1
	sw a4, 36(sp)
	lui a4, 2
	sw a0, 40(sp)
	lui a0, 1
	sw a3, 44(sp)
	lui a3, 4
	sw a0, 48(sp)
	lui a0, 8
	sw a4, 52(sp)
	sw a3, 56(sp)
	sw a0, 60(sp)
	mv a0, zero
label2:
	ble a0, zero, label6
label788:
	mv a5, zero
	li t0, 1
	mv a4, a0
	mv a3, zero
	j label584
label6:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	li a1, 1
	li a2, 2
	mv a0, a1
	j label7
label584:
	li t1, 16
	blt a3, t1, label765
	j label1897
label2769:
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	j label584
label2068:
	li a2, 32767
	bgt a0, a2, label763
	lw a4, 4(sp)
	mv a2, a3
	divw a0, a0, a4
	j label2
label2143:
	li t0, 32767
	bgt a2, t0, label756
	lw t0, 4(sp)
	mv a4, a5
	divw a2, a2, t0
	j label677
label2144:
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label725
label2807:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
label736:
	li t3, 16
	blt t0, t3, label741
label2158:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label2144
	j label2143
label741:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label744
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label736
label744:
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
	blt t0, t3, label741
	j label2158
label756:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a2, a2, a4
	addw a4, a2, t0
	subw a2, a4, t1
	mv a4, a5
	bne a2, zero, label2069
	j label2068
label763:
	lw a2, 4(sp)
	lui a4, 16
	lw a5, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a4
	subw a0, a2, a5
	mv a2, a3
	bgt a0, zero, label788
	j label6
label765:
	and t1, t0, a4
	andi t0, t1, 1
	beq t0, zero, label2769
	sh2add t1, a3, s0
	lw t0, 0(t1)
	addw a5, a5, t0
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	li t1, 16
	blt a3, t1, label765
	j label1897
label725:
	li t4, 16
	blt t2, t4, label749
label2147:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label745
	j label2807
label749:
	andi t4, t3, 1
	bne t4, zero, label750
	andi t4, t1, 1
	bne t4, zero, label754
	j label2198
label750:
	andi t4, t1, 1
	beq t4, zero, label754
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label725
label2198:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label749
	j label2147
label730:
	li t3, 16
	blt a5, t3, label745
	j label2807
label2809:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label730
label745:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label2809
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
	blt a5, t3, label745
	j label2807
label754:
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
	blt t2, t4, label749
	j label2147
label590:
	bne a1, zero, label1906
label1905:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	j label677
label1906:
	li t2, 1
	mv a5, a1
	mv t1, zero
	mv t0, zero
	j label594
label1980:
	li a4, 32767
	bgt a1, a4, label670
	lw t0, 4(sp)
	mv a4, a5
	divw a1, a1, t0
	j label590
label1981:
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	li t4, 16
	blt zero, t4, label662
	j label1984
label2779:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label653
label643:
	li t3, 16
	bge a5, t3, label2779
label648:
	and t4, t0, t2
	andi t3, t4, 1
	bne t3, zero, label651
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label643
label651:
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
	blt a5, t3, label648
	j label2779
label653:
	li t3, 16
	blt t0, t3, label658
label2007:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1981
	j label1980
label658:
	and t3, a5, t1
	andi t4, t3, 1
	bne t4, zero, label661
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label653
label661:
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
	blt t0, t3, label658
	j label2007
label662:
	andi t4, t3, 1
	bne t4, zero, label666
	j label2023
label670:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	bne a1, zero, label1906
	j label1905
label677:
	beq a2, zero, label2068
label2069:
	mv t1, zero
	li t2, 1
	mv t0, a2
	mv a5, zero
	j label681
label1984:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label648
	j label2779
label2023:
	andi t4, t1, 1
	bne t4, zero, label663
	j label2039
label666:
	andi t4, t1, 1
	beq t4, zero, label663
	j label2035
label2039:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label662
	j label1984
label663:
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
	blt t2, t4, label662
	j label1984
label2035:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label662
	j label1984
label681:
	li t3, 16
	blt a5, t3, label758
	j label2072
label2796:
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label681
label758:
	and t3, t2, t0
	andi t2, t3, 1
	bne t2, zero, label759
	j label2796
label2072:
	beq t1, zero, label2795
	mv a5, a3
	mv t0, a4
	bne a4, zero, label2081
	j label2080
label759:
	sh2add t3, a5, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label758
	j label2072
label2080:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label722
label2081:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	li t4, 16
	blt zero, t4, label695
	j label2084
label2127:
	mv a5, a3
	mv t0, t1
	bne t1, zero, label2081
	j label2080
label717:
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
	blt t0, t3, label716
	j label2127
label722:
	bne t0, zero, label2144
	j label2143
label695:
	andi t4, t3, 1
	bne t4, zero, label699
	andi t4, t1, 1
	bne t4, zero, label696
	j label2104
label699:
	andi t4, t1, 1
	beq t4, zero, label696
	j label2100
label2104:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label695
	j label2084
label2797:
	lw t0, 4(sp)
	mv t1, zero
	li a5, 65535
	mulw t2, t2, t0
	mv t0, zero
	j label711
label707:
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
	blt a5, t3, label706
	j label2797
label711:
	li t3, 16
	bge t0, t3, label2127
label716:
	and t4, a5, t2
	andi t3, t4, 1
	bne t3, zero, label717
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label711
label696:
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
	blt t2, t4, label695
label2084:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label706
	j label2797
label2100:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label695
	j label2084
label701:
	li t3, 16
	bge a5, t3, label2797
label706:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label707
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label701
label2795:
	mv a5, a4
	mv t0, a4
	j label722
label594:
	li t3, 16
	blt t0, t3, label671
	j label1909
label2771:
	srliw t3, a5, 31
	addiw t0, t0, 1
	add t2, a5, t3
	sraiw a5, t2, 1
	mv t2, zero
	j label594
label671:
	and t3, t2, a5
	andi t2, t3, 1
	bne t2, zero, label672
	j label2771
label1909:
	beq t1, zero, label2770
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1918
	j label1917
label672:
	sh2add t2, t0, s0
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t3, a5, 31
	addiw t0, t0, 1
	add t2, a5, t3
	sraiw a5, t2, 1
	mv t2, zero
	li t3, 16
	blt t0, t3, label671
	j label1909
label1917:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label635
label1918:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label603
label1964:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1918
	j label1917
label630:
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
	blt t0, t3, label629
	j label1964
label635:
	bne t0, zero, label1981
	j label1980
label2772:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label624
label614:
	li t3, 16
	bge a5, t3, label2772
label619:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label620
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
	bge t0, t3, label1964
label629:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label630
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label624
label620:
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
	blt a5, t3, label619
	j label2772
label603:
	li t4, 16
	blt t2, t4, label608
	j label1921
label610:
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
	j label603
label608:
	andi t4, t3, 1
	bne t4, zero, label609
	andi t4, t1, 1
	bne t4, zero, label610
label2773:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label603
label609:
	andi t4, t1, 1
	beq t4, zero, label610
	j label2773
label1921:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label619
	j label2772
label2770:
	mv a5, a4
	mv t0, a4
	j label635
label7:
	ble a0, zero, label196
label792:
	li t0, 1
	mv a3, a0
	mv a5, zero
	mv a4, zero
	j label11
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
	j label394
label1154:
	mv a0, zero
	li a1, 16
	bge zero, a1, label2645
label1159:
	li a3, 2
	li a2, 1
	mv a1, a0
	j label203
label398:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, 1
	li a1, 16
	blt s1, a1, label1155
	j label1154
label1546:
	li a2, 32767
	bgt a0, a2, label413
	lw a4, 4(sp)
	mv a2, a3
	divw a0, a0, a4
	j label394
label413:
	lw a2, 4(sp)
	lui a5, 16
	lw a4, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	bgt a0, zero, label1534
	j label398
label2645:
	mv a0, zero
	j label201
label199:
	li a1, 16
	blt a0, a1, label1159
	j label2645
label201:
	ld ra, 64(sp)
	ld s1, 72(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
label1162:
	sh2add a1, a0, s0
	lw a3, 0(a1)
	bne a2, a3, label1170
	addiw a0, a0, 1
	j label199
label1170:
	li a0, 1
	j label201
label1193:
	li a3, 32767
	bgt a1, a3, label227
	lw a5, 4(sp)
	mv a3, a4
	divw a1, a1, a5
	j label203
label227:
	lw a3, 4(sp)
	lui a5, 16
	lw t0, 60(sp)
	divw a1, a1, a3
	addw a3, a1, a5
	subw a1, a3, t0
	mv a3, a4
	bgt a1, zero, label1163
	j label1162
label1282:
	li t1, 32767
	bgt a3, t1, label303
	lw t1, 4(sp)
	mv a5, t0
	divw a3, a3, t1
	j label221
label1283:
	mv a5, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
	j label272
label1309:
	mv t0, a5
	mv t1, t2
	bne t2, zero, label1283
	j label1282
label293:
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
	blt t1, t4, label292
	j label1309
label303:
	lw a5, 4(sp)
	lui t1, 16
	lw t2, 60(sp)
	divw a3, a3, a5
	addw a5, a3, t1
	subw a3, a5, t2
	mv a5, t0
	bne a3, zero, label1194
	j label1193
label2670:
	lw t1, 4(sp)
	li t0, 65535
	mulw t3, t2, t1
	mv t1, zero
	mv t2, zero
	j label287
label277:
	li t4, 16
	bge t0, t4, label2670
label282:
	and t5, t1, t3
	andi t4, t5, 1
	bne t4, zero, label283
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t0, t0, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label277
label287:
	li t4, 16
	bge t1, t4, label1309
label292:
	and t5, t0, t3
	andi t4, t5, 1
	bne t4, zero, label293
	srliw t5, t3, 31
	addiw t1, t1, 1
	add t4, t3, t5
	srliw t5, t0, 31
	sraiw t3, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label287
label272:
	li t5, 16
	bge t3, t5, label1286
label296:
	andi t5, t4, 1
	bne t5, zero, label298
	andi t5, t2, 1
	bne t5, zero, label301
label2675:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label272
label298:
	andi t5, t2, 1
	beq t5, zero, label301
	j label2675
label283:
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
	li t4, 16
	blt t0, t4, label282
	j label2670
label1286:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	li t4, 16
	blt zero, t4, label282
	j label2670
label301:
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
	blt t3, t5, label296
	j label1286
label2649:
	mv a2, a4
	mv a5, a3
	mv a4, zero
label221:
	beq a3, zero, label1193
label1194:
	mv t2, zero
	li t3, 1
	mv t1, a3
	mv t0, zero
	li t4, 16
	blt zero, t4, label305
label1211:
	beq t2, zero, label2654
	mv t0, a4
	mv t1, a5
	bne a5, zero, label1220
	j label1219
label1456:
	li a5, 32767
	bgt a2, a5, label393
	lw t1, 4(sp)
	mv a5, t0
	divw a2, a2, t1
	j label309
label1457:
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
	j label361
label2696:
	lw t1, 4(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
label378:
	li t4, 16
	blt t1, t4, label383
label1491:
	mv t0, a5
	mv t1, t3
	bne t3, zero, label1457
	j label1456
label383:
	and t4, t0, t2
	andi t5, t4, 1
	bne t5, zero, label386
	srliw t4, t2, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	j label378
label386:
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
	blt t1, t4, label383
	j label1491
label393:
	lw a5, 4(sp)
	lui t1, 16
	lw t2, 60(sp)
	divw a2, a2, a5
	addw a5, a2, t1
	subw a2, a5, t2
	mv a5, t0
	bne a2, zero, label1371
	j label2649
label1219:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	j label269
label1220:
	mv a4, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
	li t5, 16
	blt zero, t5, label261
	j label1223
label1234:
	mv t0, a4
	mv t1, t2
	bne t2, zero, label1220
	j label1219
label254:
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
	blt t1, t4, label253
	j label1234
label261:
	andi t5, t4, 1
	bne t5, zero, label264
	j label1262
label269:
	bne t1, zero, label1283
	j label1282
label2656:
	lw t0, 4(sp)
	mv t1, zero
	mulw t3, t2, t0
	li t0, 65535
	mv t2, zero
	j label248
label242:
	li t4, 16
	blt t0, t4, label257
	j label2656
label2658:
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t0, t0, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label242
label248:
	li t4, 16
	bge t1, t4, label1234
label253:
	and t4, t0, t3
	andi t5, t4, 1
	bne t5, zero, label254
	srliw t4, t3, 31
	addiw t1, t1, 1
	add t5, t3, t4
	srliw t4, t0, 31
	sraiw t3, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	j label248
label257:
	and t4, t1, t3
	andi t5, t4, 1
	beq t5, zero, label2658
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
	blt t0, t4, label257
	j label2656
label1223:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	li t4, 16
	blt zero, t4, label257
	j label2656
label1262:
	andi t5, t2, 1
	bne t5, zero, label266
	j label1274
label264:
	andi t5, t2, 1
	beq t5, zero, label266
	j label1270
label1274:
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label261
	j label1223
label266:
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
	li t5, 16
	blt t3, t5, label261
	j label1223
label361:
	li t5, 16
	blt t3, t5, label366
	j label1460
label367:
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
	j label361
label366:
	andi t5, t4, 1
	bne t5, zero, label369
	andi t5, t2, 1
	bne t5, zero, label367
label2697:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label361
label369:
	andi t5, t2, 1
	beq t5, zero, label367
	j label2697
label1460:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	li t4, 16
	blt zero, t4, label387
	j label2696
label372:
	li t4, 16
	blt t0, t4, label387
	j label2696
label2700:
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label372
label387:
	and t4, t1, t2
	andi t5, t4, 1
	beq t5, zero, label2700
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
	blt t0, t4, label387
	j label2696
label2712:
	mv a1, a3
	mv a4, a2
	mv a3, zero
label407:
	beq a2, zero, label1546
label1547:
	li t2, 1
	mv a5, a2
	mv t1, zero
	mv t0, zero
	li t3, 16
	blt zero, t3, label419
	j label1564
label495:
	beq a1, zero, label2712
label1724:
	li t2, 1
	mv a5, a1
	mv t1, zero
	mv t0, zero
label499:
	li t3, 16
	bge t0, t3, label1727
label504:
	and t2, t2, a5
	andi t3, t2, 1
	bne t3, zero, label505
	srliw t3, a5, 31
	addiw t0, t0, 1
	add t2, a5, t3
	sraiw a5, t2, 1
	mv t2, zero
	j label499
label1809:
	li a4, 32767
	bgt a1, a4, label578
	lw t0, 4(sp)
	mv a4, a5
	divw a1, a1, t0
	j label495
label1810:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	j label547
label1844:
	mv a5, a4
	mv t0, t1
	bne t1, zero, label1810
	j label1809
label570:
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
	blt t0, t3, label569
	j label1844
label578:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	bne a1, zero, label1724
	j label2712
label547:
	li t4, 16
	blt t2, t4, label552
label1813:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label573
	j label2755
label552:
	andi t4, t3, 1
	bne t4, zero, label553
	andi t4, t1, 1
	bne t4, zero, label556
	j label1833
label553:
	andi t4, t1, 1
	beq t4, zero, label556
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label547
label1833:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label552
	j label1813
label2755:
	lw a5, 4(sp)
	mv t1, zero
	mv t0, zero
	mulw t2, t2, a5
	li a5, 65535
	j label564
label558:
	li t3, 16
	blt a5, t3, label573
	j label2755
label2760:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label558
label564:
	li t3, 16
	bge t0, t3, label1844
label569:
	and t4, a5, t2
	andi t3, t4, 1
	bne t3, zero, label570
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label564
label573:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label574
	j label2760
label556:
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
	blt t2, t4, label552
	j label1813
label574:
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
	blt a5, t3, label573
	j label2755
label414:
	li t3, 16
	blt t0, t3, label419
label1564:
	bne t1, zero, label1580
	j label2717
label419:
	and t2, t2, a5
	andi t3, t2, 1
	bne t3, zero, label422
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	j label414
label422:
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label419
	j label1564
label1580:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1661
label2720:
	mv a3, a5
	mv a5, a4
	mv t0, a4
label426:
	bne t0, zero, label1584
	j label1583
label1661:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label465
label1695:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1661
	j label2720
label488:
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
	li t3, 16
	blt t0, t3, label487
	j label1695
label1583:
	li a4, 32767
	bgt a2, a4, label461
	lw t0, 4(sp)
	mv a4, a5
	divw a2, a2, t0
	j label407
label1584:
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label429
label1610:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1584
	j label1583
label450:
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
	blt t0, t3, label449
	j label1610
label461:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a2, a2, a4
	addw a4, a2, t0
	subw a2, a4, t1
	mv a4, a5
	bne a2, zero, label1547
	j label1546
label429:
	li t4, 16
	bge t2, t4, label1587
	andi t4, t3, 1
	bne t4, zero, label456
	j label1626
label454:
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
	j label429
label1587:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label439
label2722:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label444
label434:
	li t3, 16
	bge a5, t3, label2722
label439:
	and t4, t0, t2
	andi t3, t4, 1
	bne t3, zero, label442
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label434
label442:
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
	blt a5, t3, label439
	j label2722
label444:
	li t3, 16
	bge t0, t3, label1610
label449:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label450
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label444
label1626:
	andi t4, t1, 1
	bne t4, zero, label454
label2728:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label429
label456:
	andi t4, t1, 1
	beq t4, zero, label454
	j label2728
label2733:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label482
label476:
	li t3, 16
	blt a5, t3, label491
	j label2733
label2738:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label476
label482:
	li t3, 16
	bge t0, t3, label1695
label487:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label488
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	j label482
label491:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label2738
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
	blt a5, t3, label491
	j label2733
label465:
	li t4, 16
	blt t2, t4, label470
	j label1664
label471:
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
	j label465
label470:
	andi t4, t3, 1
	bne t4, zero, label475
	andi t4, t1, 1
	bne t4, zero, label471
	j label2734
label475:
	andi t4, t1, 1
	beq t4, zero, label471
	j label1684
label1664:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label491
	j label2733
label1684:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label470
	j label1664
label2734:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label465
label2717:
	mv a5, a4
	mv t0, a4
	j label426
label1727:
	bne t1, zero, label1743
	j label2743
label505:
	sh2add t2, t0, s0
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t3, a5, 31
	addiw t0, t0, 1
	add t2, a5, t3
	sraiw a5, t2, 1
	mv t2, zero
	li t3, 16
	blt t0, t3, label504
	j label1727
label1743:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1747
label1746:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label544
label1747:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label512
label2745:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label527
label517:
	li t3, 16
	bge a5, t3, label2745
label522:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label525
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	j label517
label525:
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
	li t3, 16
	blt a5, t3, label522
	j label2745
label527:
	li t3, 16
	blt t0, t3, label532
label1773:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1747
	j label1746
label532:
	and t3, a5, t1
	andi t4, t3, 1
	bne t4, zero, label535
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label527
label535:
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
	blt t0, t3, label532
	j label1773
label544:
	bne t0, zero, label1810
	j label1809
label512:
	li t4, 16
	bge t2, t4, label1750
	andi t4, t3, 1
	bne t4, zero, label537
	j label1789
label2752:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label512
label1750:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label522
	j label2745
label538:
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
	j label512
label1789:
	andi t4, t1, 1
	bne t4, zero, label538
	j label2752
label537:
	andi t4, t1, 1
	beq t4, zero, label538
	j label2752
label1270:
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label261
	j label1223
label2743:
	mv a5, a4
	mv t0, a4
	j label544
label228:
	li t4, 16
	blt t0, t4, label305
	j label1211
label2655:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	j label228
label305:
	and t4, t3, t1
	andi t3, t4, 1
	beq t3, zero, label2655
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	li t4, 16
	blt t0, t4, label305
	j label1211
label394:
	ble a0, zero, label398
label1534:
	mv a5, zero
	li t0, 1
	mv a4, a0
	mv a3, zero
	li t1, 16
	blt zero, t1, label580
label1538:
	beq a5, zero, label2710
	mv a4, a1
	mv a3, zero
	mv a1, a2
	bne a2, zero, label1724
	j label2712
label399:
	li t1, 16
	blt a3, t1, label580
	j label1538
label2711:
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	j label399
label580:
	and t0, t0, a4
	andi t1, t0, 1
	beq t1, zero, label2711
	sh2add t0, a3, s0
	lw t1, 0(t0)
	addw a5, a5, t1
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	li t1, 16
	blt a3, t1, label580
	j label1538
label2654:
	mv t0, a5
	mv t1, a5
	j label269
label2710:
	mv a4, a2
	mv a3, zero
	j label407
label203:
	ble a1, zero, label1162
label1163:
	mv t0, zero
	li t1, 1
	mv a5, a1
	mv a4, zero
label209:
	li t2, 16
	bge a4, t2, label1174
label214:
	and t2, t1, a5
	andi t1, t2, 1
	bne t1, zero, label215
	srliw t2, a5, 31
	addiw a4, a4, 1
	add t1, a5, t2
	sraiw a5, t1, 1
	mv t1, zero
	j label209
label1174:
	bne t0, zero, label1190
	j label2647
label215:
	sh2add t2, a4, s0
	lw t1, 0(t2)
	addw t0, t0, t1
	srliw t2, a5, 31
	addiw a4, a4, 1
	add t1, a5, t2
	sraiw a5, t1, 1
	mv t1, zero
	li t2, 16
	blt a4, t2, label214
	j label1174
label1190:
	mv a5, a2
	mv a4, zero
	mv a2, a3
	bne a3, zero, label1371
	j label2649
label11:
	li t1, 16
	bge a4, t1, label795
label16:
	and t1, t0, a3
	andi t0, t1, 1
	bne t0, zero, label17
	srliw t0, a3, 31
	addiw a4, a4, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label11
label795:
	bne a5, zero, label811
	j label2589
label17:
	sh2add t0, a4, s0
	lw t1, 0(t0)
	addw a5, a5, t1
	srliw t0, a3, 31
	addiw a4, a4, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	li t1, 16
	blt a4, t1, label16
	j label795
label811:
	mv a4, a1
	mv a3, zero
	mv a1, a2
	bne a2, zero, label992
label2591:
	mv a1, a3
	mv a4, a2
	mv a3, zero
label23:
	beq a2, zero, label814
label815:
	mv t1, zero
	li t2, 1
	mv t0, a2
	mv a5, zero
	j label27
label111:
	beq a1, zero, label2591
label992:
	li t2, 1
	mv a5, a1
	mv t1, zero
	mv t0, zero
	j label115
label1066:
	li a4, 32767
	bgt a1, a4, label190
	lw t0, 4(sp)
	mv a4, a5
	divw a1, a1, t0
	j label111
label1067:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	li t4, 16
	blt zero, t4, label183
	j label1070
label2629:
	lw a5, 4(sp)
	mv t1, zero
	mv t0, zero
	mulw t2, t2, a5
	li a5, 65535
	j label174
label164:
	li t3, 16
	bge a5, t3, label2629
label169:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label172
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label164
label172:
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
	blt a5, t3, label169
	j label2629
label174:
	li t3, 16
	blt t0, t3, label179
label1093:
	mv a5, a4
	mv t0, t1
	bne t1, zero, label1067
	j label1066
label179:
	and t3, a5, t2
	andi t4, t3, 1
	bne t4, zero, label182
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t3, t2, t4
	srliw t4, a5, 31
	sraiw t2, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label174
label182:
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
	blt t0, t3, label179
	j label1093
label183:
	andi t4, t3, 1
	bne t4, zero, label188
	j label1109
label190:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t0
	subw a1, a4, t1
	mv a4, a5
	bne a1, zero, label992
	j label2591
label814:
	li a2, 32767
	bgt a0, a2, label110
	lw a4, 4(sp)
	mv a2, a3
	divw a0, a0, a4
	j label7
label826:
	li a4, 32767
	bgt a2, a4, label70
	lw t0, 4(sp)
	mv a4, a5
	divw a2, a2, t0
	j label23
label827:
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label38
label873:
	mv a5, a4
	mv t0, t1
	bne t1, zero, label827
	j label826
label70:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a2, a2, a4
	addw a4, a2, t0
	subw a2, a4, t1
	mv a4, a5
	bne a2, zero, label815
	j label814
label110:
	lw a2, 4(sp)
	lui a5, 16
	lw a4, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	bgt a0, zero, label792
	j label196
label2597:
	lw a5, 4(sp)
	mv t0, zero
	mulw t2, t1, a5
	li a5, 65535
	mv t1, zero
	j label59
label49:
	li t3, 16
	bge a5, t3, label2597
label54:
	and t4, t0, t2
	andi t3, t4, 1
	bne t3, zero, label57
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label49
label57:
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
	blt a5, t3, label54
	j label2597
label59:
	li t3, 16
	bge t0, t3, label873
label64:
	and t3, a5, t2
	andi t4, t3, 1
	bne t4, zero, label67
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label59
label67:
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
	blt t0, t3, label64
	j label873
label38:
	li t4, 16
	blt t2, t4, label43
	j label830
label2598:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label38
label43:
	andi t4, t3, 1
	bne t4, zero, label48
	andi t4, t1, 1
	bne t4, zero, label45
	j label2598
label48:
	andi t4, t1, 1
	beq t4, zero, label45
	j label850
label830:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label54
	j label2597
label45:
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
	blt t2, t4, label43
	j label830
label850:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label43
	j label830
label1070:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label169
	j label2629
label1125:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label183
	j label1070
label186:
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
	blt t2, t4, label183
	j label1070
label1109:
	andi t4, t1, 1
	bne t4, zero, label186
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label183
	j label1070
label188:
	andi t4, t1, 1
	beq t4, zero, label186
	j label1125
label27:
	li t3, 16
	blt a5, t3, label104
	j label818
label2594:
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label27
label104:
	and t3, t2, t0
	andi t2, t3, 1
	bne t2, zero, label105
	j label2594
label818:
	beq t1, zero, label2593
	mv a5, a3
	mv t0, a4
	bne a4, zero, label904
	j label2595
label105:
	sh2add t3, a5, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	li t3, 16
	blt a5, t3, label104
	j label818
label2595:
	mv a3, a5
	mv a5, a4
	mv t0, a4
label35:
	bne t0, zero, label827
	j label826
label904:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label74
label2609:
	lw t0, 4(sp)
	li a5, 65535
	mulw t2, t1, t0
	mv t0, zero
	mv t1, zero
	j label89
label79:
	li t3, 16
	bge a5, t3, label2609
label84:
	and t3, t0, t2
	andi t4, t3, 1
	bne t4, zero, label85
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	j label79
label89:
	li t3, 16
	blt t0, t3, label94
label930:
	mv a5, a3
	mv t0, t1
	bne t1, zero, label904
	j label2595
label94:
	and t3, a5, t2
	andi t4, t3, 1
	bne t4, zero, label97
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t3, t2, t4
	srliw t4, a5, 31
	sraiw t2, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label89
label97:
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
	blt t0, t3, label94
	j label930
label74:
	li t4, 16
	bge t2, t4, label907
	andi t4, t3, 1
	bne t4, zero, label99
	andi t4, t1, 1
	bne t4, zero, label100
label2615:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label74
label100:
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
	j label74
label85:
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
	blt a5, t3, label84
	j label2609
label907:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label84
	j label2609
label99:
	andi t4, t1, 1
	beq t4, zero, label100
	j label2615
label2593:
	mv a5, a4
	mv t0, a4
	j label35
label115:
	li t3, 16
	blt t0, t3, label192
	j label995
label2621:
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	j label115
label192:
	and t3, t2, a5
	andi t2, t3, 1
	bne t2, zero, label193
	j label2621
label995:
	beq t1, zero, label2620
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1004
	j label1003
label193:
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	li t3, 16
	blt t0, t3, label192
	j label995
label1003:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label156
label1004:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label124
label1050:
	mv a5, a3
	mv t0, t1
	bne t1, zero, label1004
	j label1003
label151:
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
	blt t0, t3, label150
	j label1050
label156:
	bne t0, zero, label1067
	j label1066
label2622:
	lw t0, 4(sp)
	mv t1, zero
	li a5, 65535
	mulw t2, t2, t0
	mv t0, zero
	j label145
label135:
	li t3, 16
	bge a5, t3, label2622
label140:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label141
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label135
label145:
	li t3, 16
	bge t0, t3, label1050
label150:
	and t4, a5, t2
	andi t3, t4, 1
	bne t3, zero, label151
	srliw t3, t2, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t2, t3
	add t3, a5, t4
	sraiw t2, t5, 1
	sraiw a5, t3, 1
	j label145
label141:
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
	blt a5, t3, label140
	j label2622
label124:
	li t4, 16
	blt t2, t4, label129
	j label1007
label131:
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
	j label124
label129:
	andi t4, t3, 1
	bne t4, zero, label130
	andi t4, t1, 1
	bne t4, zero, label131
label2623:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label124
label130:
	andi t4, t1, 1
	beq t4, zero, label131
	j label2623
label1007:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label140
	j label2622
label2620:
	mv a5, a4
	mv t0, a4
	j label156
label1897:
	beq a5, zero, label2768
	mv a4, a1
	mv a3, zero
	mv a1, a2
	j label590
label2647:
	mv a5, a3
	mv a4, zero
	j label221
label309:
	beq a2, zero, label2649
label1371:
	mv t2, zero
	li t3, 1
	mv t1, a2
	mv t0, zero
label313:
	li t4, 16
	bge t0, t4, label1374
label318:
	and t3, t3, t1
	andi t4, t3, 1
	bne t4, zero, label321
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	sraiw t1, t3, 1
	mv t3, zero
	j label313
label321:
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	sraiw t1, t3, 1
	mv t3, zero
	li t4, 16
	blt t0, t4, label318
label1374:
	beq t2, zero, label2683
	mv t0, a4
	mv t1, a5
	bne a5, zero, label1394
label1393:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	j label358
label1394:
	mv a4, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
	j label326
label1428:
	mv t0, a4
	mv t1, t2
	bne t2, zero, label1394
	j label1393
label349:
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
	blt t1, t4, label348
	j label1428
label358:
	bne t1, zero, label1457
	j label1456
label326:
	li t5, 16
	bge t3, t5, label1397
	andi t5, t4, 1
	bne t5, zero, label334
	andi t5, t2, 1
	bne t5, zero, label333
label2687:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label326
label334:
	andi t5, t2, 1
	beq t5, zero, label333
	j label2687
label2686:
	lw t0, 4(sp)
	mv t1, zero
	mulw t3, t2, t0
	li t0, 65535
	mv t2, zero
	j label343
label337:
	li t4, 16
	blt t0, t4, label352
	j label2686
label2690:
	srliw t5, t3, 31
	addiw t0, t0, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label337
label343:
	li t4, 16
	bge t1, t4, label1428
label348:
	and t5, t0, t3
	andi t4, t5, 1
	bne t4, zero, label349
	srliw t5, t3, 31
	addiw t1, t1, 1
	add t4, t3, t5
	srliw t5, t0, 31
	sraiw t3, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label343
label352:
	and t5, t1, t3
	andi t4, t5, 1
	beq t4, zero, label2690
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
	li t4, 16
	blt t0, t4, label352
	j label2686
label1397:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	li t4, 16
	blt zero, t4, label352
	j label2686
label333:
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
	j label326
label2683:
	mv t0, a5
	mv t1, a5
	j label358
label2589:
	mv a4, a2
	mv a3, zero
	j label23
label2768:
	mv a4, a2
	mv a3, zero
	j label677
