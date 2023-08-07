.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -112
	li a0, 2
	sd ra, 0(sp)
	slli a2, a0, 32
	sd s1, 8(sp)
	addi a1, a2, 1
	addi s1, sp, 48
	slli a0, a1, 2
	sd s2, 16(sp)
	slli a2, a0, 2
	li s2, 1
	slli a3, a2, 2
	sd s3, 24(sp)
	li s3, 2
	sd s0, 32(sp)
	li s0, 16
	sd s4, 40(sp)
	sd a1, 48(sp)
	slli a1, a3, 2
	sd a0, 56(sp)
	lui a0, 1
	sd a2, 64(sp)
	slli a2, a1, 2
	sd a3, 72(sp)
	sd a1, 80(sp)
	lui a1, 2
	sd a2, 88(sp)
	slli a2, a1, 32
	lui a1, 4
	add.uw a3, a0, a2
	lui a2, 8
	sd a3, 96(sp)
	slli a0, a2, 32
	mv a2, s3
	add.uw a3, a1, a0
	mv a0, zero
	mv a1, s2
	sd a3, 104(sp)
label2:
	ble a0, zero, label217
label6:
	mv a3, s1
	mv a5, zero
	mv t0, zero
	mv a4, a0
	mv t1, s2
	and t2, a0, s2
	andi t3, t2, 1
	bne t3, zero, label13
	j label898
label2710:
	lw a4, 52(sp)
	mv a2, a3
	divw a0, a0, a4
	j label2
label121:
	mv a5, s1
	mv t2, zero
	mv t0, a2
	mv t3, s2
	mv t1, zero
	and t5, a2, s2
	andi t4, t5, 1
	bne t4, zero, label128
	li t2, 1
	srliw t3, a2, 31
	add t4, a2, t3
	sraiw t0, t4, 1
	blt t2, s0, label131
	j label2711
label2722:
	lui a5, 8
	addiw a4, a5, -1
	ble a2, a4, label2715
label174:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a2, a5, t1
	bne a2, zero, label121
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label215
	j label2710
label2711:
	bne t1, zero, label1090
	j label2918
label128:
	lw t3, 0(a5)
	addw t1, t1, t3
	addiw t2, t2, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	bge t2, s0, label1084
label131:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	bne t4, zero, label128
	addiw t2, t2, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t2, s0, label131
	j label2711
label117:
	bne a2, zero, label121
	j label1071
label2715:
	lw a5, 52(sp)
	mv a4, t0
	divw a2, a2, a5
	j label117
label2918:
	mv t0, a4
	mv a5, a4
	j label135
label1084:
	bne t1, zero, label1090
	j label2918
label135:
	bne a5, zero, label138
label1093:
	lui a5, 8
	addiw a4, a5, -1
	bgt a2, a4, label174
	j label2715
label138:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	beq t5, zero, label1097
label145:
	andi t5, t2, 1
	beq t5, zero, label146
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label149
	j label2717
label2719:
	lw t0, 52(sp)
	mv t3, zero
	mv t1, zero
	lui t5, 16
	mulw t2, a5, t0
	addiw t0, t5, -1
	mv a5, s1
	j label162
label157:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	bge t3, s0, label1126
label160:
	addi t1, t1, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label157
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label160
	j label2719
label162:
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label168
	j label1135
label2721:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label138
	j label2722
label168:
	lw t4, 0(a5)
	addw t1, t1, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label1144
label171:
	addi a5, a5, 4
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label168
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label171
	j label2721
label2724:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	mv a5, zero
	andi t4, t5, 1
	bne t4, zero, label157
	j label1117
label1097:
	andi t5, t2, 1
	bne t5, zero, label146
label2716:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label149
	j label2724
label146:
	lw t5, 0(t1)
	addw a4, a4, t5
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	bge t4, s0, label1111
label149:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label145
	andi t5, t2, 1
	bne t5, zero, label146
	j label2716
label1126:
	lw t0, 52(sp)
	mv t3, zero
	mv t1, zero
	lui t5, 16
	mulw t2, a5, t0
	addiw t0, t5, -1
	mv a5, s1
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label168
label1135:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label171
	j label2721
label1111:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	mv a5, zero
	andi t4, t5, 1
	bne t4, zero, label157
label1117:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label160
	j label2719
label2717:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label157
	j label1117
label2683:
	bne t0, zero, label912
	j label2890
label13:
	lw t1, 0(a3)
	addw t0, t0, t1
	addiw a5, a5, 1
	srliw t1, a4, 31
	add t2, a4, t1
	sraiw a4, t2, 1
	bge a5, s0, label906
label16:
	addi a3, a3, 4
	mv t1, zero
	and t2, a4, zero
	andi t3, t2, 1
	bne t3, zero, label13
	addiw a5, a5, 1
	srliw t1, a4, 31
	add t2, a4, t1
	sraiw a4, t2, 1
	blt a5, s0, label16
	j label2683
label912:
	mv a4, a1
	mv a3, a2
	mv a1, zero
	beq a2, zero, label915
label22:
	mv a5, s1
	mv t2, zero
	mv t0, a3
	mv t3, s2
	mv t1, zero
	and t5, a3, s2
	andi t4, t5, 1
	bne t4, zero, label29
	j label920
label2894:
	mv t0, a4
	mv a5, a4
	j label36
label29:
	lw t3, 0(a5)
	addw t1, t1, t3
	addiw t2, t2, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	bge t2, s0, label928
label32:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	bne t4, zero, label29
	addiw t2, t2, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t2, s0, label32
	j label2686
label36:
	bne a5, zero, label42
label39:
	lui a5, 8
	addiw a4, a5, -1
	ble a3, a4, label941
label40:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a3, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a3, a5, t1
	bne a3, zero, label22
	mv a4, a2
	mv a3, zero
	bne a2, zero, label121
	j label1071
label42:
	mv t1, s1
	mv t4, zero
	mv t3, t0
	mv t2, a5
	mv a4, zero
	andi t5, t0, 1
	bne t5, zero, label76
	andi t5, a5, 1
	bne t5, zero, label49
	j label2692
label2694:
	mv t0, a4
	mv a5, t2
	bne t2, zero, label42
	j label2695
label2692:
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t5, t2, 31
	add t6, t3, a6
	add a6, t2, t5
	sraiw t3, t6, 1
	sraiw t2, a6, 1
	blt t4, s0, label52
	j label2699
label49:
	lw t5, 0(t1)
	addw a4, a4, t5
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t5, t2, 31
	add t6, t3, a6
	add a6, t2, t5
	sraiw t3, t6, 1
	sraiw t2, a6, 1
	bge t4, s0, label964
label52:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label76
	andi t5, t2, 1
	bne t5, zero, label49
	j label2692
label76:
	andi t5, t2, 1
	beq t5, zero, label49
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t5, t2, 31
	add t6, t3, a6
	add a6, t2, t5
	sraiw t3, t6, 1
	sraiw t2, a6, 1
	blt t4, s0, label52
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t4, t2, a5
	mv a5, zero
	andi t5, t4, 1
	bne t5, zero, label74
	j label60
label62:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t4, t1, t0
	andi t5, t4, 1
	beq t5, zero, label985
