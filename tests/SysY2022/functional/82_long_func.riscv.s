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
	sd s0, 80(sp)
	addi s0, sp, 0
	sd s1, 72(sp)
	sd ra, 64(sp)
	sw a1, 0(sp)
	sw a2, 4(sp)
	sw a0, 8(sp)
	li a0, 16
	sw a3, 12(sp)
	li a3, 32
	sw a0, 16(sp)
	li a0, 64
	sw a3, 20(sp)
	li a3, 128
	sw a0, 24(sp)
	li a0, 256
	sw a3, 28(sp)
	li a3, 512
	sw a0, 32(sp)
	li a0, 1024
	sw a3, 36(sp)
	slli a4, a0, 1
	lui a3, 1
	sw a0, 40(sp)
	lui a0, 2
	sw a4, 44(sp)
	sw a3, 48(sp)
	lui a3, 4
	sw a0, 52(sp)
	lui a0, 8
	sw a3, 56(sp)
	sw a0, 60(sp)
	mv a0, zero
.p2align 2
label2:
	ble a0, zero, label6
label788:
	li t0, 1
	mv a3, a0
	mv a5, zero
	mv a4, zero
.p2align 2
label584:
	li t1, 16
	blt a4, t1, label765
	j label1897
.p2align 2
label2842:
	srliw t1, a3, 31
	addiw a4, a4, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	j label584
.p2align 2
label2068:
	li a2, 32767
	bgt a0, a2, label683
	lw a4, 4(sp)
	mv a2, a3
	divw a0, a0, a4
	j label2
.p2align 2
label683:
	lw a2, 4(sp)
	lui a5, 16
	lw a4, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	bgt a0, zero, label788
	j label6
.p2align 2
label2105:
	li a4, 32767
	bgt a2, a4, label700
	lw t0, 4(sp)
	mv a4, a5
	divw a2, a2, t0
	j label677
.p2align 2
label2106:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	li t4, 16
	blt zero, t4, label726
	j label2123
.p2align 2
label700:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a2, a2, a4
	addw a4, a2, t1
	subw a2, a4, t0
	mv a4, a5
	bne a2, zero, label2069
	j label2068
.p2align 2
label2123:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label722
	j label2879
.p2align 2
label2134:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label2106
	j label2105
.p2align 2
label719:
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
	blt t0, t3, label718
	j label2134
.p2align 2
label765:
	and t1, t0, a3
	andi t0, t1, 1
	beq t0, zero, label2842
	sh2add t0, a4, s0
	lw t1, 0(t0)
	addw a5, a5, t1
	srliw t1, a3, 31
	addiw a4, a4, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	li t1, 16
	blt a4, t1, label765
	j label1897
.p2align 2
label2879:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label713
.p2align 2
label707:
	li t3, 16
	blt a5, t3, label722
	j label2879
.p2align 2
label2881:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label707
.p2align 2
label713:
	li t3, 16
	bge t0, t3, label2134
.p2align 2
label718:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label719
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label713
.p2align 2
label722:
	and t4, t0, t2
	andi t3, t4, 1
	bne t3, zero, label723
	j label2881
.p2align 2
label702:
	li t4, 16
	bge t2, t4, label2123
.p2align 2
label726:
	andi t4, t3, 1
	bne t4, zero, label727
	andi t4, t1, 1
	bne t4, zero, label728
.p2align 2
label2885:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label702
.p2align 2
label727:
	andi t4, t1, 1
	beq t4, zero, label728
	j label2885
.p2align 2
label723:
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
	blt a5, t3, label722
	j label2879
.p2align 2
label728:
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
	j label702
.p2align 2
label1905:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	j label677
.p2align 2
label1928:
	li a4, 32767
	bgt a1, a4, label611
	lw t0, 4(sp)
	mv a4, a5
	divw a1, a1, t0
	j label590
.p2align 2
label1929:
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	li t4, 16
	blt zero, t4, label617
	j label1946
.p2align 2
label611:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	bne a1, zero, label1906
	j label1905
.p2align 2
label1946:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label628
	j label2850
.p2align 2
label1989:
	mv a5, a4
	mv t0, t1
	bne t1, zero, label1929
	j label1928
.p2align 2
label639:
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
	blt t0, t3, label638
	j label1989
