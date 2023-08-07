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
	li s2, 1
	sd s3, 24(sp)
	li s3, 2
	sd s0, 32(sp)
	li s0, 16
	sd s4, 40(sp)
	sd a1, 48(sp)
	slli a1, a0, 2
	sd a0, 56(sp)
	slli a2, a1, 2
	sd a1, 64(sp)
	slli a0, a2, 2
	lui a1, 1
	slli a3, a0, 2
	sd a2, 72(sp)
	sd a0, 80(sp)
	lui a0, 2
	sd a3, 88(sp)
	slli a2, a0, 32
	lui a0, 4
	add.uw a3, a1, a2
	lui a2, 8
	sd a3, 96(sp)
	slli a1, a2, 32
	mv a2, s3
	add.uw a3, a0, a1
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
	li a5, 1
	srliw t2, a0, 31
	add t1, a0, t2
	sraiw a4, t1, 1
	blt a5, s0, label16
	j label2683
label2687:
	lw a4, 52(sp)
	mv a2, a3
	divw a0, a0, a4
	j label2
label2683:
	bne t0, zero, label912
	j label2898
label13:
	lw t1, 0(a3)
	addw t0, t0, t1
	addiw a5, a5, 1
	srliw t2, a4, 31
	add t1, a4, t2
	sraiw a4, t1, 1
	bge a5, s0, label906
label16:
	addi a3, a3, 4
	mv t1, zero
	and t2, a4, zero
	andi t3, t2, 1
	bne t3, zero, label13
	addiw a5, a5, 1
	srliw t2, a4, 31
	add t1, a4, t2
	sraiw a4, t1, 1
	blt a5, s0, label16
	j label2683
label2898:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label24
label915:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label118
	j label2687
label24:
	mv a5, s1
	mv t2, zero
	mv t0, a2
	mv t3, s2
	mv t1, zero
	and t4, a2, s2
	andi t5, t4, 1
	beq t5, zero, label920
label31:
	lw t3, 0(a5)
	addw t1, t1, t3
	addiw t2, t2, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	bge t2, s0, label928
label34:
	addi a5, a5, 4
	mv t3, zero
	and t4, t0, zero
	andi t5, t4, 1
	bne t5, zero, label31
	addiw t2, t2, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t2, s0, label34
	j label2688
label80:
	lw a5, 52(sp)
	mv a4, t0
	divw a2, a2, a5
	bne a2, zero, label24
	j label2700
label81:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a2, a5, t1
	bne a2, zero, label24
	j label2701
label2707:
	lui a5, 8
	addiw a4, a5, -1
	bgt a2, a4, label81
	j label80
label2901:
	mv t0, a4
	mv a5, a4
	j label76
label928:
	bne t1, zero, label934
	j label2901
label76:
	bne a5, zero, label82
label79:
	lui a5, 8
	addiw a4, a5, -1
	bgt a2, a4, label81
	j label80
label82:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label89
	andi t5, a5, 1
	bne t5, zero, label90
	j label2702
label2705:
	lw t0, 52(sp)
	mv t3, zero
	mv t1, zero
	lui t5, 16
	mulw t2, a5, t0
	addiw t0, t5, -1
	mv a5, s1
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label111
	j label1052
label2706:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label82
	j label2707
label111:
	lw t4, 0(a5)
	addw t1, t1, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label1061
label114:
	addi a5, a5, 4
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label111
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label114
	j label2706
label2702:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label93
	j label2710
label89:
	andi t5, t2, 1
	bne t5, zero, label1020
label90:
	lw t5, 0(t1)
	addw a4, a4, t5
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	bge t4, s0, label1029
label93:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label89
	andi t5, t2, 1
	bne t5, zero, label90
	j label2702
label1029:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	mv a5, zero
	andi t4, t5, 1
	beq t4, zero, label1035
label101:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	bge t3, s0, label2705
label115:
	addi t1, t1, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label101
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label115
	j label2705
label2710:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	mv a5, zero
	andi t4, t5, 1
	bne t4, zero, label101
	j label1035
label1020:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label93
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label101
label1035:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label115
	j label2705
label934:
	mv t0, a3
	mv a5, a4
	bne a4, zero, label39
	mv t0, a4
	j label79
label39:
	mv t1, s1
	mv t4, zero
	mv t3, t0
	mv t2, a5
	mv a3, zero
	andi t5, t0, 1
	beq t5, zero, label941
label46:
	andi t5, t2, 1
	beq t5, zero, label73
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label50
	j label2692
label985:
	mv t0, a3
	mv a5, t1
	bne t1, zero, label39
	j label2694
label2695:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label69
	j label985
label2694:
	mv a3, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label82
	j label79
label69:
	addi a5, a5, 4
	and t5, t2, t0
	andi t4, t5, 1
	beq t4, zero, label2695
label70:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	addw t1, t1, t4
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label69
	mv t0, a3
	mv a5, t1
	bne t1, zero, label39
	j label2694
label50:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label46
	andi t5, t2, 1
	bne t5, zero, label73
	j label2691
label60:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t1, zero
	mulw t2, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label70
	j label67
label71:
	addi t1, t1, 4
	mv t4, a5
	and t5, t2, t0
	andi t6, t5, 1
	beq t6, zero, label2906
label72:
	lw t5, 0(t1)
	addiw t3, t3, 1
	srliw t6, t0, 31
	addw a5, t4, t5
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label71
	j label60
label73:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw t6, t2, 31
	addw a3, a3, t5
	srliw t5, t3, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label50
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t5, t0, a5
	mv t0, a5
	andi t6, t5, 1
	bne t6, zero, label72
label2906:
	mv a5, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label71
	j label60
label2691:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label50
	j label957
label67:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label69
	j label985
label957:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t5, t0, a5
	mv t0, a5
	andi t6, t5, 1
	bne t6, zero, label72
	j label2906
label2692:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	andi t6, t5, 1
	bne t6, zero, label72
	j label2906
label2688:
	bne t1, zero, label934
	j label2901
label906:
	beq t0, zero, label2898
label912:
	mv a4, a1
	mv a3, a2
	mv a1, zero
	beq a2, zero, label2898
label124:
	mv a5, s1
	mv t2, zero
	mv t0, a3
	mv t3, s2
	mv t1, zero
	and t5, a3, s2
	andi t4, t5, 1
	bne t4, zero, label131
	li t2, 1
	srliw t3, a3, 31
	add t4, a3, t3
	sraiw t0, t4, 1
	blt t2, s0, label134
	j label2713
label2720:
	lui a5, 8
	addiw a4, a5, -1
	bgt a3, a4, label177
	j label2717