label69:
	lw t4, 0(a5)
	addw t2, t2, t4
	addiw t3, t3, 1
	srliw t5, t1, 31
	srliw t4, t0, 31
	add t6, t1, t5
	add t5, t0, t4
	sraiw t1, t6, 1
	sraiw t0, t5, 1
	bge t3, s0, label994
label72:
	addi a5, a5, 4
	and t4, t1, t0
	andi t5, t4, 1
	bne t5, zero, label69
	addiw t3, t3, 1
	srliw t5, t1, 31
	srliw t4, t0, 31
	add t6, t1, t5
	add t5, t0, t4
	sraiw t1, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label72
	j label2694
label73:
	addi t1, t1, 4
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label74
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label73
	j label62
label74:
	lw t4, 0(t1)
	addiw t3, t3, 1
	srliw t6, t0, 31
	addw a5, a5, t4
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label73
	j label62
label964:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t4, t2, a5
	mv a5, zero
	andi t5, t4, 1
	bne t5, zero, label74
label60:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label73
	j label62
label2699:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t4, t2, a5
	mv a5, zero
	andi t5, t4, 1
	bne t5, zero, label74
	j label60
label941:
	lw a5, 52(sp)
	mv a4, t0
	divw a3, a3, a5
	bne a3, zero, label22
	j label915
label2695:
	lui a5, 8
	addiw a4, a5, -1
	bgt a3, a4, label40
	j label941
label2686:
	bne t1, zero, label934
	j label2894
label928:
	beq t1, zero, label2894
label934:
	mv t0, a1
	mv a5, a4
	bne a4, zero, label80
	mv t0, a4
	j label36
label80:
	mv t1, s1
	mv t4, zero
	mv t3, t0
	mv t2, a5
	mv a1, zero
	andi t5, t0, 1
	beq t5, zero, label1015
label87:
	andi t5, t2, 1
	beq t5, zero, label88
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	blt t4, s0, label91
	j label2702
label1044:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t1, zero
	mulw t2, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label110
	j label1053
label2706:
	mv t0, a1
	mv a5, t1
	bne t1, zero, label80
	j label2707
label110:
	lw t4, 0(a5)
	addw t1, t1, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label1062
label113:
	addi a5, a5, 4
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label110
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label113
	j label2706
label1015:
	andi t5, t2, 1
	bne t5, zero, label88
label2701:
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	blt t4, s0, label91
	j label2709
label88:
	lw t5, 0(t1)
	addw a1, a1, t5
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	bge t4, s0, label1029
label91:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label87
	andi t5, t2, 1
	bne t5, zero, label88
	j label2701
label1029:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t4, t2, a5
	mv a5, zero
	andi t5, t4, 1
	bne t5, zero, label99
	j label1035
label2704:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t1, zero
	mulw t2, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	j label104
label99:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t0, 31
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	bge t3, s0, label1044
label102:
	addi t1, t1, 4
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label99
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t0, 31
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label102
	j label2704
label104:
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label110
	j label1053
label2702:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label99
	j label1035
label1053:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label113
	j label2706
label2709:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t4, t2, a5
	mv a5, zero
	andi t5, t4, 1
	bne t5, zero, label99
label1035:
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t0, 31
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label102
	j label2704
label2707:
	mv a1, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label42
	j label39
label1090:
	mv t0, a3
	mv a5, a4
	bne a4, zero, label179
	mv t0, a4
	j label135
label179:
	mv t1, s1
	mv t4, zero
	mv t3, t0
	mv t2, a5
	mv a3, zero
	andi t5, t0, 1
	bne t5, zero, label186
	andi t5, a5, 1
	bne t5, zero, label188
	j label2727
label1220:
	mv t0, a3
	mv a5, t2
	bne t2, zero, label179
label2732:
	mv a3, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label138
	j label1093
label2727:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label213
	j label2933
label188:
	lw t5, 0(t1)
	addw a3, a3, t5
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	bge t4, s0, label2933
label213:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label186
	andi t5, t2, 1
	bne t5, zero, label188
	j label2727
label2933:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t6, t2, a5
	andi t5, t6, 1
	beq t5, zero, label1194
label198:
	lw t5, 0(t1)
	addw a5, t4, t5
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label2730
label212:
	addi t1, t1, 4
	mv t4, a5
	and t6, t2, t0
	andi t5, t6, 1
	bne t5, zero, label198
	addiw t3, t3, 1
	srliw t6, t0, 31
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label212
label2730:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t4, t1, t0
	andi t5, t4, 1
	bne t5, zero, label208
	li t3, 1
	srliw t5, t1, 31
	srliw t4, t0, 31
	add t6, t1, t5
	add t5, t0, t4
	sraiw t1, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label211
label2731:
	mv t0, a3
	mv a5, t2
	bne t2, zero, label179
	j label2732
label208:
	lw t4, 0(a5)
	addw t2, t2, t4
	addiw t3, t3, 1
	srliw t5, t1, 31
	srliw t4, t0, 31
	add t6, t1, t5
	add t5, t0, t4
	sraiw t1, t6, 1
	sraiw t0, t5, 1
	bge t3, s0, label1220
label211:
	addi a5, a5, 4
	and t4, t1, t0
	andi t5, t4, 1
	bne t5, zero, label208
	addiw t3, t3, 1
	srliw t5, t1, 31
	srliw t4, t0, 31
	add t6, t1, t5
	add t5, t0, t4
	sraiw t1, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label211
	j label2731
label186:
	andi t5, t2, 1
	beq t5, zero, label188
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label213
	j label2933
label1071:
	lui a4, 8
	addiw a2, a4, -1
	ble a0, a2, label2710
label215:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a0, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	mv a2, a3
	subw a0, a4, a5
	bgt a0, zero, label6
	j label217
label2890:
	mv a4, a2
	mv a3, zero
	j label117
label906:
	bne t0, zero, label912
	j label2890
label915:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label121
	j label1071
label217:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv a0, s2
	mv a1, s2
	mv a2, s3
label218:
	ble a0, zero, label433
label222:
	mv a3, s1
	mv t0, zero
	mv a4, a0
	mv t1, s2
	mv a5, zero
	and t3, a0, s2
	andi t2, t3, 1
	bne t2, zero, label229
	j label1246
label2764:
	lw a4, 52(sp)
	mv a2, a3
	divw a0, a0, a4
	j label218
label2776:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label431
	j label2764
label1246:
	addiw t0, t0, 1
	srliw t1, a4, 31
	add t2, a4, t1
	sraiw a4, t2, 1
	blt t0, s0, label232
label2738:
	bne a5, zero, label1260
	j label2940
label229:
	lw t1, 0(a3)
	addw a5, a5, t1
	addiw t0, t0, 1
	srliw t1, a4, 31
	add t2, a4, t1
	sraiw a4, t2, 1
	bge t0, s0, label1254
label232:
	addi a3, a3, 4
	mv t1, zero
	and t3, a4, zero
	andi t2, t3, 1
	bne t2, zero, label229
	addiw t0, t0, 1
	srliw t1, a4, 31
	add t2, a4, t1
	sraiw a4, t2, 1
	blt t0, s0, label232
	j label2738