.p2align 2
label677:
	beq a2, zero, label2068
.p2align 2
label2069:
	mv t1, zero
	li t2, 1
	mv t0, a2
	mv a5, zero
	li t3, 16
	blt zero, t3, label689
.p2align 2
label2086:
	beq t1, zero, label2872
	mv a5, a3
	mv t0, a4
	bne a4, zero, label2183
.p2align 2
label2874:
	mv a3, a5
	mv a5, a4
	mv t0, a4
.p2align 2
label696:
	bne t0, zero, label2106
	j label2105
.p2align 2
label2183:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label735
.p2align 2
label2217:
	mv a5, a3
	mv t0, t1
	bne t1, zero, label2183
	j label2874
.p2align 2
label758:
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
	blt t0, t3, label757
	j label2217
.p2align 2
label617:
	andi t4, t3, 1
	bne t4, zero, label622
	andi t4, t1, 1
	bne t4, zero, label618
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label617
	j label1946
.p2align 2
label622:
	andi t4, t1, 1
	beq t4, zero, label618
	j label1966
.p2align 2
label2887:
	lw a5, 4(sp)
	mv t1, zero
	mv t0, zero
	mulw t2, t2, a5
	li a5, 65535
	j label752
.p2align 2
label746:
	li t3, 16
	blt a5, t3, label761
	j label2887
.p2align 2
label2892:
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label746
.p2align 2
label752:
	li t3, 16
	bge t0, t3, label2217
.p2align 2
label757:
	and t4, a5, t2
	andi t3, t4, 1
	bne t3, zero, label758
	srliw t3, t2, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t2, t3
	add t3, a5, t4
	sraiw t2, t5, 1
	sraiw a5, t3, 1
	j label752
.p2align 2
label761:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label2892
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
	blt a5, t3, label761
	j label2887
.p2align 2
label2850:
	lw a5, 4(sp)
	mv t0, zero
	mulw t2, t1, a5
	li a5, 65535
	mv t1, zero
	j label633
.p2align 2
label623:
	li t3, 16
	bge a5, t3, label2850
.p2align 2
label628:
	and t3, t0, t2
	andi t4, t3, 1
	bne t4, zero, label631
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label623
.p2align 2
label631:
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
	blt a5, t3, label628
	j label2850
.p2align 2
label633:
	li t3, 16
	bge t0, t3, label1989
.p2align 2
label638:
	and t4, a5, t2
	andi t3, t4, 1
	bne t3, zero, label639
	srliw t3, t2, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t2, t3
	add t3, a5, t4
	sraiw t2, t5, 1
	sraiw a5, t3, 1
	j label633
.p2align 2
label618:
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
	blt t2, t4, label617
	j label1946
.p2align 2
label735:
	li t4, 16
	blt t2, t4, label740
	j label2186
.p2align 2
label741:
	andi t4, t1, 1
	beq t4, zero, label745
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label735
.p2align 2
label740:
	andi t4, t3, 1
	bne t4, zero, label741
	andi t4, t1, 1
	bne t4, zero, label745
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label740
.p2align 2
label2186:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label761
	j label2887
.p2align 2
label745:
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
	blt t2, t4, label740
	j label2186
.p2align 2
label1966:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label617
	j label1946
.p2align 2
label684:
	li t3, 16
	bge a5, t3, label2086
.p2align 2
label689:
	and t3, t2, t0
	andi t2, t3, 1
	bne t2, zero, label690
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label684
.p2align 2
label690:
	sh2add t3, a5, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	li t3, 16
	blt a5, t3, label689
	j label2086
.p2align 2
label2872:
	mv a5, a4
	mv t0, a4
	j label696
label6:
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
.p2align 2
label11:
	li t1, 16
	bge a3, t1, label795
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
	j label11
.p2align 2
label977:
	li a2, 32767
	bgt a0, a2, label113
	lw a4, 4(sp)
	mv a2, a3
	divw a0, a0, a4
	j label7
.p2align 2
label113:
	lw a2, 4(sp)
	lui a5, 16
	lw a4, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	bgt a0, zero, label792
	j label196
.p2align 2
label1014:
	li a4, 32767
	bgt a2, a4, label162
	lw t0, 4(sp)
	mv a4, a5
	divw a2, a2, t0
	j label108