label171:
	addi a5, a5, 4
	and t4, t2, t0
	andi t5, t4, 1
	beq t5, zero, label2721
label172:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t5, t0, 31
	addw t1, t1, t4
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label171
	mv t0, a4
	mv a5, t1
	bne t1, zero, label141
	j label2720
label177:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a3, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a3, a5, t1
	bne a3, zero, label124
	mv a4, a2
	mv a3, zero
	bne a2, zero, label24
	j label915
label141:
	mv t1, s1
	mv t4, zero
	mv t3, t0
	mv t2, a5
	mv a4, zero
	andi t5, t0, 1
	bne t5, zero, label175
	andi t5, a5, 1
	bne t5, zero, label174
	j label149
label1152:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label141
	j label2720
label2721:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label171
	j label1152
label151:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label175
	j label2718
label174:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw a6, t2, 31
	addw a4, a4, t5
	srliw t5, t3, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label151
	j label2724
label175:
	andi t5, t2, 1
	beq t5, zero, label174
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label151
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t4, t2, a5
	mv a5, zero
	andi t5, t4, 1
	bne t5, zero, label159
label1128:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label173
	j label2719
label159:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	bge t3, s0, label2719
label173:
	addi t1, t1, 4
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label159
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label173
	j label2719
label2724:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t4, t2, a5
	mv a5, zero
	andi t5, t4, 1
	bne t5, zero, label159
	j label1128
label149:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label151
	j label1122
label2718:
	andi t5, t2, 1
	bne t5, zero, label174
	j label149
label2719:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t1, zero
	mulw t2, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label172
	li t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label171
	j label1152
label1122:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t4, t2, a5
	mv a5, zero
	andi t5, t4, 1
	bne t5, zero, label159
	j label1128
label2713:
	bne t1, zero, label1104
	j label2924
label131:
	lw t3, 0(a5)
	addw t1, t1, t3
	addiw t2, t2, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	bge t2, s0, label1098
label134:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	bne t4, zero, label131
	addiw t2, t2, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t2, s0, label134
	j label2713
label120:
	bne a3, zero, label124
	j label1085
label2717:
	lw a5, 52(sp)
	mv a4, t0
	divw a3, a3, a5
	j label120
label2924:
	mv t0, a4
	mv a5, a4
	j label138
label1098:
	bne t1, zero, label1104
	j label2924
label138:
	bne a5, zero, label141
label1107:
	lui a5, 8
	addiw a4, a5, -1
	bgt a3, a4, label177
	j label2717
label1104:
	mv t0, a1
	mv a5, a4
	bne a4, zero, label182
	mv t0, a4
	j label138
label182:
	mv t1, s1
	mv t4, zero
	mv t3, t0
	mv t2, a5
	mv a1, zero
	andi t5, t0, 1
	beq t5, zero, label1185
label189:
	andi t5, t2, 1
	beq t5, zero, label190
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label193
	j label2729
label1229:
	mv t0, a1
	mv a5, t2
	bne t2, zero, label182
	j label2732
label1185:
	andi t5, t2, 1
	bne t5, zero, label190
label2728:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label193
	j label2736
label190:
	lw t5, 0(t1)
	addw a1, a1, t5
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	bge t4, s0, label1199
label193:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label189
	andi t5, t2, 1
	bne t5, zero, label190
	j label2728
label2736:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	mv a5, zero
	andi t4, t5, 1
	bne t4, zero, label215
	j label201
label203:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t4, t1, t0
	andi t5, t4, 1
	bne t5, zero, label210
	li t3, 1
	srliw t4, t1, 31
	srliw t5, t0, 31
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label213
	j label2731
label214:
	addi t1, t1, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label215
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t4, t0, 31
	add t5, t2, t6
	add t6, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t6, 1
	blt t3, s0, label214
	j label203
label215:
	lw t4, 0(t1)
	addiw t3, t3, 1
	srliw t6, t2, 31
	addw a5, a5, t4
	add t5, t2, t6
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t6, t0, t4
	sraiw t0, t6, 1
	blt t3, s0, label214
	j label203
label2731:
	mv t0, a1
	mv a5, t2
	bne t2, zero, label182
	j label2732
label210:
	lw t4, 0(a5)
	addw t2, t2, t4
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t5, t0, 31
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label1229
label213:
	addi a5, a5, 4
	and t4, t1, t0
	andi t5, t4, 1
	bne t5, zero, label210
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t5, t0, 31
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label213
	j label2731
label2729:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label215
	j label201
label1199:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	mv a5, zero
	andi t4, t5, 1
	bne t4, zero, label215
label201:
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t4, t0, 31
	add t5, t2, t6
	add t6, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t6, 1
	blt t3, s0, label214
	j label203
label2732:
	mv a1, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label141
	j label1107
label2701:
	lui a4, 8
	addiw a2, a4, -1
	ble a0, a2, label2687
label118:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a0, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	mv a2, a3
	subw a0, a4, a5
	bgt a0, zero, label6
	j label217
label2700:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label118
	j label2687
label217:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv a0, s2
	mv a1, s2
	mv a2, s3
	ble s2, zero, label433
label222:
	mv a3, s1
	mv t0, zero
	mv a4, a0
	mv t1, s2
	mv a5, zero
	and t2, a0, s2
	andi t3, t2, 1
	bne t3, zero, label229
	li t0, 1
	srliw t2, a0, 31
	add t1, a0, t2
	sraiw a4, t1, 1
	blt t0, s0, label232
	j label2737
label2741:
	lw a4, 52(sp)
	mv a2, a3
	divw a0, a0, a4
	bgt a0, zero, label222
	j label433
label2950:
	mv t0, a4
	mv a5, a4
	j label254
label1276:
	bne t2, zero, label1282
	j label2950
label254:
	bne a5, zero, label257
label1285:
	lui a5, 8
	addiw a4, a5, -1
	ble a2, a4, label2746
label293:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a2, a5, t1
	bne a2, zero, label240
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label335
	j label2741
label236:
	beq a2, zero, label1263
label240:
	mv a5, s1
	mv t1, zero
	mv t2, zero
	mv t0, a2
	mv t3, s2
	and t5, a2, s2
	andi t4, t5, 1
	beq t4, zero, label1268
label247:
	lw t3, 0(a5)
	addw t2, t2, t3
	addiw t1, t1, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	bge t1, s0, label1276
label250:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	bne t4, zero, label247
	addiw t1, t1, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t1, s0, label250
	j label2742
label2746:
	lw a5, 52(sp)
	mv a4, t0
	divw a2, a2, a5
	j label236