label2940:
	mv a4, a2
	mv a3, zero
	beq a2, zero, label1419
label337:
	mv a5, s1
	mv t1, zero
	mv t2, zero
	mv t0, a2
	mv t3, s2
	and t5, a2, s2
	andi t4, t5, 1
	bne t4, zero, label344
	j label1424
label2765:
	bne t2, zero, label1437
	j label1436
label344:
	lw t3, 0(a5)
	addw t2, t2, t3
	addiw t1, t1, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	bge t1, s0, label347
label429:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	bne t4, zero, label344
	addiw t1, t1, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t1, s0, label429
	j label2765
label347:
	bne t2, zero, label1437
label1436:
	mv t0, a4
	mv a5, a4
	bne a4, zero, label394
label391:
	lui a5, 8
	addiw a4, a5, -1
	bgt a2, a4, label393
	j label392
label394:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label402
	andi t5, a5, 1
	bne t5, zero, label428
	j label1522
label414:
	addi t1, t1, 4
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label426
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label414
	j label1546
label2779:
	mv t0, a4
	mv a5, t2
	bne t2, zero, label394
	j label2780
label422:
	lw t4, 0(a5)
	addw t2, t2, t4
	addiw t3, t3, 1
	srliw t6, t1, 31
	srliw t5, t0, 31
	add t4, t1, t6
	add t6, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t6, 1
	bge t3, s0, label1564
label425:
	addi a5, a5, 4
	and t5, t1, t0
	andi t4, t5, 1
	bne t4, zero, label422
	addiw t3, t3, 1
	srliw t6, t1, 31
	srliw t5, t0, 31
	add t4, t1, t6
	add t6, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label425
	j label2779
label426:
	lw t4, 0(t1)
	addiw t3, t3, 1
	srliw t5, t2, 31
	addw a5, a5, t4
	add t6, t2, t5
	srliw t4, t0, 31
	sraiw t2, t6, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	blt t3, s0, label414
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t5, t1, t0
	andi t4, t5, 1
	bne t4, zero, label422
	j label1555
label2777:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	j label406
label402:
	andi t5, t2, 1
	beq t5, zero, label428
	j label403
label406:
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label426
	j label412
label427:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label402
	andi t5, t2, 1
	beq t5, zero, label1522
label428:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw a6, t2, 31
	addw a4, a4, t5
	srliw t5, t3, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label427
	j label2777
label403:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label427
	j label2777
label1522:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label427
	j label2777
label412:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label414
label1546:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t5, t1, t0
	andi t4, t5, 1
	bne t4, zero, label422
label1555:
	addiw t3, t3, 1
	srliw t6, t1, 31
	srliw t5, t0, 31
	add t4, t1, t6
	add t6, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label425
	j label2779
label1437:
	mv t0, a3
	mv a5, a4
	bne a4, zero, label351
	mv t0, a4
	j label391
label351:
	mv t1, s1
	mv t4, zero
	mv a3, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label359
	andi t5, a5, 1
	bne t5, zero, label358
	j label2766
label1493:
	mv t0, a3
	mv a5, t1
	bne t1, zero, label351
label2771:
	mv a3, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label394
	j label391
label2766:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label385
	j label2969
label358:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw a6, t2, 31
	addw a3, a3, t5
	srliw t5, t3, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label385
	j label2969
label359:
	andi t5, t2, 1
	beq t5, zero, label358
	j label1451
label385:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label359
	andi t5, t2, 1
	bne t5, zero, label358
	j label2766
label2969:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	andi t6, t5, 1
	bne t6, zero, label370
	mv a5, zero
	li t3, 1
	srliw t6, t0, 31
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label384
	j label2769
label370:
	lw t5, 0(t1)
	addw a5, t4, t5
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label2769
label384:
	addi t1, t1, 4
	mv t4, a5
	and t5, t2, t0
	andi t6, t5, 1
	bne t6, zero, label370
	addiw t3, t3, 1
	srliw t6, t0, 31
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label384
label2769:
	lw t0, 52(sp)
	mv t3, zero
	mv t1, zero
	lui t4, 16
	mulw t2, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label380
	li t3, 1
	srliw t6, t2, 31
	srliw t4, t0, 31
	add t5, t2, t6
	add t6, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t6, 1
	blt t3, s0, label383
label2770:
	mv t0, a3
	mv a5, t1
	bne t1, zero, label351
	j label2771
label380:
	lw t4, 0(a5)
	addw t1, t1, t4
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t4, t0, 31
	add t5, t2, t6
	add t6, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t6, 1
	bge t3, s0, label1493
label383:
	addi a5, a5, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label380
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t4, t0, 31
	add t5, t2, t6
	add t6, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t6, 1
	blt t3, s0, label383
	j label2770
label1451:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label385
	j label2969
label392:
	lw a5, 52(sp)
	mv a4, t0
	divw a2, a2, a5
	bne a2, zero, label337
	j label2775
label393:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a2, a5, t1
	bne a2, zero, label337
	j label2776
label2780:
	lui a5, 8
	addiw a4, a5, -1
	bgt a2, a4, label393
	j label392
label1254:
	beq a5, zero, label2940
label1260:
	mv a4, a1
	mv a3, a2
	mv a1, zero
	beq a2, zero, label1263
label238:
	mv a5, s1
	mv t1, zero
	mv t2, zero
	mv t0, a3
	mv t3, s2
	and t5, a3, s2
	andi t4, t5, 1
	beq t4, zero, label1268
label245:
	lw t3, 0(a5)
	addw t2, t2, t3
	addiw t1, t1, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	bge t1, s0, label1276
label248:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	bne t4, zero, label245
	addiw t1, t1, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t1, s0, label248
	j label2741
label1349:
	lw a5, 52(sp)
	mv a4, t0
	divw a3, a3, a5
	bne a3, zero, label238
	j label1263
label294:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a3, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a3, a5, t1
	bne a3, zero, label238
	j label2753
label2762:
	lui a5, 8
	addiw a4, a5, -1
	bgt a3, a4, label294
	j label1349
label1276:
	beq t2, zero, label2944
label1282:
	mv t0, a1
	mv a5, a4
	bne a4, zero, label253
	mv t0, a4
	beq a4, zero, label293
label296:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label303
	andi t5, a5, 1
	bne t5, zero, label304
	j label2755
label2756:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t6, t2, a5
	andi t5, t6, 1
	bne t5, zero, label316
	j label1387
label2759:
	lw t1, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t2, a5, t1
	mv t1, zero
	mv a5, s1
	j label321
label316:
	lw t5, 0(t1)
	addw a5, t4, t5
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label1396
label319:
	addi t1, t1, 4
	mv t4, a5
	and t6, t2, t0
	andi t5, t6, 1
	bne t5, zero, label316
	addiw t3, t3, 1
	srliw t5, t0, 31
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label319
	j label2759
label321:
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label327
	j label1405
label2761:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label296
	j label2762
label327:
	lw t4, 0(a5)
	addw t1, t1, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label1414
label330:
	addi a5, a5, 4
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label327
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label330
	j label2761
label2755:
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	blt t4, s0, label308
	j label1381