.p2align 2
label1015:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	li t4, 16
	blt zero, t4, label154
.p2align 2
label1018:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label150
.p2align 2
label2686:
	lw a5, 4(sp)
	mv t0, zero
	mulw t2, t1, a5
	li a5, 65535
	mv t1, zero
	j label141
.p2align 2
label135:
	li t3, 16
	blt a5, t3, label150
	j label2686
.p2align 2
label2688:
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	j label135
.p2align 2
label141:
	li t3, 16
	blt t0, t3, label146
.p2align 2
label1029:
	mv a5, a4
	mv t0, t1
	bne t1, zero, label1015
	j label1014
.p2align 2
label146:
	and t4, a5, t2
	andi t3, t4, 1
	bne t3, zero, label149
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label141
.p2align 2
label149:
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
	j label1029
.p2align 2
label150:
	and t3, t0, t2
	andi t4, t3, 1
	bne t4, zero, label151
	j label2688
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
label162:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a2, a2, a4
	addw a4, a2, t1
	subw a2, a4, t0
	mv a4, a5
	bne a2, zero, label978
	j label977
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
	j label2686
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
label1154:
	mv a0, zero
	li a1, 16
	bge zero, a1, label2707
label1159:
	li a3, 2
	li a2, 1
	mv a1, a0
	j label201
.p2align 2
label394:
	ble a0, zero, label398
.p2align 2
label1534:
	li t0, 1
	mv a3, a0
	mv a5, zero
	mv a4, zero
	li t1, 16
	blt zero, t1, label404
	j label1538
.p2align 2
label398:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, 1
	li a1, 16
	blt s1, a1, label1155
	j label1154
.p2align 2
label1538:
	beq a5, zero, label2772
	mv a4, a1
	mv a3, zero
	mv a1, a2
	j label409
.p2align 2
label2707:
	mv a0, zero
	j label392
label199:
	li a1, 16
	blt a0, a1, label1159
	j label2707
.p2align 2
label201:
	bgt a1, zero, label1163
.p2align 2
label1162:
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a2, a1, label1529
	addiw a0, a0, 1
	j label199
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
	lw a5, 4(sp)
	mv a3, a4
	divw a1, a1, a5
	j label201
.p2align 2
label307:
	lw a3, 4(sp)
	lui t0, 16
	lw a5, 60(sp)
	divw a1, a1, a3
	addw a3, a1, t0
	subw a1, a3, a5
	mv a3, a4
	bgt a1, zero, label1163
	j label1162
.p2align 2
label1448:
	li a5, 32767
	bgt a3, a5, label358
	lw t1, 4(sp)
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
	j label1466
.p2align 2
label358:
	lw a5, 4(sp)
	lui t2, 16
	lw t1, 60(sp)
	divw a3, a3, a5
	addw a5, a3, t2
	subw a3, a5, t1
	mv a5, t0
	bne a3, zero, label1349
	j label1348
.p2align 2
label1489:
	mv t0, a5
	mv t1, t2
	bne t2, zero, label1449
	j label1448
.p2align 2
label381:
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
	j label1489
label1529:
	li a0, 1