label257:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label291
	andi t5, a5, 1
	bne t5, zero, label289
	j label2747
label1326:
	mv t0, a4
	mv a5, t2
	bne t2, zero, label257
label2750:
	lui a5, 8
	addiw a4, a5, -1
	bgt a2, a4, label293
	j label2746
label288:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label291
	j label2753
label289:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw t6, t2, 31
	addw a4, a4, t5
	srliw t5, t3, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label288
	j label2953
label291:
	andi t5, t2, 1
	beq t5, zero, label289
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label288
label2953:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label287
	j label273
label275:
	addi t1, t1, 4
	and t5, t2, t0
	andi t4, t5, 1
	beq t4, zero, label2748
label287:
	lw t4, 0(t1)
	addiw t3, t3, 1
	srliw t6, t0, 31
	addw a5, a5, t4
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label275
	j label2752
label1317:
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t5, t0, 31
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label286
label2749:
	mv t0, a4
	mv a5, t2
	bne t2, zero, label257
	j label2750
label283:
	lw t4, 0(a5)
	addw t2, t2, t4
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t5, t0, 31
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label1326
label286:
	addi a5, a5, 4
	and t4, t1, t0
	andi t5, t4, 1
	bne t5, zero, label283
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t5, t0, 31
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label286
	j label2749
label2752:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t4, t1, t0
	andi t5, t4, 1
	bne t5, zero, label283
	j label1317
label2747:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label288
	j label2953
label2753:
	andi t5, t2, 1
	bne t5, zero, label289
	j label2747
label273:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label275
label1308:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t4, t1, t0
	andi t5, t4, 1
	bne t5, zero, label283
	j label1317
label2748:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label275
	j label1308
label2742:
	bne t2, zero, label1282
	j label2950
label2737:
	bne a5, zero, label1260
	j label2946
label229:
	lw t1, 0(a3)
	addw a5, a5, t1
	addiw t0, t0, 1
	srliw t2, a4, 31
	add t1, a4, t2
	sraiw a4, t1, 1
	bge t0, s0, label1254
label232:
	addi a3, a3, 4
	mv t1, zero
	and t2, a4, zero
	andi t3, t2, 1
	bne t3, zero, label229
	addiw t0, t0, 1
	srliw t2, a4, 31
	add t1, a4, t2
	sraiw a4, t1, 1
	blt t0, s0, label232
	j label2737
label1282:
	mv t0, a3
	mv a5, a4
	bne a4, zero, label298
	mv t0, a4
	j label254
label298:
	mv t1, s1
	mv t4, zero
	mv a3, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	beq t5, zero, label1363
label305:
	andi t5, t2, 1
	beq t5, zero, label306
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	blt t4, s0, label309
	j label2760
label1377:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t6, t0, a5
	mv t0, a5
	andi t5, t6, 1
	bne t5, zero, label317
	j label1383
label2762:
	lw t1, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t2, a5, t1
	mv t1, zero
	mv a5, s1
	j label322
label317:
	lw t5, 0(t1)
	addw a5, t4, t5
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label1392
label320:
	addi t1, t1, 4
	mv t4, a5
	and t6, t2, t0
	andi t5, t6, 1
	bne t5, zero, label317
	addiw t3, t3, 1
	srliw t6, t0, 31
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label320
	j label2762
label322:
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label331
	j label328
label2764:
	mv a3, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label257
	j label1285
label330:
	addi a5, a5, 4
	and t5, t2, t0
	andi t4, t5, 1
	beq t4, zero, label2765
label331:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	addw t1, t1, t4
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label330
	mv t0, a3
	mv a5, t1
	bne t1, zero, label298
	j label2764
label1363:
	andi t5, t2, 1
	bne t5, zero, label306
label2759:
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	blt t4, s0, label309
	j label2767
label306:
	lw t5, 0(t1)
	addw a3, a3, t5
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	bge t4, s0, label1377
label309:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label305
	andi t5, t2, 1
	bne t5, zero, label306
	j label2759
label1408:
	mv t0, a3
	mv a5, t1
	bne t1, zero, label298
	j label2764
label2765:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label330
	j label1408
label1383:
	mv a5, t4
	addiw t3, t3, 1
	srliw t6, t0, 31
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label320
	j label2762
label2760:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t6, t2, a5
	andi t5, t6, 1
	bne t5, zero, label317
	j label1383
label2767:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t6, t0, a5
	mv t0, a5
	andi t5, t6, 1
	bne t5, zero, label317
	j label1383
label1392:
	lw t1, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t2, a5, t1
	and t5, t2, t0
	mv t1, zero
	mv a5, s1
	andi t4, t5, 1
	bne t4, zero, label331
label328:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label330
	j label1408
label1263:
	lui a4, 8
	addiw a2, a4, -1
	ble a0, a2, label2741
label335:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a0, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	mv a2, a3
	subw a0, a4, a5
	bgt a0, zero, label222
	j label433
label2781:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label240
	j label1263
label2946:
	mv a4, a2
	mv a3, zero
	j label236
label1254:
	bne a5, zero, label1260
	j label2946
label433:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv s4, s3
	bge s3, s0, label1589
label1590:
	mv a2, s3
	mv a0, s2
	mv a1, s4
	bgt s4, zero, label664
label663:
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
	mv a4, a1
	mv t1, s2
	and t3, a1, s2
	andi t2, t3, 1
	beq t2, zero, label1958
label671:
	lw t1, 0(a3)
	addw t0, t0, t1
	addiw a5, a5, 1
	srliw t2, a4, 31
	add t1, a4, t2
	sraiw a4, t1, 1
	bge a5, s0, label1966
label674:
	addi a3, a3, 4
	mv t1, zero
	and t3, a4, zero
	andi t2, t3, 1
	bne t2, zero, label671
	addiw a5, a5, 1
	srliw t2, a4, 31
	add t1, a4, t2
	sraiw a4, t1, 1
	blt a5, s0, label674
	j label2845
label683:
	lw a4, 52(sp)
	mv a2, a3
	divw a1, a1, a4
	bgt a1, zero, label664
	j label663
label703:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a2, a5, t1
	bne a2, zero, label685
	lui a4, 8
	addiw a2, a4, -1
	bgt a1, a2, label684
	j label683
label685:
	mv a5, s1
	mv t2, zero
	mv t0, a2
	mv t3, s2
	mv t1, zero
	and t4, a2, s2
	andi t5, t4, 1
	bne t5, zero, label692
	j label1994
label2851:
	bne t1, zero, label2007
	j label2006