label303:
	andi t5, t2, 1
	bne t5, zero, label1368
label304:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	addw a4, a4, t5
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	bge t4, s0, label2756
label308:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label303
	andi t5, t2, 1
	bne t5, zero, label304
	j label2755
label253:
	mv t1, s1
	mv t4, zero
	mv a1, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	beq t5, zero, label1289
label260:
	andi t5, t2, 1
	beq t5, zero, label261
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	blt t4, s0, label265
	j label2745
label1340:
	mv t0, a1
	mv a5, t1
	bne t1, zero, label253
	j label2751
label2745:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label273
label1313:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label276
label2748:
	lw t0, 52(sp)
	mv t3, zero
	mv t1, zero
	lui t4, 16
	mulw t2, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	j label278
label273:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	bge t3, s0, label1322
label276:
	addi t1, t1, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label273
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label276
	j label2748
label278:
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label284
label1331:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label287
	j label2750
label1322:
	lw t0, 52(sp)
	mv t3, zero
	mv t1, zero
	lui t4, 16
	mulw t2, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label284
	j label1331
label2750:
	mv t0, a1
	mv a5, t1
	bne t1, zero, label253
	j label2751
label284:
	lw t4, 0(a5)
	addw t1, t1, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label1340
label287:
	addi a5, a5, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label284
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label287
	j label2750
label1289:
	andi t5, t2, 1
	bne t5, zero, label261
label2744:
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	blt t4, s0, label265
	j label1307
label261:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	addw a1, a1, t5
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	bge t4, s0, label2745
label265:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label260
	andi t5, t2, 1
	bne t5, zero, label261
	j label2744
label1381:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t6, t0, a5
	mv t0, a5
	andi t5, t6, 1
	bne t5, zero, label316
label1387:
	mv a5, t4
	addiw t3, t3, 1
	srliw t5, t0, 31
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label319
	j label2759
label1396:
	lw t1, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t2, a5, t1
	and t4, t2, t0
	mv t1, zero
	mv a5, s1
	andi t5, t4, 1
	bne t5, zero, label327
label1405:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label330
	j label2761
label1307:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	mv a5, zero
	andi t4, t5, 1
	bne t4, zero, label273
	j label1313
label2944:
	mv t0, a4
	mv a5, a4
	bne a4, zero, label296
label293:
	lui a5, 8
	addiw a4, a5, -1
	bgt a3, a4, label294
	j label1349
label2741:
	bne t2, zero, label1282
	j label2944
label2751:
	mv a1, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label296
	j label293
label2775:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label431
	j label2764
label1263:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label337
	j label1419
label433:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv s4, s3
	bge s3, s0, label1589
label1590:
	mv a2, s3
	mv a1, s2
	mv a0, s4
	bgt s4, zero, label664
label663:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s4, s4, 1
	blt s4, s0, label1590
	j label1589
label664:
	mv a3, s1
	mv a5, zero
	mv t0, zero
	mv a4, a0
	mv t1, s2
	and t3, a0, s2
	andi t2, t3, 1
	bne t2, zero, label874
	li a5, 1
	srliw t1, a0, 31
	add t2, a0, t1
	sraiw a4, t2, 1
	blt a5, s0, label873
	j label673
label777:
	lui a4, 8
	addiw a2, a4, -1
	ble a0, a2, label2132
label778:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a0, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	mv a2, a3
	subw a0, a4, a5
	bgt a0, zero, label664
	j label663
label2132:
	lw a4, 52(sp)
	mv a2, a3
	divw a0, a0, a4
	bgt a0, zero, label664
	j label663
label780:
	mv a5, s1
	mv t2, zero
	mv t0, a2
	mv t3, s2
	mv t1, zero
	and t5, a2, s2
	andi t4, t5, 1
	bne t4, zero, label872
	li t2, 1
	srliw t3, a2, 31
	add t4, a2, t3
	sraiw t0, t4, 1
	blt t2, s0, label871
	j label789
label833:
	lui a5, 8
	addiw a4, a5, -1
	ble a2, a4, label834
label835:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a2, a5, t1
	bne a2, zero, label780
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label778
	j label2132
label2157:
	mv t0, a4
	mv a5, a4
	bne a4, zero, label836
	j label833
label2158:
	mv t0, a3
	mv a5, a4
	bne a4, zero, label793
	j label2161
label871:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	bne t4, zero, label872
	addiw t2, t2, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t2, s0, label871
	j label789
label872:
	lw t3, 0(a5)
	addiw t2, t2, 1
	addw t1, t1, t3
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t2, s0, label871
	bne t1, zero, label2158
	j label2157
label836:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label870
	j label843
label867:
	addi a5, a5, 4
	and t4, t2, t0
	andi t5, t4, 1
	beq t5, zero, label2882
label868:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t5, t0, 31
	addw t1, t1, t4
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label867
	mv t0, a4
	mv a5, t1
	bne t1, zero, label836
	j label2881
label870:
	andi t5, t2, 1
	beq t5, zero, label844
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t5, t2, 31
	add t6, t3, a6
	add a6, t2, t5
	sraiw t3, t6, 1
	sraiw t2, a6, 1
	blt t4, s0, label869
	j label2878
label843:
	andi t5, t2, 1
	bne t5, zero, label844
label2243:
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t5, t2, 31
	add t6, t3, a6
	add a6, t2, t5
	sraiw t3, t6, 1
	sraiw t2, a6, 1
	blt t4, s0, label869
	j label2878
label844:
	lw t5, 0(t1)
	addw a4, a4, t5
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t5, t2, 31
	add t6, t3, a6
	add a6, t2, t5
	sraiw t3, t6, 1
	sraiw t2, a6, 1
	bge t4, s0, label2878
label869:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label870
	andi t5, t2, 1
	bne t5, zero, label844
	j label2243
label2878:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	andi t6, t5, 1
	bne t6, zero, label854
	mv a5, zero
	li t3, 1
	srliw t6, t0, 31
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label857
label2879:
	lw t1, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t2, a5, t1
	mv t1, zero
	mv a5, s1
	j label859
label854:
	lw t5, 0(t1)
	addw a5, t4, t5
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label2266
label857:
	addi t1, t1, 4
	mv t4, a5
	and t5, t2, t0
	andi t6, t5, 1
	bne t6, zero, label854
	addiw t3, t3, 1
	srliw t6, t0, 31
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label857
	j label2879
label859:
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label868
	j label865
label793:
	mv t1, s1
	mv t4, zero
	mv t3, t0
	mv t2, a5
	mv a3, zero
	andi t5, t0, 1
	bne t5, zero, label827
	andi t5, a5, 1
	bne t5, zero, label800
	j label2867
label2206:
	mv t0, a3
	mv a5, t1
	bne t1, zero, label793
	j label2870
label2871:
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t0, 31
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label823
	j label2206
label2867:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label804
	j label2178
label800:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw t6, t2, 31
	addw a3, a3, t5
	srliw t5, t3, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	bge t4, s0, label2868
label804:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label827
	andi t5, t2, 1
	bne t5, zero, label800
	j label2867
label2870:
	mv a3, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label836
	j label833