label392:
	ld ra, 64(sp)
	ld s1, 72(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label2758:
	lw t0, 4(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	j label375
.p2align 2
label365:
	li t4, 16
	bge t0, t4, label2758
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
	j label365
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
	j label2758
.p2align 2
label375:
	li t4, 16
	bge t1, t4, label1489
.p2align 2
label380:
	and t4, t0, t3
	andi t5, t4, 1
	bne t5, zero, label381
	srliw t5, t3, 31
	addiw t1, t1, 1
	add t4, t3, t5
	srliw t5, t0, 31
	sraiw t3, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label375
.p2align 2
label384:
	andi t5, t4, 1
	bne t5, zero, label389
	j label1505
.p2align 2
label1466:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	li t4, 16
	blt zero, t4, label370
	j label2758
.p2align 2
label1505:
	andi t5, t2, 1
	bne t5, zero, label388
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label384
	j label1466
.p2align 2
label389:
	andi t5, t2, 1
	bne t5, zero, label1521
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
	j label1466
.p2align 2
label1521:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	li t5, 16
	blt t3, t5, label384
	j label1466
.p2align 2
label409:
	beq a1, zero, label1557
.p2align 2
label1558:
	mv t1, zero
	li t2, 1
	mv t0, a1
	mv a5, zero
.p2align 2
label413:
	li t3, 16
	blt a5, t3, label490
.p2align 2
label1561:
	bne t1, zero, label1566
	j label2774
.p2align 2
label2775:
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label413
.p2align 2
label1566:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1647
	j label2776
.p2align 2
label490:
	and t2, t2, t0
	andi t3, t2, 1
	beq t3, zero, label2775
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
	j label1561
.p2align 2
label2776:
	mv a3, a5
	mv a5, a4
	mv t0, a4
.p2align 2
label421:
	bne t0, zero, label1570
	j label1569
.p2align 2
label1647:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	li t4, 16
	blt zero, t4, label465
	j label1650
.p2align 2
label1681:
	mv a5, a3
	mv t0, t1
	bne t1, zero, label1647
	j label2776
.p2align 2
label1569:
	li a4, 32767
	bgt a1, a4, label426
	lw t0, 4(sp)
	mv a4, a5
	divw a1, a1, t0
	j label409
.p2align 2
label1570:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	li t4, 16
	blt zero, t4, label451
	j label1587
.p2align 2
label426:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t0
	subw a1, a4, t1
	mv a4, a5
	bne a1, zero, label1558
	j label1557
.p2align 2
label1610:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1570
	j label1569
.p2align 2
label448:
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
	j label1610
.p2align 2
label2781:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label442
.p2align 2
label432:
	li t3, 16
	bge a5, t3, label2781
.p2align 2
label437:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label440
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label432
.p2align 2
label440:
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
	j label2781
.p2align 2
label442:
	li t3, 16
	bge t0, t3, label1610
.p2align 2
label447:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label448
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label442
.p2align 2
label1587:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label437
	j label2781
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
	j label1587
.p2align 2
label455:
	andi t4, t1, 1
	bne t4, zero, label1638
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
	j label1587
.p2align 2
label465:
	andi t4, t3, 1
	bne t4, zero, label468
	andi t4, t1, 1
	bne t4, zero, label470
	j label1666
.p2align 2
label468:
	andi t4, t1, 1
	beq t4, zero, label470
	j label1662
.p2align 2
label1666:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label465
	j label1650
.p2align 2
label1638:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label451
	j label1587
.p2align 2
label1650:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label486
	j label2793
.p2align 2
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
	j label1650
.p2align 2
label2793:
	lw a5, 4(sp)
	mv t1, zero
	mv t0, zero
	mulw t2, t2, a5
	li a5, 65535
	j label477
.p2align 2
label471:
	li t3, 16
	blt a5, t3, label486
	j label2793
.p2align 2
label2800:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label471
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
	j label477
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
	j label1681
.p2align 2
label486:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label487
	j label2800
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
	j label1650
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
	j label2793
.p2align 2
label1557:
	mv a1, a3
	mv a4, a2
	mv a3, zero
.p2align 2
label496:
	beq a2, zero, label1720
.p2align 2
label1721:
	mv t1, zero
	li t2, 1
	mv t0, a2
	mv a5, zero
	li t3, 16
	blt zero, t3, label508
.p2align 2
label1738:
	beq t1, zero, label2811
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1835
.p2align 2
label2813:
	mv a3, a5
	mv a5, a4
	mv t0, a4
.p2align 2
label515:
	bne t0, zero, label1758
.p2align 2
label1757:
	li a4, 32767
	bgt a2, a4, label520
	lw t0, 4(sp)
	mv a4, a5
	divw a2, a2, t0
	j label496
.p2align 2
label1758:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	li t4, 16
	blt zero, t4, label526
	j label1775
.p2align 2
label520:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a2, a2, a4
	addw a4, a2, t1
	subw a2, a4, t0
	mv a4, a5
	bne a2, zero, label1721
	j label1720
.p2align 2
label2818:
	lw t0, 4(sp)
	mv t1, zero
	li a5, 65535
	mulw t2, t2, t0
	mv t0, zero
	j label542
.p2align 2
label538:
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
	j label2818
.p2align 2
label542:
	li t3, 16
	blt t0, t3, label547
.p2align 2
label1818:
	mv a5, a4
	mv t0, t1
	bne t1, zero, label1758
	j label1757
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
	j label542
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
	j label1818
.p2align 2
label526:
	andi t4, t3, 1
	bne t4, zero, label531
	andi t4, t1, 1
	bne t4, zero, label527
	j label2819
.p2align 2
label531:
	andi t4, t1, 1
	beq t4, zero, label527
	j label1795
.p2align 2
label521:
	li t4, 16
	blt t2, t4, label526
	j label1775
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
	j label521
.p2align 2
label1775:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label537
	j label2818
.p2align 2
label1795:
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
label532:
	li t3, 16
	bge a5, t3, label2818
.p2align 2
label537:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label538
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label532
.p2align 2
label1835:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	li t4, 16
	blt zero, t4, label578
	j label1838
.p2align 2
label1849:
	mv a5, a3
	mv t0, t1
	bne t1, zero, label1835
	j label2813
.p2align 2
label578:
	andi t4, t3, 1
	bne t4, zero, label583
	j label1877
.p2align 2
label2827:
	lw a5, 4(sp)
	mv t0, zero
	mulw t2, t1, a5
	li a5, 65535
	mv t1, zero
	j label565
.p2align 2
label559:
	li t3, 16
	blt a5, t3, label574
	j label2827
.p2align 2
label2829:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label559
.p2align 2
label565:
	li t3, 16
	bge t0, t3, label1849
.p2align 2
label570:
	and t4, a5, t2
	andi t3, t4, 1
	bne t3, zero, label573
	srliw t3, t2, 31
	addiw t0, t0, 1
	add t4, t2, t3
	srliw t3, a5, 31
	sraiw t2, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label565
.p2align 2
label573:
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
	j label1849
.p2align 2
label574:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label2829
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
	j label2827
.p2align 2
label1838:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label574
	j label2827
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
label2819:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label521
.p2align 2
label1877:
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
label1720:
	li a2, 32767
	bgt a0, a2, label502
	lw a4, 4(sp)
	mv a2, a3
	divw a0, a0, a4
	j label394
.p2align 2
label502:
	lw a2, 4(sp)
	lui a5, 16
	lw a4, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	bgt a0, zero, label1534
	j label398
.p2align 2
label503:
	li t3, 16
	bge a5, t3, label1738
.p2align 2
label508:
	and t2, t2, t0
	andi t3, t2, 1
	bne t3, zero, label509
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label503
.p2align 2
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
	j label1738
.p2align 2
label2811:
	mv a5, a4
	mv t0, a4
	j label515
.p2align 2
label2774:
	mv a5, a4
	mv t0, a4
	j label421
.p2align 2
label1185:
	mv a2, a4
	mv a5, a3
	mv a4, zero
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
.p2align 2
label1366:
	beq t2, zero, label2740
	mv t0, a4
	mv t1, a5
	bne a5, zero, label1386
.p2align 2
label1385:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	j label354
.p2align 2
label1386:
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
	li t5, 16
	blt zero, t5, label346
	j label1389
.p2align 2
label1412:
	mv t0, a4
	mv t1, t2
	bne t2, zero, label1386
	j label1385
.p2align 2
label346:
	andi t5, t4, 1
	bne t5, zero, label351
	j label1428
.p2align 2
label354:
	bne t1, zero, label1449
	j label1448
.p2align 2
label215:
	beq a2, zero, label1185
.p2align 2
label1186:
	mv t2, zero
	li t3, 1
	mv t1, a2
	mv t0, zero
	j label219
.p2align 2
label1197:
	li a5, 32767
	bgt a2, a5, label261
	lw t1, 4(sp)
	mv a5, t0
	divw a2, a2, t1
	j label215
.p2align 2
label1198:
	mv a5, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
	j label230
.p2align 2
label1244:
	mv t0, a5
	mv t1, t2
	bne t2, zero, label1198
	j label1197
.p2align 2
label257:
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
	j label1244
.p2align 2
label261:
	lw a5, 4(sp)
	lui t1, 16
	lw t2, 60(sp)
	divw a2, a2, a5
	addw a5, a2, t1
	subw a2, a5, t2
	mv a5, t0
	bne a2, zero, label1186
	j label1185
.p2align 2
label2742:
	lw t0, 4(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	j label337
.p2align 2
label327:
	li t4, 16
	bge t0, t4, label2742
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
	j label327
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
	j label2742
.p2align 2
label337:
	li t4, 16
	bge t1, t4, label1412
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
	j label337
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
	j label1412
.p2align 2
label1389:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	li t4, 16
	blt zero, t4, label332
	j label2742
.p2align 2
label1444:
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
label2715:
	lw t0, 4(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
.p2align 2
label251:
	li t4, 16
	bge t1, t4, label1244
.p2align 2
label256:
	and t4, t0, t3
	andi t5, t4, 1
	bne t5, zero, label257
	srliw t4, t3, 31
	addiw t1, t1, 1
	add t5, t3, t4
	srliw t4, t0, 31
	sraiw t3, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	j label251
.p2align 2
label230:
	li t5, 16
	blt t3, t5, label235
	j label1201
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
	j label230
.p2align 2
label1201:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	li t4, 16
	blt zero, t4, label246
	j label2715
.p2align 2
label235:
	andi t5, t4, 1
	bne t5, zero, label237
	andi t5, t2, 1
	bne t5, zero, label236
	j label1221
.p2align 2
label2717:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label230
.p2align 2
label237:
	andi t5, t2, 1
	beq t5, zero, label236
	j label2717
.p2align 2
label1221:
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
label241:
	li t4, 16
	bge t0, t4, label2715
.p2align 2
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
	j label241
.p2align 2
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
	j label2715
.p2align 2
label1428:
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
label351:
	andi t5, t2, 1
	beq t5, zero, label347
	j label1444
.p2align 2
label309:
	li t4, 16
	bge t1, t4, label1366
.p2align 2
label314:
	and t3, t3, t0
	andi t4, t3, 1
	bne t4, zero, label315
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t4, t0, t3
	mv t3, zero
	sraiw t0, t4, 1
	j label309
.p2align 2
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
	j label1366
.p2align 2
label399:
	li t1, 16
	bge a4, t1, label1538
.p2align 2
label404:
	and t1, t0, a3
	andi t0, t1, 1
	bne t0, zero, label405
	srliw t0, a3, 31
	addiw a4, a4, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label399
.p2align 2
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
	j label1538
.p2align 2
label2740:
	mv t0, a5
	mv t1, a5
	j label354
.p2align 2
label219:
	li t4, 16
	blt t0, t4, label296
	j label1189
.p2align 2
label2712:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	mv t3, zero
	sraiw t1, t4, 1
	j label219
.p2align 2
label296:
	and t4, t3, t1
	andi t3, t4, 1
	bne t3, zero, label297
	j label2712
.p2align 2
label1189:
	beq t2, zero, label2711
	mv t0, a4
	mv t1, a5
	bne a5, zero, label1275
	j label2713
.p2align 2
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
	j label1189
.p2align 2
label2713:
	mv a4, t0
	mv t0, a5
	mv t1, a5
.p2align 2
label227:
	bne t1, zero, label1198
	j label1197
.p2align 2
label1275:
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
	j label266
.p2align 2
label2726:
	lw t0, 4(sp)
	mv t2, zero
	mv t1, zero
	mulw t3, t3, t0
	li t0, 65535
	j label281
.p2align 2
label271:
	li t4, 16
	bge t0, t4, label2726
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
	j label271
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
	j label2726
.p2align 2
label281:
	li t4, 16
	blt t1, t4, label286
.p2align 2
label1301:
	mv t0, a4
	mv t1, t2
	bne t2, zero, label1275
	j label2713
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
	j label281
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
	j label1301
.p2align 2
label266:
	li t5, 16
	bge t3, t5, label1278
	andi t5, t4, 1
	bne t5, zero, label291
	andi t5, t2, 1
	beq t5, zero, label2733
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
	j label266
.p2align 2
label1278:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	li t4, 16
	blt zero, t4, label276
	j label2726
.p2align 2
label2733:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label266
.p2align 2
label291:
	andi t5, t2, 1
	beq t5, zero, label292
	j label2733
.p2align 2
label2772:
	mv a4, a2
	mv a3, zero
	j label496
.p2align 2
label814:
	mv a1, a3
	mv a4, a2
	mv a3, zero
.p2align 2
label108:
	beq a2, zero, label977
.p2align 2
label978:
	li t2, 1
	mv a5, a2
	mv t1, zero
	mv t0, zero
	li t3, 16
	blt zero, t3, label120
	j label995
.p2align 2
label21:
	beq a1, zero, label814
.p2align 2
label815:
	li t2, 1
	mv a5, a1
	mv t1, zero
	mv t0, zero
.p2align 2
label25:
	li t3, 16
	blt t0, t3, label102
	j label818
.p2align 2
label2653:
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	j label25
.p2align 2
label826:
	li t0, 32767
	bgt a1, t0, label67
	lw t0, 4(sp)
	mv a4, a5
	divw a1, a1, t0
	j label21
.p2align 2
label827:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	j label36
.p2align 2
label2656:
	lw a5, 4(sp)
	mv t1, zero
	mv t0, zero
	mulw t2, t2, a5
	li a5, 65535
	j label51
.p2align 2
label41:
	li t3, 16
	bge a5, t3, label2656
.p2align 2
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
	j label41
.p2align 2
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
	j label2656
.p2align 2
label51:
	li t3, 16
	blt t0, t3, label56
.p2align 2
label853:
	mv a5, a4
	mv t0, t1
	bne t1, zero, label827
	j label826
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
	j label51
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
	j label853
.p2align 2
label67:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	bne a1, zero, label815
	j label814
.p2align 2
label102:
	and t3, t2, a5
	andi t2, t3, 1
	bne t2, zero, label103
	j label2653
.p2align 2
label36:
	li t4, 16
	blt t2, t4, label60
.p2align 2
label830:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label46
	j label2656
.p2align 2
label60:
	andi t4, t3, 1
	bne t4, zero, label61
	j label869
.p2align 2
label2663:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label36
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
label869:
	andi t4, t1, 1
	bne t4, zero, label65
	j label2663
.p2align 2
label61:
	andi t4, t1, 1
	beq t4, zero, label65
	j label2663
.p2align 2
label115:
	li t3, 16
	bge t0, t3, label995
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
	j label115
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
.p2align 2
label995:
	beq t1, zero, label2681
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1092
.p2align 2
label2684:
	mv a3, a5
	mv a5, a4
	mv t0, a4
.p2align 2
label127:
	bne t0, zero, label1015
	j label1014
.p2align 2
label1092:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label166
.p2align 2
label1126:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1092
	j label2684
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
	j label1126
.p2align 2
label2700:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label183
.p2align 2
label177:
	li t3, 16
	blt a5, t3, label192
	j label2700
.p2align 2
label2703:
	srliw t3, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t1, t3
	add t3, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t3, 1
	j label177
.p2align 2
label183:
	li t3, 16
	bge t0, t3, label1126
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
	j label183
.p2align 2
label192:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label2703
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
	j label2700
.p2align 2
label166:
	li t4, 16
	blt t2, t4, label171
	j label1095
.p2align 2
label2701:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label166
.p2align 2
label171:
	andi t4, t3, 1
	bne t4, zero, label172
	andi t4, t1, 1
	bne t4, zero, label1105
	j label2701
.p2align 2
label172:
	andi t4, t1, 1
	beq t4, zero, label1105
	j label2701
.p2align 2
label1095:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	li t3, 16
	blt zero, t3, label192
	j label2700
.p2align 2
label1105:
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
	j label1095
.p2align 2
label2681:
	mv a5, a4
	mv t0, a4
	j label127
.p2align 2
label818:
	beq t1, zero, label2652
	mv a5, a3
	mv t0, a4
	bne a4, zero, label904
	j label2654
.p2align 2
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
	j label818
.p2align 2
label2654:
	mv a3, a5
	mv a5, a4
	mv t0, a4
.p2align 2
label33:
	bne t0, zero, label827
	j label826
.p2align 2
label904:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label72
.p2align 2
label950:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label904
	j label2654
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
	j label950
.p2align 2
label72:
	li t4, 16
	blt t2, t4, label77
.p2align 2
label907:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label88
	j label2668
.p2align 2
label77:
	andi t4, t3, 1
	bne t4, zero, label78
	andi t4, t1, 1
	bne t4, zero, label81
	j label927
.p2align 2
label78:
	andi t4, t1, 1
	beq t4, zero, label81
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label72
.p2align 2
label927:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	li t4, 16
	blt t2, t4, label77
	j label907
.p2align 2
label2668:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label93
.p2align 2
label89:
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
	j label2668
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
	j label93
.p2align 2
label83:
	li t3, 16
	bge a5, t3, label2668
.p2align 2
label88:
	and t4, t0, t2
	andi t3, t4, 1
	bne t3, zero, label89
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label83
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
	j label907
.p2align 2
label2711:
	mv t0, a5
	mv t1, a5
	j label227
.p2align 2
label2652:
	mv a5, a4
	mv t0, a4
	j label33
.p2align 2
label205:
	li t2, 16
	bge a5, t2, label1166
.p2align 2
label210:
	and t2, t1, a4
	andi t1, t2, 1
	bne t1, zero, label211
	srliw t1, a4, 31
	addiw a5, a5, 1
	add t2, a4, t1
	mv t1, zero
	sraiw a4, t2, 1
	j label205
.p2align 2
label1166:
	bne t0, zero, label1182
	j label2709
.p2align 2
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
	j label1166
.p2align 2
label1182:
	mv a5, a2
	mv a4, zero
	mv a2, a3
	j label215
.p2align 2
label795:
	bne a5, zero, label811
	j label2650
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
	j label795
.p2align 2
label811:
	mv a4, a1
	mv a3, zero
	mv a1, a2
	j label21
.p2align 2
label1897:
	beq a5, zero, label2841
	mv a4, a1
	mv a3, zero
	mv a1, a2
	j label590
.p2align 2
label2709:
	mv a5, a3
	mv a4, zero
	j label302
.p2align 2
label2650:
	mv a4, a2
	mv a3, zero
	j label108
.p2align 2
label2841:
	mv a4, a2
	mv a3, zero
	j label677
.p2align 2
label590:
	beq a1, zero, label1905
.p2align 2
label1906:
	mv t1, zero
	li t2, 1
	mv t0, a1
	mv a5, zero
.p2align 2
label594:
	li t3, 16
	bge a5, t3, label1909
.p2align 2
label599:
	and t2, t2, t0
	andi t3, t2, 1
	bne t3, zero, label600
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	j label594
.p2align 2
label1909:
	bne t1, zero, label1925
	j label2843
.p2align 2
label600:
	sh2add t3, a5, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	li t3, 16
	blt a5, t3, label599
	j label1909
.p2align 2
label1925:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label2006
.p2align 2
label2845:
	mv a3, a5
	mv a5, a4
	mv t0, a4
.p2align 2
label606:
	bne t0, zero, label1929
	j label1928
.p2align 2
label2006:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label645
.p2align 2
label2032:
	mv a5, a3
	mv t0, t1
	bne t1, zero, label2006
	j label2845
.p2align 2
label666:
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
	blt t0, t3, label665
	j label2032
.p2align 2
label2860:
	lw t0, 4(sp)
	li a5, 65535
	mulw t2, t1, t0
	mv t0, zero
	mv t1, zero
	j label660
.p2align 2
label650:
	li t3, 16
	bge a5, t3, label2860
.p2align 2
label655:
	and t3, t0, t2
	andi t4, t3, 1
	bne t4, zero, label656
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label650
.p2align 2
label660:
	li t3, 16
	bge t0, t3, label2032
.p2align 2
label665:
	and t3, a5, t2
	andi t4, t3, 1
	bne t4, zero, label666
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t3, t2, t4
	srliw t4, a5, 31
	sraiw t2, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label660
.p2align 2
label645:
	li t4, 16
	blt t2, t4, label669
.p2align 2
label2009:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	li t3, 16
	blt zero, t3, label655
	j label2860
.p2align 2
label669:
	andi t4, t3, 1
	bne t4, zero, label670
	andi t4, t1, 1
	bne t4, zero, label671
	j label2064
.p2align 2
label670:
	andi t4, t1, 1
	beq t4, zero, label671
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label645
.p2align 2
label2064:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	li t4, 16
	blt t2, t4, label669
	j label2009
.p2align 2
label671:
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
	blt t2, t4, label669
	j label2009
.p2align 2
label656:
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
	blt a5, t3, label655
	j label2860
.p2align 2
label2843:
	mv a5, a4
	mv t0, a4
	j label606