label692:
	lw t3, 0(a5)
	addw t1, t1, t3
	addiw t2, t2, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t2, s0, label777
	j label695
label702:
	lw a5, 52(sp)
	mv a4, t0
	divw a2, a2, a5
	bne a2, zero, label685
	j label2853
label777:
	addi a5, a5, 4
	mv t3, zero
	and t4, t0, zero
	andi t5, t4, 1
	bne t5, zero, label692
	addiw t2, t2, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t2, s0, label777
	j label2851
label695:
	bne t1, zero, label2007
label2006:
	mv t0, a4
	mv a5, a4
	bne a4, zero, label704
label701:
	lui a5, 8
	addiw a4, a5, -1
	bgt a2, a4, label703
	j label702
label704:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label738
	andi t5, a5, 1
	bne t5, zero, label711
	j label2855
label2857:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t1, zero
	mulw t2, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label735
	j label732
label2858:
	lui a5, 8
	addiw a4, a5, -1
	bgt a2, a4, label703
	j label702
label734:
	addi a5, a5, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label735
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label734
	j label2070
label735:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t5, t0, 31
	addw t1, t1, t4
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label734
	mv t0, a4
	mv a5, t1
	bne t1, zero, label704
	j label2858
label711:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	addw a4, a4, t5
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	bge t4, s0, label3049
label737:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label738
	andi t5, t2, 1
	bne t5, zero, label711
	j label2855
label738:
	andi t5, t2, 1
	beq t5, zero, label711
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	blt t4, s0, label737
label3049:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	andi t6, t5, 1
	beq t6, zero, label2046
label722:
	lw t5, 0(t1)
	addw a5, t4, t5
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label2857
label736:
	addi t1, t1, 4
	mv t4, a5
	and t5, t2, t0
	andi t6, t5, 1
	bne t6, zero, label722
	addiw t3, t3, 1
	srliw t5, t0, 31
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label736
	j label2857
label2855:
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	blt t4, s0, label737
	j label3049
label732:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label734
label2070:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label704
	j label2858
label3042:
	mv a4, a2
	mv a3, zero
	j label678
label1966:
	bne t0, zero, label1972
	j label3042
label678:
	bne a2, zero, label685
label682:
	lui a4, 8
	addiw a2, a4, -1
	bgt a1, a2, label684
	j label683
label2007:
	mv t0, a3
	mv a5, a4
	bne a4, zero, label742
	mv t0, a4
	j label701
label742:
	mv t1, s1
	mv t4, zero
	mv t3, t0
	mv t2, a5
	mv a3, zero
	andi t5, t0, 1
	bne t5, zero, label775
	andi t5, a5, 1
	bne t5, zero, label749
	j label2864
label2126:
	mv t0, a3
	mv a5, t2
	bne t2, zero, label742
label2866:
	mv a3, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label704
	j label701
label749:
	lw t5, 0(t1)
	addw a3, a3, t5
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	bge t4, s0, label3056
label774:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label775
	andi t5, t2, 1
	bne t5, zero, label749
	j label2864
label775:
	andi t5, t2, 1
	beq t5, zero, label749
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	blt t4, s0, label774
	j label3056
label2864:
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	blt t4, s0, label774
label3056:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label773
	li t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label772
label761:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t4, t1, t0
	andi t5, t4, 1
	beq t5, zero, label2117
label768:
	lw t4, 0(a5)
	addw t2, t2, t4
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t5, t0, 31
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label2126
label771:
	addi a5, a5, 4
	and t4, t1, t0
	andi t5, t4, 1
	bne t5, zero, label768
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t5, t0, 31
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label771
	j label2865
label772:
	addi t1, t1, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label773
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label772
	j label761
label773:
	lw t4, 0(t1)
	addiw t3, t3, 1
	srliw t5, t0, 31
	addw a5, a5, t4
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label772
	j label761
label2865:
	mv t0, a3
	mv a5, t2
	bne t2, zero, label742
	j label2866
label2845:
	bne t0, zero, label1972
	j label3042
label684:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a1, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	mv a2, a3
	subw a1, a4, a5
	bgt a1, zero, label664
	j label663
label2853:
	lui a4, 8
	addiw a2, a4, -1
	bgt a1, a2, label684
	j label683
label1972:
	mv a4, a0
	mv a3, a2
	mv a0, zero
	beq a2, zero, label3042
label782:
	mv a5, s1
	mv t2, zero
	mv t0, a3
	mv t3, s2
	mv t1, zero
	and t4, a3, s2
	andi t5, t4, 1
	bne t5, zero, label789
	li t2, 1
	srliw t4, a3, 31
	add t3, a3, t4
	sraiw t0, t3, 1
	blt t2, s0, label792
	j label2874
label3064:
	mv t0, a4
	mv a5, a4
	j label796
label2158:
	bne t1, zero, label2164
	j label3064
label796:
	bne a5, zero, label799
label2167:
	lui a5, 8
	addiw a4, a5, -1
	ble a3, a4, label2878
label835:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a3, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a3, a5, t1
	bne a3, zero, label782
	mv a4, a2
	mv a3, zero
	bne a2, zero, label685
	j label682
label799:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label807
	j label806
label2175:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label833
	j label2879
label807:
	andi t5, t2, 1
	bne t5, zero, label2180
label808:
	lw t5, 0(t1)
	addw a4, a4, t5
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label833
	j label2879
label2219:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label799
	j label2883
label2884:
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t0, 31
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label831
	j label2219
label833:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label807
	andi t5, t2, 1
	bne t5, zero, label808
	j label2175
label2881:
	lw t1, 52(sp)
	mv t3, zero
	lui t5, 16
	addiw t0, t5, -1
	mulw t2, a5, t1
	mv t1, zero
	mv a5, s1
	j label823
label818:
	lw t5, 0(t1)
	addw a5, t4, t5
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label2203
label821:
	addi t1, t1, 4
	mv t4, a5
	and t5, t2, t0
	andi t6, t5, 1
	bne t6, zero, label818
	addiw t3, t3, 1
	srliw t6, t0, 31
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label821
	j label2881
label823:
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label832
	j label829
label2883:
	lui a5, 8
	addiw a4, a5, -1
	bgt a3, a4, label835
	j label2878
label831:
	addi a5, a5, 4
	and t4, t2, t0
	andi t5, t4, 1
	beq t5, zero, label2884
label832:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t0, 31
	addw t1, t1, t4
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label831
	mv t0, a4
	mv a5, t1
	bne t1, zero, label799
	j label2883
label2879:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	andi t6, t5, 1
	bne t6, zero, label818
	mv a5, zero
	li t3, 1
	srliw t6, t0, 31
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label821
	j label2881