label823:
	addi a5, a5, 4
	and t4, t2, t0
	andi t5, t4, 1
	beq t5, zero, label2871
label824:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t0, 31
	addw t1, t1, t4
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label823
	mv t0, a3
	mv a5, t1
	bne t1, zero, label793
	j label2870
label827:
	andi t5, t2, 1
	beq t5, zero, label800
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label804
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t4, t2, a5
	mv a5, zero
	andi t5, t4, 1
	bne t5, zero, label826
	j label812
label814:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t1, zero
	mulw t2, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label824
	j label821
label825:
	addi t1, t1, 4
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label826
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label825
	j label814
label826:
	lw t4, 0(t1)
	addiw t3, t3, 1
	srliw t5, t2, 31
	addw a5, a5, t4
	add t6, t2, t5
	srliw t4, t0, 31
	sraiw t2, t6, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	blt t3, s0, label825
	j label814
label2282:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label836
	j label2881
label2882:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label867
	j label2282
label2266:
	lw t1, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t2, a5, t1
	and t4, t2, t0
	mv t1, zero
	mv a5, s1
	andi t5, t4, 1
	bne t5, zero, label868
label865:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label867
	j label2282
label2868:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label826
label812:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label825
	j label814
label821:
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t0, 31
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label823
	j label2206
label2178:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t4, t2, a5
	mv a5, zero
	andi t5, t4, 1
	bne t5, zero, label826
	j label812
label834:
	lw a5, 52(sp)
	mv a4, t0
	divw a2, a2, a5
	bne a2, zero, label780
	j label2876
label2881:
	lui a5, 8
	addiw a4, a5, -1
	bgt a2, a4, label835
	j label834
label789:
	bne t1, zero, label2158
	j label2157
label1968:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label780
	j label777
label873:
	addi a3, a3, 4
	mv t1, zero
	and t3, a4, zero
	andi t2, t3, 1
	bne t2, zero, label874
	addiw a5, a5, 1
	srliw t1, a4, 31
	add t2, a4, t1
	sraiw a4, t2, 1
	blt a5, s0, label873
	j label673
label874:
	lw t2, 0(a3)
	addiw a5, a5, 1
	srliw t1, a4, 31
	addw t0, t0, t2
	add t2, a4, t1
	sraiw a4, t2, 1
	blt a5, s0, label873
	beq t0, zero, label1968
label1969:
	mv a4, a1
	mv a3, a2
	mv a1, zero
	bne a2, zero, label678
	mv a4, a2
	mv a3, zero
	j label777
label678:
	mv a5, s1
	mv t2, zero
	mv t0, a3
	mv t3, s2
	mv t1, zero
	and t4, a3, s2
	andi t5, t4, 1
	bne t5, zero, label685
	li t2, 1
	srliw t3, a3, 31
	add t4, a3, t3
	sraiw t0, t4, 1
	blt t2, s0, label770
	j label2844
label2855:
	lui a5, 8
	addiw a4, a5, -1
	bgt a3, a4, label769
	j label2853
label761:
	addi a5, a5, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label762
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label761
	j label2100
label762:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t6, t0, 31
	addw t1, t1, t4
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label761
	mv t0, a4
	mv a5, t1
	bne t1, zero, label732
	j label2855
label769:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a3, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a3, a5, t1
	bne a3, zero, label678
	mv a4, a2
	mv a3, zero
	bne a2, zero, label780
	j label777
label732:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label740
	andi t5, a5, 1
	bne t5, zero, label766
	j label2061
label2100:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label732
	j label2855
label2854:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	j label744
label740:
	andi t5, t2, 1
	beq t5, zero, label766
	j label741
label744:
	and t6, t2, t0
	andi t5, t6, 1
	bne t5, zero, label764
label2078:
	mv a5, t4
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	bge t3, s0, label752
label763:
	addi t1, t1, 4
	mv t4, a5
	and t6, t2, t0
	andi t5, t6, 1
	beq t5, zero, label2078
label764:
	lw t5, 0(t1)
	addiw t3, t3, 1
	srliw t6, t0, 31
	addw a5, t4, t5
	srliw t5, t2, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label763
	j label752
label765:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label740
	andi t5, t2, 1
	beq t5, zero, label2061
label766:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw a6, t2, 31
	addw a4, a4, t5
	srliw t5, t3, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label765
	j label2854
label741:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label765
	j label2854
label2061:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label765
	j label2854
label752:
	lw t0, 52(sp)
	mv t3, zero
	mv t1, zero
	lui t4, 16
	mulw t2, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label762
	li t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label761
	j label2100
label2844:
	bne t1, zero, label1990
	j label1989
label685:
	lw t3, 0(a5)
	addw t1, t1, t3
	addiw t2, t2, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	bge t2, s0, label688
label770:
	addi a5, a5, 4
	mv t3, zero
	and t4, t0, zero
	andi t5, t4, 1
	bne t5, zero, label685
	addiw t2, t2, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t2, s0, label770
	j label2844
label688:
	beq t1, zero, label1989
label1990:
	mv t0, a1
	mv a5, a4
	bne a4, zero, label692
	mv t0, a4
	j label2053
label692:
	mv t1, s1
	mv t4, zero
	mv t3, t0
	mv t2, a5
	mv a1, zero
	andi t5, t0, 1
	beq t5, zero, label699
label700:
	andi t5, t2, 1
	beq t5, zero, label726
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label725
	j label2845
label2846:
	mv t0, a1
	mv a5, t2
	bne t2, zero, label692
	j label2847
label719:
	lw t4, 0(a5)
	addw t2, t2, t4
	addiw t3, t3, 1
	srliw t5, t1, 31
	srliw t4, t0, 31
	add t6, t1, t5
	add t5, t0, t4
	sraiw t1, t6, 1
	sraiw t0, t5, 1
	bge t3, s0, label2042
label722:
	addi a5, a5, 4
	and t4, t1, t0
	andi t5, t4, 1
	bne t5, zero, label719
	addiw t3, t3, 1
	srliw t5, t1, 31
	srliw t4, t0, 31
	add t6, t1, t5
	add t5, t0, t4
	sraiw t1, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label722
	j label2846
label2845:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t6, t2, a5
	andi t5, t6, 1
	bne t5, zero, label724
	j label2018
label725:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label700
	andi t5, t2, 1
	beq t5, zero, label2001
label726:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw t6, t2, 31
	addw a1, a1, t5
	srliw t5, t3, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label725
	j label2845
label2018:
	mv a5, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label712
label723:
	addi t1, t1, 4
	mv t4, a5
	and t6, t2, t0
	andi t5, t6, 1
	beq t5, zero, label2018
label724:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a5, t4, t5
	srliw t5, t0, 31
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label723
	j label712
label2001:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label725
	j label2845
label712:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t4, t1, t0
	andi t5, t4, 1
	bne t5, zero, label719
	li t3, 1
	srliw t5, t1, 31
	srliw t4, t0, 31
	add t6, t1, t5
	add t5, t0, t4
	sraiw t1, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label722
	j label2846
label699:
	andi t5, t2, 1
	bne t5, zero, label726
	j label2001