label806:
	andi t5, t2, 1
	bne t5, zero, label808
	j label2175
label2180:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label833
	j label2879
label2203:
	lw t1, 52(sp)
	mv t3, zero
	lui t5, 16
	addiw t0, t5, -1
	mulw t2, a5, t1
	and t4, t2, t0
	mv t1, zero
	mv a5, s1
	andi t5, t4, 1
	bne t5, zero, label832
label829:
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t0, 31
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label831
	j label2219
label2874:
	bne t1, zero, label2164
	j label3064
label789:
	lw t3, 0(a5)
	addw t1, t1, t3
	addiw t2, t2, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	bge t2, s0, label2158
label792:
	addi a5, a5, 4
	mv t3, zero
	and t4, t0, zero
	andi t5, t4, 1
	bne t5, zero, label789
	addiw t2, t2, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t2, s0, label792
	j label2874
label778:
	bne a3, zero, label782
	j label2145
label2878:
	lw a5, 52(sp)
	mv a4, t0
	divw a3, a3, a5
	j label778
label2164:
	mv t0, a0
	mv a5, a4
	bne a4, zero, label840
	mv t0, a4
	j label796
label840:
	mv t1, s1
	mv t4, zero
	mv t3, t0
	mv t2, a5
	mv a0, zero
	andi t5, t0, 1
	bne t5, zero, label847
	andi t5, a5, 1
	bne t5, zero, label874
	j label2889
label2286:
	mv t0, a0
	mv a5, t2
	bne t2, zero, label840
	j label2891
label3076:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	j label851
label847:
	andi t5, t2, 1
	beq t5, zero, label874
	j label848
label851:
	and t5, t2, t0
	andi t6, t5, 1
	bne t6, zero, label871
	j label2262
label872:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label847
	j label2895
label874:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw t6, t2, 31
	addw a0, a0, t5
	srliw t5, t3, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label872
	j label3076
label2262:
	mv a5, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label870
label859:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t5, t1, t0
	andi t4, t5, 1
	bne t4, zero, label866
	li t3, 1
	srliw t4, t1, 31
	srliw t5, t0, 31
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label869
label2890:
	mv t0, a0
	mv a5, t2
	bne t2, zero, label840
	j label2891
label866:
	lw t4, 0(a5)
	addw t2, t2, t4
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t5, t0, 31
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label2286
label869:
	addi a5, a5, 4
	and t5, t1, t0
	andi t4, t5, 1
	bne t4, zero, label866
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t5, t0, 31
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label869
	j label2890
label870:
	addi t1, t1, 4
	mv t4, a5
	and t5, t2, t0
	andi t6, t5, 1
	beq t6, zero, label2262
label871:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a5, t4, t5
	srliw t5, t0, 31
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label870
	j label859
label848:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label872
	j label3076
label2889:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label872
	j label3076
label2895:
	andi t5, t2, 1
	bne t5, zero, label874
	j label2889
label2891:
	mv a0, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label799
	j label2167
label2145:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label685
	j label682
label1589:
	mv a0, s1
	mv a1, zero
label437:
	bge a1, s0, label1593
	mv a4, s3
	mv a3, s2
	mv a2, a1
	ble a1, zero, label655
label444:
	mv a5, s1
	mv t1, zero
	mv t2, zero
	mv t0, a2
	mv t3, s2
	and t5, a2, s2
	andi t4, t5, 1
	bne t4, zero, label451
	li t1, 1
	srliw t4, a2, 31
	add t3, a2, t4
	sraiw t0, t3, 1
	blt t1, s0, label654
	j label2794
label1622:
	lw t0, 52(sp)
	mv a4, a5
	divw a2, a2, t0
	bgt a2, zero, label444
	j label655
label2818:
	lui t0, 8
	addiw a4, t0, -1
	bgt a2, a4, label462
	j label1622
label2794:
	bne t2, zero, label1615
	j label1614
label451:
	lw t3, 0(a5)
	addw t2, t2, t3
	addiw t1, t1, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	bge t1, s0, label454
label654:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	bne t4, zero, label451
	addiw t1, t1, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t1, s0, label654
	j label2794
label454:
	beq t2, zero, label1614
label1615:
	mv t0, a3
	mv a5, a4
	mv a3, zero
	bne a4, zero, label561
	mv t0, a4
	mv a5, zero
label457:
	bne a4, zero, label464
	j label461
label2807:
	lw t1, 52(sp)
	mv t0, t2
	divw a4, a4, t1
	j label457
label517:
	mv t3, s1
	mv t6, zero
	mv t0, zero
	mv t5, t2
	mv t4, t1
	andi a6, t2, 1
	bne a6, zero, label550
	andi a6, t1, 1
	bne a6, zero, label551
	j label2808
label1755:
	mv t2, t0
	mv t1, t3
	bne t3, zero, label517
label2813:
	lui t1, 8
	addiw t0, t1, -1
	bgt a4, t0, label553
	j label2807
label526:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label550
	j label2809
label1728:
	mv t1, t6
	addiw t5, t5, 1
	srliw a7, t2, 31
	srliw t6, t4, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label537
label2810:
	lw t3, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t2, t6, -1
	mulw t4, t1, t3
	mv t3, zero
	mv t1, s1
	j label539
label534:
	lw a6, 0(t3)
	addw t1, t6, a6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t2, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	bge t5, s0, label1737
label537:
	addi t3, t3, 4
	mv t6, t1
	and a7, t4, t2
	andi a6, a7, 1
	bne a6, zero, label534
	addiw t5, t5, 1
	srliw a7, t2, 31
	srliw t6, t4, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label537
	j label2810
label539:
	and t6, t4, t2
	andi a6, t6, 1
	bne a6, zero, label545
	j label1746
label550:
	andi a6, t4, 1
	bne a6, zero, label1765
label551:
	lw a6, 0(t3)
	addiw t6, t6, 1
	addw t0, t0, a6
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	blt t6, s0, label526
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label534
	j label1728
label2812:
	mv t2, t0
	mv t1, t3
	bne t3, zero, label517
	j label2813
label545:
	lw t6, 0(t1)
	addw t3, t3, t6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t2, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	bge t5, s0, label1755
label548:
	addi t1, t1, 4
	and t6, t4, t2
	andi a6, t6, 1
	bne a6, zero, label545
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t2, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label548
	j label2812
label2808:
	addiw t6, t6, 1
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	blt t6, s0, label526
	j label2815
label2809:
	andi a6, t4, 1
	bne a6, zero, label551
	j label2808
label561:
	mv t1, s1
	mv t4, zero
	mv t2, a5
	mv t5, s2
	mv t3, zero
	and a6, a5, s2
	andi t6, a6, 1
	bne t6, zero, label568
	li t4, 1
	srliw t6, a5, 31
	add t5, a5, t6
	sraiw t2, t5, 1
	blt t4, s0, label653
	j label2822
label616:
	lw t1, 52(sp)
	mv t0, t2
	divw a5, a5, t1
	bne a5, zero, label561
	j label2831
label617:
	lw t3, 52(sp)
	lui t4, 16
	divw t0, a5, t3
	lw t3, 108(sp)
	addw t1, t0, t4
	mv t0, t2
	subw a5, t1, t3
	bne a5, zero, label561
	j label2832
label618:
	mv t3, s1
	mv t6, zero
	mv t5, t2
	mv t4, t1
	mv t0, zero
	andi a6, t2, 1
	bne a6, zero, label626
	andi a6, t1, 1
	bne a6, zero, label625
	j label2833
label1934:
	mv t2, t0
	mv t1, t3
	bne t3, zero, label618
label2839:
	lui t1, 8
	addiw t0, t1, -1
	bgt a5, t0, label617
	j label616
label2833:
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw s4, t4, 31
	add a7, t5, a6
	add a6, t4, s4
	sraiw t5, a7, 1
	sraiw t4, a6, 1
	blt t6, s0, label629
	j label2841
label625:
	lw a6, 0(t3)
	addiw t6, t6, 1
	srliw s4, t4, 31
	addw t0, t0, a6
	srliw a6, t5, 31
	add a7, t5, a6
	add a6, t4, s4
	sraiw t5, a7, 1
	sraiw t4, a6, 1
	blt t6, s0, label629
	j label2834
label626:
	andi a6, t4, 1
	beq a6, zero, label625
	j label627
label629:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label626
	andi a6, t4, 1
	bne a6, zero, label625
	j label2833
label627:
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw s4, t4, 31
	add a7, t5, a6
	add a6, t4, s4
	sraiw t5, a7, 1
	sraiw t4, a6, 1
	blt t6, s0, label629
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a6, t2, t1
	mv t2, t1
	andi a7, a6, 1
	bne a7, zero, label637
	j label1907
label2836:
	lw t3, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t2, t6, -1
	mulw t4, t1, t3
	mv t3, zero
	mv t1, s1
	j label642
label637:
	lw a6, 0(t3)
	addw t1, t6, a6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a6, t2, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	bge t5, s0, label1916
label640:
	addi t3, t3, 4
	mv t6, t1
	and a6, t4, t2
	andi a7, a6, 1
	bne a7, zero, label637
	addiw t5, t5, 1
	srliw a6, t2, 31
	srliw t6, t4, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label640
	j label2836
label642:
	and t6, t4, t2
	andi a6, t6, 1
	bne a6, zero, label648
	j label1925
label2838:
	mv t2, t0
	mv t1, t3
	bne t3, zero, label618
	j label2839
label648:
	lw t6, 0(t1)
	addw t3, t3, t6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a6, t2, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	bge t5, s0, label1934
label651:
	addi t1, t1, 4
	and t6, t4, t2
	andi a6, t6, 1
	bne a6, zero, label648
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a6, t2, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label651
	j label2838
label2834:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	mv t2, t1
	and a6, t4, t1
	andi a7, a6, 1
	bne a7, zero, label637
label1907:
	mv t1, t6
	addiw t5, t5, 1
	srliw a6, t2, 31
	srliw t6, t4, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label640
	j label2836
label1765:
	addiw t6, t6, 1
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	blt t6, s0, label526
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label534
	j label1728
label2815:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label534
	j label1728
label1737:
	lw t3, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t2, t6, -1
	mulw t4, t1, t3
	and t6, t4, t2
	mv t3, zero
	mv t1, s1
	andi a6, t6, 1
	bne a6, zero, label545
label1746:
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t2, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label548
	j label2812
label2841:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a6, t2, t1
	mv t2, t1
	andi a7, a6, 1
	bne a7, zero, label637
	j label1907
label1916:
	lw t3, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t2, t6, -1
	mulw t4, t1, t3
	and t6, t4, t2
	mv t3, zero
	mv t1, s1
	andi a6, t6, 1
	bne a6, zero, label648
label1925:
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a6, t2, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label651
	j label2838
label464:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, a4
	mv t5, s2
	and a6, a4, s2
	andi t6, a6, 1
	bne t6, zero, label556
	j label471
label1647:
	mv t2, t0
	mv t1, t0
	bne t0, zero, label517
	j label1711
label1648:
	mv t2, a5
	mv t1, t0
	bne t0, zero, label477
	j label1651
label1711:
	lui t1, 8
	addiw t0, t1, -1
	ble a4, t0, label2807
label553:
	lw t3, 52(sp)
	lui t4, 16
	divw t0, a4, t3
	lw t3, 108(sp)
	addw t1, t0, t4
	mv t0, t2
	subw a4, t1, t3
	bne a4, zero, label464
	j label2818
label555:
	addi t1, t1, 4
	mv t5, zero
	and a6, t2, zero
	andi t6, a6, 1
	bne t6, zero, label556
	addiw t3, t3, 1
	srliw t6, t2, 31
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label555
	j label473
label556:
	lw t6, 0(t1)
	addiw t3, t3, 1
	addw t4, t4, t6
	srliw t6, t2, 31
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label555
	bne t4, zero, label1648
	j label1647
label477:
	mv t3, s1
	mv t6, zero
	mv a5, zero
	mv t5, t2
	mv t4, t1
	andi a6, t2, 1
	bne a6, zero, label484
	j label1655
label3000:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	mv t2, t1
	j label489
label484:
	andi a6, t4, 1
	beq a6, zero, label511
	j label1660
label489:
	and a7, t4, t2
	andi a6, a7, 1
	bne a6, zero, label495
	mv t1, t6
	addiw t5, t5, 1
	srliw a7, t4, 31
	srliw a6, t2, 31
	add t6, t4, a7
	add a7, t2, a6
	sraiw t4, t6, 1
	sraiw t2, a7, 1
	blt t5, s0, label509
	j label2800
label1700:
	mv t2, a5
	mv t1, t3
	bne t3, zero, label477
	j label2801
label510:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label484
	j label2805
label511:
	lw a6, 0(t3)
	addiw t6, t6, 1
	srliw a7, t4, 31
	addw a5, a5, a6
	srliw a6, t5, 31
	add s4, t5, a6
	add a6, t4, a7
	sraiw t5, s4, 1
	sraiw t4, a6, 1
	blt t6, s0, label510
	j label3000