label2853:
	lw a5, 52(sp)
	mv a4, t0
	divw a3, a3, a5
	bne a3, zero, label678
	j label2862
label1989:
	mv t0, a4
	mv a5, a4
	bne a4, zero, label732
label2053:
	lui a5, 8
	addiw a4, a5, -1
	bgt a3, a4, label769
	j label2853
label2847:
	mv a1, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label732
	j label2053
label673:
	bne t0, zero, label1969
	j label1968
label2876:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label778
	j label2132
label2862:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label780
	j label777
label2161:
	mv a3, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label836
	j label833
label1589:
	mv a0, s1
	mv a1, zero
label437:
	bge a1, s0, label1593
	mv a4, s3
	mv a3, s2
	mv a2, a1
	ble a1, zero, label657
label446:
	mv a5, s1
	mv t1, zero
	mv t2, zero
	mv t0, a2
	mv t3, s2
	and t5, a2, s2
	andi t4, t5, 1
	bne t4, zero, label656
	li t1, 1
	srliw t4, a2, 31
	add t3, a2, t4
	sraiw t0, t3, 1
	blt t1, s0, label655
	j label455
label463:
	lw t0, 52(sp)
	mv a4, a5
	divw a2, a2, t0
	bgt a2, zero, label446
	j label657
label464:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw t0, a4, t2
	mv a4, a5
	subw a2, t0, t1
	bgt a2, zero, label446
	j label657
label2987:
	mv t2, t0
	mv t1, t0
label479:
	bne t1, zero, label482
label1652:
	lui t1, 8
	addiw t0, t1, -1
	ble a4, t0, label2796
label519:
	lw t3, 52(sp)
	lui t4, 16
	divw t0, a4, t3
	lw t3, 108(sp)
	addw t1, t0, t4
	mv t0, t2
	subw a4, t1, t3
	bne a4, zero, label465
	lui t0, 8
	addiw a4, t0, -1
	bgt a2, a4, label464
	j label463
label482:
	mv t3, s1
	mv t6, zero
	mv t0, zero
	mv t5, t2
	mv t4, t1
	andi a6, t2, 1
	bne a6, zero, label489
	andi a6, t1, 1
	bne a6, zero, label491
	j label2797
label1704:
	mv t2, t0
	mv t1, t3
	bne t3, zero, label482
	j label2802
label2803:
	addiw t5, t5, 1
	srliw a6, t4, 31
	srliw t6, t2, 31
	add a7, t4, a6
	add a6, t2, t6
	sraiw t4, a7, 1
	sraiw t2, a6, 1
	blt t5, s0, label514
	j label1704
label2797:
	addiw t6, t6, 1
	srliw a7, t5, 31
	add a6, t5, a7
	srliw a7, t4, 31
	sraiw t5, a6, 1
	add a6, t4, a7
	sraiw t4, a6, 1
	blt t6, s0, label494
	j label2991
label491:
	lw a6, 0(t3)
	addw t0, t0, a6
	addiw t6, t6, 1
	srliw a7, t5, 31
	add a6, t5, a7
	srliw a7, t4, 31
	sraiw t5, a6, 1
	add a6, t4, a7
	sraiw t4, a6, 1
	bge t6, s0, label1674
label494:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label489
	andi a6, t4, 1
	bne a6, zero, label491
	j label2797
label1674:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a6, t2, t1
	mv t2, t1
	andi a7, a6, 1
	beq a7, zero, label1680
label502:
	lw a6, 0(t3)
	addw t1, t6, a6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a6, t2, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	bge t5, s0, label2801
label516:
	addi t3, t3, 4
	mv t6, t1
	and a6, t4, t2
	andi a7, a6, 1
	bne a7, zero, label502
	addiw t5, t5, 1
	srliw a6, t2, 31
	srliw t6, t4, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label516
label2801:
	lw t2, 52(sp)
	mv t5, zero
	lui t6, 16
	mv t3, zero
	mulw t4, t1, t2
	addiw t2, t6, -1
	mv t1, s1
	and a6, t4, t2
	andi t6, a6, 1
	bne t6, zero, label515
	j label512
label2802:
	lui t1, 8
	addiw t0, t1, -1
	bgt a4, t0, label519
	j label2796
label514:
	addi t1, t1, 4
	and a6, t4, t2
	andi t6, a6, 1
	beq t6, zero, label2803
label515:
	lw t6, 0(t1)
	addiw t5, t5, 1
	srliw a6, t4, 31
	addw t3, t3, t6
	add a7, t4, a6
	srliw t6, t2, 31
	sraiw t4, a7, 1
	add a6, t2, t6
	sraiw t2, a6, 1
	blt t5, s0, label514
	mv t2, t0
	mv t1, t3
	bne t3, zero, label482
	j label2802
label2991:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	mv t2, t1
	j label496
label489:
	andi a6, t4, 1
	beq a6, zero, label491
	addiw t6, t6, 1
	srliw a7, t5, 31
	add a6, t5, a7
	srliw a7, t4, 31
	sraiw t5, a6, 1
	add a6, t4, a7
	sraiw t4, a6, 1
	blt t6, s0, label494
	j label2991
label496:
	and a6, t4, t2
	andi a7, a6, 1
	bne a7, zero, label502
label1680:
	mv t1, t6
	addiw t5, t5, 1
	srliw a6, t2, 31
	srliw t6, t4, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label516
	j label2801
label512:
	addiw t5, t5, 1
	srliw a6, t4, 31
	srliw t6, t2, 31
	add a7, t4, a6
	add a6, t2, t6
	sraiw t4, a7, 1
	sraiw t2, a6, 1
	blt t5, s0, label514
	j label1704
label465:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, a4
	mv t5, s2
	and t6, a4, s2
	andi a6, t6, 1
	bne a6, zero, label472
	li t3, 1
	srliw t5, a4, 31
	add t6, a4, t5
	sraiw t2, t6, 1
	blt t3, s0, label475
	j label2792
label2796:
	lw t1, 52(sp)
	mv t0, t2
	divw a4, a4, t1
	bne a4, zero, label465
	j label2806
label2792:
	bne t4, zero, label1649
	j label2987
label472:
	lw t5, 0(t1)
	addw t4, t4, t5
	addiw t3, t3, 1
	srliw t5, t2, 31
	add t6, t2, t5
	sraiw t2, t6, 1
	bge t3, s0, label1643
label475:
	addi t1, t1, 4
	mv t5, zero
	and t6, t2, zero
	andi a6, t6, 1
	bne a6, zero, label472
	addiw t3, t3, 1
	srliw t5, t2, 31
	add t6, t2, t5
	sraiw t2, t6, 1
	blt t3, s0, label475
	j label2792
label1643:
	beq t4, zero, label2987
label1649:
	mv t2, a5
	mv t1, t0
	bne t0, zero, label523
	mv t2, t0
	j label479
label523:
	mv t3, s1
	mv t6, zero
	mv a5, zero
	mv t5, t2
	mv t4, t1
	andi a6, t2, 1
	bne a6, zero, label557
	andi a6, t1, 1
	bne a6, zero, label530
	j label2808
label1771:
	mv t2, a5
	mv t1, t3
	bne t3, zero, label523
	j label2811