label495:
	lw a6, 0(t3)
	addw t1, t6, a6
	addiw t5, t5, 1
	srliw a7, t4, 31
	srliw a6, t2, 31
	add t6, t4, a7
	add a7, t2, a6
	sraiw t4, t6, 1
	sraiw t2, a7, 1
	bge t5, s0, label2800
label509:
	addi t3, t3, 4
	mv t6, t1
	and a7, t4, t2
	andi a6, a7, 1
	bne a6, zero, label495
	addiw t5, t5, 1
	srliw a7, t4, 31
	srliw a6, t2, 31
	add t6, t4, a7
	add a7, t2, a6
	sraiw t4, t6, 1
	sraiw t2, a7, 1
	blt t5, s0, label509
label2800:
	lw t2, 52(sp)
	mv t5, zero
	lui t6, 16
	mv t3, zero
	mulw t4, t1, t2
	addiw t2, t6, -1
	mv t1, s1
	and a6, t4, t2
	andi t6, a6, 1
	bne t6, zero, label508
	j label505
label2801:
	mv a5, t2
	mv t1, t0
	mv t2, t0
	bne t0, zero, label517
	j label1711
label507:
	addi t1, t1, 4
	and a6, t4, t2
	andi t6, a6, 1
	bne t6, zero, label508
	addiw t5, t5, 1
	srliw a6, t4, 31
	srliw t6, t2, 31
	add a7, t4, a6
	add a6, t2, t6
	sraiw t4, a7, 1
	sraiw t2, a6, 1
	blt t5, s0, label507
	j label1700
label508:
	lw t6, 0(t1)
	addiw t5, t5, 1
	srliw a6, t4, 31
	addw t3, t3, t6
	add a7, t4, a6
	srliw t6, t2, 31
	sraiw t4, a7, 1
	add a6, t2, t6
	sraiw t2, a6, 1
	blt t5, s0, label507
	mv t2, a5
	mv t1, t3
	bne t3, zero, label477
	j label2801
label2798:
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw a7, t4, 31
	add s4, t5, a6
	add a6, t4, a7
	sraiw t5, s4, 1
	sraiw t4, a6, 1
	blt t6, s0, label510
	j label3000
label2805:
	andi a6, t4, 1
	bne a6, zero, label511
	j label2798
label505:
	addiw t5, t5, 1
	srliw a6, t4, 31
	srliw t6, t2, 31
	add a7, t4, a6
	add a6, t2, t6
	sraiw t4, a7, 1
	sraiw t2, a6, 1
	blt t5, s0, label507
	j label1700
label1660:
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw a7, t4, 31
	add s4, t5, a6
	add a6, t4, a7
	sraiw t5, s4, 1
	sraiw t4, a6, 1
	blt t6, s0, label510
	j label3000
label2822:
	bne t3, zero, label1806
	j label1805
label568:
	lw t5, 0(t1)
	addw t3, t3, t5
	addiw t4, t4, 1
	srliw t6, t2, 31
	add t5, t2, t6
	sraiw t2, t5, 1
	bge t4, s0, label571
label653:
	addi t1, t1, 4
	mv t5, zero
	and a6, t2, zero
	andi t6, a6, 1
	bne t6, zero, label568
	addiw t4, t4, 1
	srliw t6, t2, 31
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t4, s0, label653
	j label2822
label471:
	addiw t3, t3, 1
	srliw t6, t2, 31
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label555
label473:
	bne t4, zero, label1648
	j label1647
label571:
	beq t3, zero, label1805
label1806:
	mv t2, a3
	mv t1, t0
	bne t0, zero, label575
	mv t2, t0
	j label615
label575:
	mv t3, s1
	mv t6, zero
	mv a3, zero
	mv t5, t2
	mv t4, t1
	andi a6, t2, 1
	bne a6, zero, label583
	andi a6, t1, 1
	bne a6, zero, label609
	j label1817
label2824:
	mv t2, a3
	mv t1, t4
	bne t4, zero, label575
	j label2825
label602:
	lw t6, 0(t1)
	addw t4, t4, t6
	addiw t5, t5, 1
	srliw t6, t3, 31
	srliw a7, t2, 31
	add a6, t3, t6
	add t6, t2, a7
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	bge t5, s0, label1858
label605:
	addi t1, t1, 4
	and a6, t3, t2
	andi t6, a6, 1
	bne t6, zero, label602
	addiw t5, t5, 1
	srliw t6, t3, 31
	srliw a7, t2, 31
	add a6, t3, t6
	add t6, t2, a7
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label605
	j label2824
label2823:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	mv t2, t1
	j label587
label583:
	andi a6, t4, 1
	beq a6, zero, label609
	j label584
label587:
	and a6, t4, t2
	andi a7, a6, 1
	bne a7, zero, label607
	j label1834
label606:
	addi t3, t3, 4
	mv t6, t1
	and a6, t4, t2
	andi a7, a6, 1
	beq a7, zero, label1834
label607:
	lw a6, 0(t3)
	addiw t5, t5, 1
	srliw a7, t2, 31
	addw t1, t6, a6
	srliw t6, t4, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label606
	j label595
label608:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label583
	andi a6, t4, 1
	beq a6, zero, label1817
label609:
	lw a6, 0(t3)
	addiw t6, t6, 1
	addw a3, a3, a6
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	blt t6, s0, label608
	j label2823
label1834:
	mv t1, t6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t2, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label606
	j label595
label584:
	addiw t6, t6, 1
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	blt t6, s0, label608
	j label2823
label1817:
	addiw t6, t6, 1
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	blt t6, s0, label608
	j label2823
label595:
	lw t2, 52(sp)
	mv t5, zero
	lui t6, 16
	mv t4, zero
	mulw t3, t1, t2
	addiw t2, t6, -1
	mv t1, s1
	and a6, t3, t2
	andi t6, a6, 1
	bne t6, zero, label602
	li t5, 1
	srliw t6, t3, 31
	srliw a7, t2, 31
	add a6, t3, t6
	add t6, t2, a7
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label605
	j label2824
label1805:
	mv t2, t0
	mv t1, t0
	bne t0, zero, label618
label615:
	lui t1, 8
	addiw t0, t1, -1
	bgt a5, t0, label617
	j label616
label2825:
	mv a3, t2
	mv t1, t0
	mv t2, t0
	bne t0, zero, label618
	j label615
label461:
	lui t0, 8
	addiw a4, t0, -1
	ble a2, a4, label1622
label462:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw t0, a4, t2
	mv a4, a5
	subw a2, t0, t1
	bgt a2, zero, label444
label655:
	lw a2, 0(a0)
	bne a3, a2, label1947
	addiw a1, a1, 1
	addi a0, a0, 4
	j label437
label1614:
	mv t0, a4
	mv a5, zero
	bne a4, zero, label464
	j label461
label1947:
	mv a0, s2
label657:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s0, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 112
	ret
label1651:
	mv a5, t2
	mv t1, t0
	mv t2, t0
	bne t0, zero, label517
	j label1711
label1260:
	mv a4, a1
	mv a3, a2
	mv a1, zero
	beq a2, zero, label2946
label340:
	mv a5, s1
	mv t1, zero
	mv t2, zero
	mv t0, a3
	mv t3, s2
	and t5, a3, s2
	andi t4, t5, 1
	bne t4, zero, label432
	li t1, 1
	srliw t3, a3, 31
	add t4, a3, t3
	sraiw t0, t4, 1
	blt t1, s0, label349
	j label1444
label394:
	lui a5, 8
	addiw a4, a5, -1
	ble a3, a4, label395
label396:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a3, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a3, a5, t1
	bne a3, zero, label340
	mv a4, a2
	mv a3, zero
	bne a2, zero, label240
	j label1263
label2770:
	mv t0, a4
	mv a5, a4
	j label391
label349:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	bne t4, zero, label432
	addiw t1, t1, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t1, s0, label349
	j label1444
label391:
	bne a5, zero, label397
	j label394
label432:
	lw t3, 0(a5)
	addiw t1, t1, 1
	addw t2, t2, t3
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t1, s0, label349
	bne t2, zero, label1450
	j label2770
label397:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label404
	andi t5, a5, 1
	bne t5, zero, label406
	j label2783
label1564:
	lw t1, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t2, a5, t1
	and t4, t2, t0
	mv t1, zero
	mv a5, s1
	andi t5, t4, 1
	bne t5, zero, label428
	j label1573
label2789:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label397
	j label2790
label428:
	lw t4, 0(a5)
	addw t1, t1, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label1582
label431:
	addi a5, a5, 4
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label428
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label431
	j label2789
label2783:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label409
	j label2986
label404:
	andi t5, t2, 1
	bne t5, zero, label1536
label406:
	lw t5, 0(t1)
	addw a4, a4, t5
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	bge t4, s0, label1549
label409:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label404
	andi t5, t2, 1
	bne t5, zero, label406
	j label2783
label2986:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	j label411
label1536:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label409
	j label2986
label411:
	and t5, t2, t0
	andi t6, t5, 1
	bne t6, zero, label417
	j label1555
label2787:
	lw t1, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t2, a5, t1
	mv t1, zero
	mv a5, s1
	j label422
label417:
	lw t5, 0(t1)
	addw a5, t4, t5
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label1564
label420:
	addi t1, t1, 4
	mv t4, a5
	and t5, t2, t0
	andi t6, t5, 1
	bne t6, zero, label417
	addiw t3, t3, 1
	srliw t6, t0, 31
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label420
	j label2787
label422:
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label428
label1573:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label431
	j label2789
label1549:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t5, t0, a5
	mv t0, a5
	andi t6, t5, 1
	bne t6, zero, label417
label1555:
	mv a5, t4
	addiw t3, t3, 1
	srliw t6, t0, 31
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label420
	j label2787
label1450:
	mv t0, a1
	mv a5, a4
	bne a4, zero, label354
	mv t0, a4
	j label394
label354:
	mv t1, s1
	mv t4, zero
	mv a1, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label387
	andi t5, a5, 1
	bne t5, zero, label361
	j label2772
label1496:
	mv t0, a1
	mv a5, t1
	bne t1, zero, label354
	j label2775
label2776:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label384
	j label1496
label361:
	lw t5, 0(t1)
	addw a1, a1, t5
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	bge t4, s0, label2977
label386:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label387
	andi t5, t2, 1
	bne t5, zero, label361
	j label2772
label387:
	andi t5, t2, 1
	beq t5, zero, label361
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label386
	j label2977
label2775:
	mv a1, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label397
	j label394
label384:
	addi a5, a5, 4
	and t4, t2, t0
	andi t5, t4, 1
	beq t5, zero, label2776
label385:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t6, t0, 31
	addw t1, t1, t4
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label384
	mv t0, a1
	mv a5, t1
	bne t1, zero, label354
	j label2775
label2772:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label386
label2977:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label371
	li t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label374
label2773:
	lw t0, 52(sp)
	mv t3, zero
	mv t1, zero
	lui t5, 16
	mulw t2, a5, t0
	addiw t0, t5, -1
	mv a5, s1
	j label376
label371:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label1480
label374:
	addi t1, t1, 4
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label371
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label374
	j label2773
label376:
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label385
label382:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label384
	j label1496
label1480:
	lw t0, 52(sp)
	mv t3, zero
	mv t1, zero
	lui t5, 16
	mulw t2, a5, t0
	addiw t0, t5, -1
	mv a5, s1
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label385
	j label382
label395:
	lw a5, 52(sp)
	mv a4, t0
	divw a3, a3, a5
	bne a3, zero, label340
	j label2781
label2790:
	lui a5, 8
	addiw a4, a5, -1
	bgt a3, a4, label396
	j label395
label1444:
	bne t2, zero, label1450
	j label2770
label2832:
	mv t0, a4
	mv a5, zero
	bne a4, zero, label464
	j label461
label2831:
	mv t0, a4
	mv a5, zero
	bne a4, zero, label464
	j label461
label1085:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label24
	j label915
label920:
	addiw t2, t2, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t2, s0, label34
	j label2688
label1655:
	andi a6, t4, 1
	bne a6, zero, label511
	j label2798
label1994:
	addiw t2, t2, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t2, s0, label777
	j label2851
label1958:
	addiw a5, a5, 1
	srliw t2, a4, 31
	add t1, a4, t2
	sraiw a4, t1, 1
	blt a5, s0, label674
	j label2845
label1052:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label114
	j label2706
label2046:
	mv a5, t4
	addiw t3, t3, 1
	srliw t5, t0, 31
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label736
	j label2857
label1593:
	mv a0, zero
	j label657
label1582:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label397
	j label2790
label2117:
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t5, t0, 31
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label771
	j label2865
label1268:
	addiw t1, t1, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t1, s0, label250
	j label2742
label1061:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label82
	j label2707
label1858:
	mv t2, a3
	mv t1, t4
	bne t4, zero, label575
	j label2825
label941:
	andi t5, t2, 1
	bne t5, zero, label73
	j label2691