label2812:
	addiw t5, t5, 1
	srliw a7, t4, 31
	srliw a6, t2, 31
	add t6, t4, a7
	add a7, t2, a6
	sraiw t4, t6, 1
	sraiw t2, a7, 1
	blt t5, s0, label553
	j label1771
label530:
	lw a6, 0(t3)
	addiw t6, t6, 1
	addw a5, a5, a6
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	bge t6, s0, label3001
label556:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label557
	andi a6, t4, 1
	bne a6, zero, label530
	j label2808
label557:
	andi a6, t4, 1
	beq a6, zero, label530
	addiw t6, t6, 1
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	blt t6, s0, label556
	j label3001
label2811:
	mv a5, t2
	mv t1, t0
	mv t2, t0
	bne t0, zero, label482
	j label1652
label553:
	addi t1, t1, 4
	and t6, t4, t2
	andi a6, t6, 1
	beq a6, zero, label2812
label554:
	lw t6, 0(t1)
	addiw t5, t5, 1
	srliw a7, t4, 31
	srliw a6, t2, 31
	addw t3, t3, t6
	add t6, t4, a7
	add a7, t2, a6
	sraiw t4, t6, 1
	sraiw t2, a7, 1
	blt t5, s0, label553
	mv t2, a5
	mv t1, t3
	bne t3, zero, label523
	j label2811
label2808:
	addiw t6, t6, 1
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	blt t6, s0, label556
label3001:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	mv t2, t1
	and a7, t4, t1
	andi a6, a7, 1
	bne a6, zero, label555
label1748:
	mv t1, t6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t2, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	bge t5, s0, label1755
label543:
	addi t3, t3, 4
	mv t6, t1
	and a7, t4, t2
	andi a6, a7, 1
	bne a6, zero, label555
	j label1748
label551:
	addiw t5, t5, 1
	srliw a7, t4, 31
	srliw a6, t2, 31
	add t6, t4, a7
	add a7, t2, a6
	sraiw t4, t6, 1
	sraiw t2, a7, 1
	blt t5, s0, label553
	j label1771
label555:
	lw a6, 0(t3)
	addiw t5, t5, 1
	srliw a7, t2, 31
	addw t1, t6, a6
	srliw t6, t4, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label543
	lw t3, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t2, t6, -1
	mulw t4, t1, t3
	and t6, t4, t2
	mv t3, zero
	mv t1, s1
	andi a6, t6, 1
	bne a6, zero, label554
	j label551
label1755:
	lw t3, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t2, t6, -1
	mulw t4, t1, t3
	mv t3, zero
	and t6, t4, t2
	mv t1, s1
	andi a6, t6, 1
	bne a6, zero, label554
	j label551
label1612:
	mv t0, a4
	mv a5, zero
	bne a4, zero, label465
	j label462
label1613:
	mv t0, a3
	mv a5, a4
	mv a3, zero
	bne a4, zero, label562
	j label2789
label655:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	beq t4, zero, label2841
label656:
	lw t4, 0(a5)
	addiw t1, t1, 1
	addw t2, t2, t4
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t1, s0, label655
	bne t2, zero, label1613
	j label1612
label562:
	mv t1, s1
	mv t4, zero
	mv t2, a5
	mv t5, s2
	mv t3, zero
	and a6, a5, s2
	andi t6, a6, 1
	bne t6, zero, label654
	j label569
label2817:
	mv t2, t0
	mv t1, t0
	j label613
label571:
	addi t1, t1, 4
	mv t5, zero
	and a6, t2, zero
	andi t6, a6, 1
	bne t6, zero, label654
	j label2818
label613:
	bne t1, zero, label616
	j label1866
label2828:
	lw t1, 52(sp)
	mv t0, t2
	divw a5, a5, t1
	bne a5, zero, label562
	j label2838
label654:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw t6, t2, 31
	addw t3, t3, t5
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t4, s0, label571
	bne t3, zero, label1803
	j label2817
label616:
	mv t3, s1
	mv t6, zero
	mv t5, t2
	mv t4, t1
	mv t0, zero
	andi a6, t2, 1
	bne a6, zero, label650
	andi a6, t1, 1
	bne a6, zero, label623
	j label2829
label1914:
	mv t2, t0
	mv t1, t3
	bne t3, zero, label616
	j label2834
label623:
	lw a6, 0(t3)
	addiw t6, t6, 1
	srliw a7, t4, 31
	addw t0, t0, a6
	srliw a6, t5, 31
	add s4, t5, a6
	add a6, t4, a7
	sraiw t5, s4, 1
	sraiw t4, a6, 1
	bge t6, s0, label2830
label627:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label650
	j label2831
label1889:
	mv t1, t6
	addiw t5, t5, 1
	srliw a7, t4, 31
	srliw t6, t2, 31
	add a6, t4, a7
	add a7, t2, t6
	sraiw t4, a6, 1
	sraiw t2, a7, 1
	blt t5, s0, label638
	j label2832
label650:
	andi a6, t4, 1
	beq a6, zero, label623
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw a7, t4, 31
	add s4, t5, a6
	add a6, t4, a7
	sraiw t5, s4, 1
	sraiw t4, a6, 1
	blt t6, s0, label627
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a6, t2, t1
	mv t2, t1
	andi a7, a6, 1
	bne a7, zero, label635
	j label1889
label2830:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	mv t2, t1
	and a6, t4, t1
	andi a7, a6, 1
	bne a7, zero, label635
	j label1889
label2832:
	lw t3, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t2, t6, -1
	mulw t4, t1, t3
	mv t3, zero
	mv t1, s1
	j label640
label635:
	lw a6, 0(t3)
	addw t1, t6, a6
	addiw t5, t5, 1
	srliw a7, t4, 31
	srliw t6, t2, 31
	add a6, t4, a7
	add a7, t2, t6
	sraiw t4, a6, 1
	sraiw t2, a7, 1
	bge t5, s0, label1898
label638:
	addi t3, t3, 4
	mv t6, t1
	and a6, t4, t2
	andi a7, a6, 1
	bne a7, zero, label635
	addiw t5, t5, 1
	srliw a7, t4, 31
	srliw t6, t2, 31
	add a6, t4, a7
	add a7, t2, t6
	sraiw t4, a6, 1
	sraiw t2, a7, 1
	blt t5, s0, label638
	j label2832
label640:
	and t6, t4, t2
	andi a6, t6, 1
	bne a6, zero, label649
label646:
	addiw t5, t5, 1
	srliw a6, t4, 31
	srliw t6, t2, 31
	add a7, t4, a6
	add a6, t2, t6
	sraiw t4, a7, 1
	sraiw t2, a6, 1
	blt t5, s0, label648
	j label1914
label2834:
	lui t1, 8
	addiw t0, t1, -1
	bgt a5, t0, label653
	j label2828
label648:
	addi t1, t1, 4
	and t6, t4, t2
	andi a6, t6, 1
	bne a6, zero, label649
	addiw t5, t5, 1
	srliw a6, t4, 31
	srliw t6, t2, 31
	add a7, t4, a6
	add a6, t2, t6
	sraiw t4, a7, 1
	sraiw t2, a6, 1
	blt t5, s0, label648
	j label1914
label649:
	lw t6, 0(t1)
	addiw t5, t5, 1
	srliw a6, t4, 31
	addw t3, t3, t6
	add a7, t4, a6
	srliw t6, t2, 31
	sraiw t4, a7, 1
	add a6, t2, t6
	sraiw t2, a6, 1
	blt t5, s0, label648
	mv t2, t0
	mv t1, t3
	bne t3, zero, label616
	j label2834
label2829:
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw a7, t4, 31
	add s4, t5, a6
	add a6, t4, a7
	sraiw t5, s4, 1
	sraiw t4, a6, 1
	blt t6, s0, label627
	j label1883
label2831:
	andi a6, t4, 1
	bne a6, zero, label623
	j label2829
label1883:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a6, t2, t1
	mv t2, t1
	andi a7, a6, 1
	bne a7, zero, label635
	j label1889
label1898:
	lw t3, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t2, t6, -1
	mulw t4, t1, t3
	and t6, t4, t2
	mv t3, zero
	mv t1, s1
	andi a6, t6, 1
	bne a6, zero, label649
	j label646
label569:
	addiw t4, t4, 1
	srliw t6, t2, 31
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t4, s0, label571
	j label1797
label1803:
	mv t2, a3
	mv t1, t0
	bne t0, zero, label576
	mv t2, t0
	j label1866
label576:
	mv t3, s1
	mv t6, zero
	mv a3, zero
	mv t5, t2
	mv t4, t1
	andi a6, t2, 1
	bne a6, zero, label583
	andi a6, t1, 1
	bne a6, zero, label610
	j label2819
label2822:
	mv a3, t2
	mv t1, t0
	mv t2, t0
	bne t0, zero, label616
	j label1866
label606:
	addi t1, t1, 4
	and a6, t4, t2
	andi t6, a6, 1
	bne t6, zero, label607
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t2, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label606
	j label1852
label607:
	lw t6, 0(t1)
	addiw t5, t5, 1
	srliw a7, t2, 31
	addw t3, t3, t6
	srliw t6, t4, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label606
	mv t2, a3
	mv t1, t3
	bne t3, zero, label576
	j label2822
label583:
	andi a6, t4, 1
	beq a6, zero, label610
	j label584
label586:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label583
	andi a6, t4, 1
	bne a6, zero, label610
	j label2819
label1828:
	mv t1, t6
	addiw t5, t5, 1
	srliw a7, t2, 31
	srliw t6, t4, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label608
	j label2821
label594:
	lw a6, 0(t3)
	addw t1, t6, a6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t2, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	bge t5, s0, label2821
label608:
	addi t3, t3, 4
	mv t6, t1
	and a7, t4, t2
	andi a6, a7, 1
	bne a6, zero, label594
	addiw t5, t5, 1
	srliw a7, t2, 31
	srliw t6, t4, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label608
	j label2821
label610:
	lw a6, 0(t3)
	addiw t6, t6, 1
	srliw a7, t4, 31
	addw a3, a3, a6
	srliw a6, t5, 31
	add s4, t5, a6
	add a6, t4, a7
	sraiw t5, s4, 1
	sraiw t4, a6, 1
	blt t6, s0, label586
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label594
	j label1828
label584:
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw a7, t4, 31
	add s4, t5, a6
	add a6, t4, a7
	sraiw t5, s4, 1
	sraiw t4, a6, 1
	blt t6, s0, label586
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label594
	j label1828
label2819:
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw a7, t4, 31
	add s4, t5, a6
	add a6, t4, a7
	sraiw t5, s4, 1
	sraiw t4, a6, 1
	blt t6, s0, label586
	j label2826
label2821:
	lw t2, 52(sp)
	mv t5, zero
	lui t6, 16
	mv t3, zero
	mulw t4, t1, t2
	addiw t2, t6, -1
	mv t1, s1
	and a6, t4, t2
	andi t6, a6, 1
	bne t6, zero, label607
	li t5, 1
	srliw t6, t4, 31
	srliw a7, t2, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label606
label1852:
	mv t2, a3
	mv t1, t3
	bne t3, zero, label576
	j label2822
label2826:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label594
	j label1828
label1797:
	bne t3, zero, label1803
	j label2817
label2818:
	addiw t4, t4, 1
	srliw t6, t2, 31
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t4, s0, label571
	j label1797
label2806:
	lui t0, 8
	addiw a4, t0, -1
	bgt a2, a4, label464
	j label463
label455:
	bne t2, zero, label1613
	j label1612
label2841:
	addiw t1, t1, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t1, s0, label655
	j label455
label1866:
	lui t1, 8
	addiw t0, t1, -1
	ble a5, t0, label2828
label653:
	lw t3, 52(sp)
	lui t4, 16
	divw t0, a5, t3
	lw t3, 108(sp)
	addw t1, t0, t4
	mv t0, t2
	subw a5, t1, t3
	bne a5, zero, label562
	mv t0, a4
	mv a5, zero
	bne a4, zero, label465
	j label462
label2838:
	mv t0, a4
	mv a5, zero
	bne a4, zero, label465
	j label462
label440:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s0, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 112
	ret
label657:
	lw a2, 0(a0)
	beq a3, a2, label1946
	mv a0, s2
	j label440
label2789:
	mv t0, a4
	mv a5, zero
	bne a4, zero, label465
label462:
	lui t0, 8
	addiw a4, t0, -1
	bgt a2, a4, label464
	j label463
label1419:
	lui a4, 8
	addiw a2, a4, -1
	ble a0, a2, label2764
label431:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a0, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	mv a2, a3
	subw a0, a4, a5
	bgt a0, zero, label222
	j label433
label2753:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label337
	j label1419
label920:
	addiw t2, t2, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t2, s0, label32
	j label2686
label1946:
	addiw a1, a1, 1
	addi a0, a0, 4
	j label437
label2042:
	mv t0, a1
	mv a5, t2
	bne t2, zero, label692
	j label2847
label1593:
	mv a0, zero
	j label440
label985:
	addiw t3, t3, 1
	srliw t5, t1, 31
	srliw t4, t0, 31
	add t6, t1, t5
	add t5, t0, t4
	sraiw t1, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label72
	j label2694
label994:
	mv t0, a4
	mv a5, t2
	bne t2, zero, label42
	j label2695
label1368:
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	blt t4, s0, label308
	j label2756
label1268:
	addiw t1, t1, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t1, s0, label248
	j label2741
label1414:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label296
	j label2762
label1564:
	mv t0, a4
	mv a5, t2
	bne t2, zero, label394
	j label2780
label1194:
	mv a5, t4
	addiw t3, t3, 1
	srliw t6, t0, 31
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label212
	j label2730
label898:
	addiw a5, a5, 1
	srliw t1, a4, 31
	add t2, a4, t1
	sraiw a4, t2, 1
	blt a5, s0, label16
	j label2683
label1062:
	mv t0, a1
	mv a5, t1
	bne t1, zero, label80
	j label2707
label1144:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label138
	j label2722
label1424:
	addiw t1, t1, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t1, s0, label429
	j label2765
