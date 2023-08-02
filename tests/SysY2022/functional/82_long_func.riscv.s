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
	sd s3, 24(sp)
	li s3, 2
	sd s0, 32(sp)
	li s0, 16
	sd s4, 40(sp)
	sd a1, 48(sp)
	slli a1, a2, 2
	sd a0, 56(sp)
	slli a3, a1, 2
	lui a0, 1
	sd a2, 64(sp)
	slli a2, a3, 2
	sd a1, 72(sp)
	lui a1, 2
	sd a3, 80(sp)
	sd a2, 88(sp)
	slli a2, a1, 32
	lui a1, 4
	add.uw a3, a0, a2
	lui a2, 8
	sd a3, 96(sp)
	slli a3, a2, 32
	mv a2, s3
	add.uw a0, a1, a3
	mv a1, s2
	sd a0, 104(sp)
	mv a0, zero
label2:
	ble a0, zero, label191
label788:
	mv t0, s2
	mv a3, a0
	mv a5, zero
	mv a4, zero
	blt zero, s0, label187
	j label11
label962:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label185
label2720:
	lw a4, 52(sp)
	mv a2, a3
	divw a0, a0, a4
	j label2
label963:
	mv t1, zero
	mv t2, s2
	mv t0, a2
	mv a5, zero
	blt zero, s0, label108
	j label966
label2721:
	mv a5, a4
	mv t0, a4
	j label148
label108:
	and t4, t2, t0
	andi t3, t4, 1
	bne t3, zero, label111
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	blt a5, s0, label108
	j label2722
label111:
	sh2add t3, a5, s1
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	blt a5, s0, label108
	bne t1, zero, label982
	j label2721
label148:
	bne t0, zero, label1049
label1048:
	lui t0, 8
	addiw a4, t0, -1
	ble a2, a4, label2733
label152:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw t0, a4, t2
	mv a4, a5
	subw a2, t0, t1
	bne a2, zero, label963
	lui a4, 8
	addiw a2, a4, -1
	ble a0, a2, label2720
label185:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a0, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	mv a2, a3
	subw a0, a4, a5
	bgt a0, zero, label788
	j label191
label99:
	bne a2, zero, label963
	j label962
label2733:
	lw t0, 52(sp)
	mv a4, a5
	divw a2, a2, t0
	j label99
label1049:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	blt zero, s0, label159
	j label2734
label2743:
	lui t0, 8
	addiw a4, t0, -1
	bgt a2, a4, label152
	j label2733
label2744:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1049
	j label2743
label2932:
	lw t1, 52(sp)
	lui t3, 16
	addiw a5, t3, -1
	mulw t0, t2, t1
	mv t1, zero
	mv t2, zero
	j label175
label159:
	andi t4, t3, 1
	bne t4, zero, label160
	andi t4, t1, 1
	bne t4, zero, label164
	j label2738
label160:
	andi t4, t1, 1
	bne t4, zero, label161
label164:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw a4, a4, t4
	srliw t5, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t4, t3, t5
	add t5, t1, t6
	sraiw t3, t4, 1
	sraiw t1, t5, 1
	blt t2, s0, label159
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label170
	j label2932
label175:
	bge t1, s0, label1109
label180:
	and t3, a5, t0
	andi t4, t3, 1
	bne t4, zero, label183
	srliw t3, t0, 31
	srliw t5, a5, 31
	addiw t1, t1, 1
	add t4, t0, t3
	add t3, a5, t5
	sraiw t0, t4, 1
	sraiw a5, t3, 1
	blt t1, s0, label180
	j label2744
label183:
	sh2add t4, t1, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t0, 31
	srliw t5, a5, 31
	addiw t1, t1, 1
	add t4, t0, t3
	add t3, a5, t5
	sraiw t0, t4, 1
	sraiw a5, t3, 1
	blt t1, s0, label180
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1049
	j label2743
label170:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label171
	srliw t4, t1, 31
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t5, t1, t4
	add t4, t0, t3
	sraiw t1, t5, 1
	sraiw t0, t4, 1
	blt a5, s0, label170
	j label1090
label171:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t5, t1, t4
	add t4, t0, t3
	sraiw t1, t5, 1
	sraiw t0, t4, 1
	blt a5, s0, label170
	lw t1, 52(sp)
	lui t3, 16
	addiw a5, t3, -1
	mulw t0, t2, t1
	mv t1, zero
	mv t2, zero
	blt zero, s0, label180
label1109:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1049
	j label2743
label161:
	srliw t5, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t4, t3, t5
	add t5, t1, t6
	sraiw t3, t4, 1
	sraiw t1, t5, 1
	blt t2, s0, label159
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label170
	j label2932
label1090:
	lw t1, 52(sp)
	lui t3, 16
	addiw a5, t3, -1
	mulw t0, t2, t1
	mv t1, zero
	mv t2, zero
	blt zero, s0, label180
	j label1109
label2738:
	srliw t5, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t4, t3, t5
	add t5, t1, t6
	sraiw t3, t4, 1
	sraiw t1, t5, 1
	blt t2, s0, label159
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label170
	j label2932
label966:
	beq t1, zero, label2721
label982:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label986
	mv a5, a4
	j label1048
label986:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	blt zero, s0, label121
	j label989
label2730:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1049
	j label1048
label142:
	and t4, a5, t0
	andi t3, t4, 1
	bne t3, zero, label145
	srliw t3, t0, 31
	srliw t5, a5, 31
	addiw t1, t1, 1
	add t4, t0, t3
	add t3, a5, t5
	sraiw t0, t4, 1
	sraiw a5, t3, 1
	blt t1, s0, label142
	j label2731
label145:
	sh2add t4, t1, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t0, 31
	srliw t5, a5, 31
	addiw t1, t1, 1
	add t4, t0, t3
	add t3, a5, t5
	sraiw t0, t4, 1
	sraiw a5, t3, 1
	blt t1, s0, label142
	mv a5, a3
	mv t0, t2
	bne t2, zero, label986
	j label2730
label2724:
	lw t1, 52(sp)
	lui t3, 16
	addiw a5, t3, -1
	mulw t0, t2, t1
	mv t1, zero
	mv t2, zero
	j label137
label121:
	andi t4, t3, 1
	bne t4, zero, label122
	andi t4, t1, 1
	beq t4, zero, label2725
label125:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a3, a3, t5
	srliw t5, t3, 31
	srliw t4, t1, 31
	addiw t2, t2, 1
	add t6, t3, t5
	add t5, t1, t4
	sraiw t3, t6, 1
	sraiw t1, t5, 1
	blt t2, s0, label121
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label132
	j label2724
label137:
	blt t1, s0, label142
	j label1032
label132:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label133
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label132
	j label1013
label133:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label132
	lw t1, 52(sp)
	lui t3, 16
	addiw a5, t3, -1
	mulw t0, t2, t1
	mv t1, zero
	mv t2, zero
	blt zero, s0, label142
label1032:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label986
	j label2730
label122:
	andi t4, t1, 1
	beq t4, zero, label125
	srliw t5, t3, 31
	srliw t4, t1, 31
	addiw t2, t2, 1
	add t6, t3, t5
	add t5, t1, t4
	sraiw t3, t6, 1
	sraiw t1, t5, 1
	blt t2, s0, label121
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label132
	j label2724
label1013:
	lw t1, 52(sp)
	lui t3, 16
	addiw a5, t3, -1
	mulw t0, t2, t1
	mv t1, zero
	mv t2, zero
	blt zero, s0, label142
	j label1032
label2725:
	srliw t5, t3, 31
	srliw t4, t1, 31
	addiw t2, t2, 1
	add t6, t3, t5
	add t5, t1, t4
	sraiw t3, t6, 1
	sraiw t1, t5, 1
	blt t2, s0, label121
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label132
	j label2724
label795:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label963
	j label962
label796:
	mv a4, a1
	mv a3, a2
	mv a1, zero
	j label12
label187:
	and t1, t0, a3
	andi t2, t1, 1
	bne t2, zero, label190
	srliw t0, a3, 31
	addiw a4, a4, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	blt a4, s0, label187
	j label2748
label190:
	sh2add t1, a4, s1
	lw t0, 0(t1)
	addw a5, a5, t0
	srliw t0, a3, 31
	addiw a4, a4, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	blt a4, s0, label187
	bne a5, zero, label796
	j label795
label12:
	beq a3, zero, label799
label800:
	mv t1, zero
	mv t2, s2
	mv t0, a3
	mv a5, zero
	blt zero, s0, label93
	j label21
label2706:
	lw t0, 52(sp)
	mv a4, a5
	divw a3, a3, t0
	j label12
label2712:
	lui t0, 8
	addiw a4, t0, -1
	bgt a3, a4, label91
	j label2706
label82:
	and t3, a5, t0
	andi t4, t3, 1
	bne t4, zero, label83
	srliw t5, t0, 31
	srliw t4, a5, 31
	addiw t1, t1, 1
	add t3, t0, t5
	add t5, a5, t4
	sraiw t0, t3, 1
	sraiw a5, t5, 1
	blt t1, s0, label82
	j label909
label83:
	sh2add t3, t1, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t5, t0, 31
	srliw t4, a5, 31
	addiw t1, t1, 1
	add t3, t0, t5
	add t5, a5, t4
	sraiw t0, t3, 1
	sraiw a5, t5, 1
	blt t1, s0, label82
	mv a5, a4
	mv t0, t2
	beq t2, zero, label2712
label875:
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	blt zero, s0, label65
	j label878
label909:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label875
	j label2712
label65:
	andi t4, t3, 1
	bne t4, zero, label70
	andi t4, t1, 1
	beq t4, zero, label2708
label66:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw a4, a4, t4
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label65
	mv t1, zero
	mv t2, a5
	mv a5, zero
	blt zero, s0, label86
label2707:
	lw a5, 52(sp)
	mv t2, zero
	lui t3, 16
	mulw t0, t1, a5
	mv t1, zero
	addiw a5, t3, -1
	blt zero, s0, label82
	j label909
label86:
	and t3, t0, t2
	andi t4, t3, 1
	bne t4, zero, label89
	srliw t5, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t3, t2, t5
	add t5, t0, t4
	sraiw t2, t3, 1
	sraiw t0, t5, 1
	blt a5, s0, label86
	j label2707
label89:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t5, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t3, t2, t5
	add t5, t0, t4
	sraiw t2, t3, 1
	sraiw t0, t5, 1
	blt a5, s0, label86
	j label2707
label70:
	andi t4, t1, 1
	beq t4, zero, label66
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label65
	mv t1, zero
	mv t2, a5
	mv a5, zero
	blt zero, s0, label86
	j label2707
label93:
	and t4, t2, t0
	andi t3, t4, 1
	bne t3, zero, label96
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	blt a5, s0, label93
	j label2718
label96:
	sh2add t3, a5, s1
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	blt a5, s0, label93
	bne t1, zero, label808
	j label807
label2708:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label65
	mv t1, zero
	mv t2, a5
	mv a5, zero
	blt zero, s0, label86
	j label2707
label21:
	beq t1, zero, label807
label808:
	mv a5, a1
	mv t0, a4
	bne a4, zero, label812
	mv a5, a4
	j label874
label812:
	mv a1, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	blt zero, s0, label49
	j label815
label826:
	mv a5, a1
	mv t0, t2
	bne t2, zero, label812
label2699:
	mv a1, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label875
	j label874
label41:
	and t4, a5, t0
	andi t3, t4, 1
	bne t3, zero, label42
	srliw t4, t0, 31
	srliw t3, a5, 31
	addiw t1, t1, 1
	add t5, t0, t4
	add t4, a5, t3
	sraiw t0, t5, 1
	sraiw a5, t4, 1
	blt t1, s0, label41
	j label826
label42:
	sh2add t4, t1, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t0, 31
	srliw t3, a5, 31
	addiw t1, t1, 1
	add t5, t0, t4
	add t4, a5, t3
	sraiw t0, t5, 1
	sraiw a5, t4, 1
	blt t1, s0, label41
	mv a5, a1
	mv t0, t2
	bne t2, zero, label812
	j label2699
label815:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	blt zero, s0, label45
	j label35
label49:
	andi t4, t3, 1
	bne t4, zero, label50
	andi t4, t1, 1
	beq t4, zero, label2703
label54:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a1, a1, t5
	srliw t5, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t4, t3, t5
	add t5, t1, t6
	sraiw t3, t4, 1
	sraiw t1, t5, 1
	blt t2, s0, label49
	j label815
label45:
	and t4, t0, t2
	andi t3, t4, 1
	bne t3, zero, label48
	srliw t4, t2, 31
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t5, t2, t4
	add t4, t0, t3
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt a5, s0, label45
	j label35
label48:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t4, t2, 31
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t5, t2, t4
	add t4, t0, t3
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt a5, s0, label45
	j label35
label50:
	andi t4, t1, 1
	beq t4, zero, label54
	srliw t5, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t4, t3, t5
	add t5, t1, t6
	sraiw t3, t4, 1
	sraiw t1, t5, 1
	blt t2, s0, label49
	j label815
label35:
	lw a5, 52(sp)
	mv t2, zero
	lui t3, 16
	mulw t0, t1, a5
	mv t1, zero
	addiw a5, t3, -1
	blt zero, s0, label41
	j label826
label2703:
	srliw t5, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t4, t3, t5
	add t5, t1, t6
	sraiw t3, t4, 1
	sraiw t1, t5, 1
	blt t2, s0, label49
	j label815
label2722:
	bne t1, zero, label982
	j label2721
label2731:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label986
	j label2730
label807:
	mv a5, a4
	mv t0, a4
	bne a4, zero, label875
	j label874
label2718:
	bne t1, zero, label808
	j label807
label874:
	lui t0, 8
	addiw a4, t0, -1
	ble a3, a4, label2706
label91:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a3, t1
	lw t1, 108(sp)
	addw t0, a4, t2
	mv a4, a5
	subw a3, t0, t1
	bne a3, zero, label800
	mv a4, a2
	mv a3, zero
	bne a2, zero, label963
	j label962
label2748:
	bne a5, zero, label796
	j label795
label191:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv a0, s2
	mv a1, s2
	mv a2, s3
	ble s2, zero, label381
label1151:
	mv a5, zero
	mv t0, s2
	mv a4, a0
	mv a3, zero
	blt zero, s0, label377
	j label201
label2751:
	lw a4, 52(sp)
	mv a2, a3
	divw a0, a0, a4
	bgt a0, zero, label1151
	j label381
label2767:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label210
	j label2751
label1158:
	mv a4, a2
	mv a3, zero
	beq a2, zero, label1162
label1163:
	mv t2, s2
	mv a5, a2
	mv t1, zero
	mv t0, zero
	blt zero, s0, label216
	j label2950
label1196:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1200
	mv a5, a4
	j label1262
label377:
	and t1, t0, a4
	andi t2, t1, 1
	bne t2, zero, label380
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	blt a3, s0, label377
	j label2794
label380:
	sh2add t1, a3, s1
	lw t0, 0(t1)
	addw a5, a5, t0
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	blt a3, s0, label377
	bne a5, zero, label1159
	j label1158
label1263:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	blt zero, s0, label267
	j label2766
label288:
	and t3, a5, t0
	andi t4, t3, 1
	bne t4, zero, label291
	srliw t3, t0, 31
	srliw t5, a5, 31
	addiw t1, t1, 1
	add t4, t0, t3
	add t3, a5, t5
	sraiw t0, t4, 1
	sraiw a5, t3, 1
	blt t1, s0, label288
	j label2775
label291:
	sh2add t3, t1, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t0, 31
	srliw t5, a5, 31
	addiw t1, t1, 1
	add t4, t0, t3
	add t3, a5, t5
	sraiw t0, t4, 1
	sraiw a5, t3, 1
	blt t1, s0, label288
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1263
	j label2774
label267:
	andi t4, t3, 1
	bne t4, zero, label269
	andi t4, t1, 1
	beq t4, zero, label2770
label268:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw a4, a4, t4
	srliw t6, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t4, t3, t6
	add t6, t1, t5
	sraiw t3, t4, 1
	sraiw t1, t6, 1
	blt t2, s0, label267
	j label1280
label269:
	andi t4, t1, 1
	beq t4, zero, label268
	srliw t6, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t4, t3, t6
	add t6, t1, t5
	sraiw t3, t4, 1
	sraiw t1, t6, 1
	blt t2, s0, label267
	j label1280
label216:
	and t3, t2, a5
	andi t4, t3, 1
	bne t4, zero, label219
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	blt t0, s0, label216
	j label2756
label219:
	sh2add t2, t0, s1
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	blt t0, s0, label216
	bne t1, zero, label1196
	j label2950
label1280:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	bge zero, s0, label2962
label278:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label281
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label278
	j label2772
label281:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label278
	lw a5, 52(sp)
	lui t3, 16
	mv t1, zero
	mulw t0, t2, a5
	addiw a5, t3, -1
	mv t2, zero
	blt zero, s0, label288
label1323:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1263
	j label2774
label1200:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label224
label1234:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1200
label2761:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1263
	j label1262
label246:
	and t4, a5, t0
	andi t3, t4, 1
	bne t3, zero, label247
	srliw t4, t0, 31
	srliw t3, a5, 31
	addiw t1, t1, 1
	add t5, t0, t4
	add t4, a5, t3
	sraiw t0, t5, 1
	sraiw a5, t4, 1
	blt t1, s0, label246
	j label1234
label247:
	sh2add t4, t1, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t0, 31
	srliw t3, a5, 31
	addiw t1, t1, 1
	add t5, t0, t4
	add t4, a5, t3
	sraiw t0, t5, 1
	sraiw a5, t4, 1
	blt t1, s0, label246
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1200
	j label2761
label224:
	blt t2, s0, label229
	j label1203
label1207:
	andi t4, t1, 1
	bne t4, zero, label230
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	j label224
label229:
	andi t4, t3, 1
	bne t4, zero, label232
	j label1207
label230:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a3, a3, t5
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label229
	j label1203
label232:
	andi t4, t1, 1
	beq t4, zero, label230
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label229
	mv t2, a5
	mv t1, zero
	mv a5, zero
	bge zero, s0, label2758
label250:
	and t3, t0, t2
	andi t4, t3, 1
	bne t4, zero, label253
	srliw t3, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t2, t3
	add t3, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label250
	j label2758
label253:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t3, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t2, t3
	add t3, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label250
label2758:
	lw t2, 52(sp)
	lui t3, 16
	addiw a5, t3, -1
	mulw t0, t1, t2
	mv t1, zero
	mv t2, zero
	blt zero, s0, label246
	j label1234
label2770:
	srliw t6, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t4, t3, t6
	add t6, t1, t5
	sraiw t3, t4, 1
	sraiw t1, t6, 1
	blt t2, s0, label267
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label278
	j label2962
label1203:
	mv t2, a5
	mv t1, zero
	mv a5, zero
	blt zero, s0, label250
	j label2758
label2962:
	lw a5, 52(sp)
	lui t3, 16
	mv t1, zero
	mulw t0, t2, a5
	addiw a5, t3, -1
	mv t2, zero
	blt zero, s0, label288
	j label1323
label2950:
	mv a5, a4
	mv t0, a4
	j label256
label2756:
	bne t1, zero, label1196
	j label2950
label256:
	bne t0, zero, label1263
label1262:
	lui t0, 8
	addiw a4, t0, -1
	bgt a2, a4, label261
label2765:
	lw t0, 52(sp)
	mv a4, a5
	divw a2, a2, t0
	bne a2, zero, label1163
	j label2767
label261:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw t0, a4, t2
	mv a4, a5
	subw a2, t0, t1
	bne a2, zero, label1163
	j label2768
label2774:
	lui t0, 8
	addiw a4, t0, -1
	bgt a2, a4, label261
	j label2765
label2775:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1263
	j label2774
label2772:
	lw a5, 52(sp)
	lui t3, 16
	mv t1, zero
	mulw t0, t2, a5
	addiw a5, t3, -1
	mv t2, zero
	blt zero, s0, label288
	j label1323
label210:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a0, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	mv a2, a3
	subw a0, a4, a5
	bgt a0, zero, label1151
	j label381
label2768:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label210
	j label2751
label2794:
	bne a5, zero, label1159
	j label1158
label381:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv s4, s3
	bge s3, s0, label1513
label1514:
	mv a2, s3
	mv a0, s2
	mv a1, s4
	ble s4, zero, label583
label1893:
	mv t0, s2
	mv a3, a1
	mv a5, zero
	mv a4, zero
	blt zero, s0, label765
	j label2842
label583:
	jal putint
	li a0, 10
	jal putch
	addiw s4, s4, 1
	blt s4, s0, label1514
	j label1513
label598:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a1, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	mv a2, a3
	subw a1, a4, a5
	bgt a1, zero, label1893
	j label583
label1901:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1906
	j label1905
label765:
	and t2, t0, a3
	andi t1, t2, 1
	bne t1, zero, label766
	srliw t0, a3, 31
	addiw a4, a4, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	blt a4, s0, label765
	j label589
label766:
	sh2add t0, a4, s1
	lw t1, 0(t0)
	addw a5, a5, t1
	srliw t0, a3, 31
	addiw a4, a4, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	blt a4, s0, label765
	beq a5, zero, label1901
label1902:
	mv a4, a0
	mv a3, a2
	mv a0, zero
	beq a2, zero, label2844
label2083:
	mv t1, zero
	mv t2, s2
	mv t0, a3
	mv a5, zero
	blt zero, s0, label689
	j label2086
label2873:
	mv a5, a4
	mv t0, a4
	j label696
label689:
	and t3, t2, t0
	andi t4, t3, 1
	bne t4, zero, label690
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	blt a5, s0, label689
	j label2086
label690:
	sh2add t3, a5, s1
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	blt a5, s0, label689
	bne t1, zero, label2102
	j label2873
label696:
	bne t0, zero, label2106
label2105:
	lui t0, 8
	addiw a4, t0, -1
	bgt a3, a4, label701
label2876:
	lw t0, 52(sp)
	mv a4, a5
	divw a3, a3, t0
	bne a3, zero, label2083
	j label2878
label2106:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	blt zero, s0, label726
	j label2877
label701:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a3, t1
	lw t1, 108(sp)
	addw t0, a4, t2
	mv a4, a5
	subw a3, t0, t1
	bne a3, zero, label2083
	j label2879
label2882:
	lui t0, 8
	addiw a4, t0, -1
	bgt a3, a4, label701
	j label2876
label2883:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label2106
	j label2882
label726:
	andi t4, t3, 1
	bne t4, zero, label731
	andi t4, t1, 1
	beq t4, zero, label2169
label730:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	blt t2, s0, label726
	j label2877
label731:
	andi t4, t1, 1
	beq t4, zero, label730
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	blt t2, s0, label726
	j label2877
label2169:
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	blt t2, s0, label726
label2877:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	bge zero, s0, label2127
label712:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label715
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label712
	j label2880
label715:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label712
	lw t1, 52(sp)
	lui t3, 16
	addiw a5, t3, -1
	mulw t0, t2, t1
	mv t1, zero
	mv t2, zero
	bge zero, s0, label2146
label722:
	and t3, a5, t0
	andi t4, t3, 1
	bne t4, zero, label725
	srliw t5, t0, 31
	srliw t4, a5, 31
	addiw t1, t1, 1
	add t3, t0, t5
	add t5, a5, t4
	sraiw t0, t3, 1
	sraiw a5, t5, 1
	blt t1, s0, label722
	j label2883
label725:
	sh2add t3, t1, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t5, t0, 31
	srliw t4, a5, 31
	addiw t1, t1, 1
	add t3, t0, t5
	add t5, a5, t4
	sraiw t0, t3, 1
	sraiw a5, t5, 1
	blt t1, s0, label722
	mv a5, a4
	mv t0, t2
	bne t2, zero, label2106
	j label2882
label1906:
	mv t1, zero
	mv t2, s2
	mv t0, a2
	mv a5, zero
	blt zero, s0, label676
	j label2846
label1931:
	lui t0, 8
	addiw a4, t0, -1
	ble a2, a4, label2850
label611:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw t0, a4, t2
	mv a4, a5
	subw a2, t0, t1
	bne a2, zero, label1906
	lui a4, 8
	addiw a2, a4, -1
	bgt a1, a2, label598
	j label2845
label592:
	bne a2, zero, label1906
	j label1905
label2850:
	lw t0, 52(sp)
	mv a4, a5
	divw a2, a2, t0
	j label592
label1932:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	blt zero, s0, label637
	j label2851
label2855:
	lui t0, 8
	addiw a4, t0, -1
	bgt a2, a4, label611
	j label2850
label633:
	and t4, a5, t0
	andi t3, t4, 1
	bne t3, zero, label636
	srliw t3, t0, 31
	srliw t5, a5, 31
	addiw t1, t1, 1
	add t4, t0, t3
	add t3, a5, t5
	sraiw t0, t4, 1
	sraiw a5, t3, 1
	blt t1, s0, label633
	j label2856
label636:
	sh2add t4, t1, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t0, 31
	srliw t5, a5, 31
	addiw t1, t1, 1
	add t4, t0, t3
	add t3, a5, t5
	sraiw t0, t4, 1
	sraiw a5, t3, 1
	blt t1, s0, label633
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1932
	j label2855
label2851:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label623
	j label1953
label637:
	andi t4, t3, 1
	bne t4, zero, label640
	andi t4, t1, 1
	bne t4, zero, label642
	j label2858
label640:
	andi t4, t1, 1
	bne t4, zero, label1996
label642:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label637
	j label2851
label623:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label624
	srliw t4, t1, 31
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t5, t1, t4
	add t4, t0, t3
	sraiw t1, t5, 1
	sraiw t0, t4, 1
	blt a5, s0, label623
	j label1953
label624:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t5, t1, t4
	add t4, t0, t3
	sraiw t1, t5, 1
	sraiw t0, t4, 1
	blt a5, s0, label623
	lw t1, 52(sp)
	lui t3, 16
	addiw a5, t3, -1
	mulw t0, t2, t1
	mv t1, zero
	mv t2, zero
	blt zero, s0, label633
	j label1972
label1927:
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1932
	j label1931
label1928:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label2009
	j label2849
label676:
	and t4, t2, t0
	andi t3, t4, 1
	bne t3, zero, label679
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	blt a5, s0, label676
	j label2871
label679:
	sh2add t3, a5, s1
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	blt a5, s0, label676
	bne t1, zero, label1928
	j label1927
label2009:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	blt zero, s0, label670
	j label2012
label2863:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1932
	j label1931
label662:
	and t4, a5, t0
	andi t3, t4, 1
	bne t3, zero, label665
	srliw t3, t0, 31
	srliw t5, a5, 31
	addiw t1, t1, 1
	add t4, t0, t3
	add t3, a5, t5
	sraiw t0, t4, 1
	sraiw a5, t3, 1
	blt t1, s0, label662
	j label2864
label665:
	sh2add t3, t1, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t0, 31
	srliw t5, a5, 31
	addiw t1, t1, 1
	add t4, t0, t3
	add t3, a5, t5
	sraiw t0, t4, 1
	sraiw a5, t3, 1
	blt t1, s0, label662
	mv a5, a3
	mv t0, t2
	bne t2, zero, label2009
	j label2863
label670:
	andi t4, t3, 1
	bne t4, zero, label675
	j label2051
label671:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a3, a3, t5
	srliw t5, t3, 31
	srliw t4, t1, 31
	addiw t2, t2, 1
	add t6, t3, t5
	add t5, t1, t4
	sraiw t3, t6, 1
	sraiw t1, t5, 1
	blt t2, s0, label670
	j label2012
label675:
	andi t4, t1, 1
	beq t4, zero, label671
	srliw t5, t3, 31
	srliw t4, t1, 31
	addiw t2, t2, 1
	add t6, t3, t5
	add t5, t1, t4
	sraiw t3, t6, 1
	sraiw t1, t5, 1
	blt t2, s0, label670
	j label2012
label2051:
	andi t4, t1, 1
	bne t4, zero, label671
	srliw t5, t3, 31
	srliw t4, t1, 31
	addiw t2, t2, 1
	add t6, t3, t5
	add t5, t1, t4
	sraiw t3, t6, 1
	sraiw t1, t5, 1
	blt t2, s0, label670
label2012:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	bge zero, s0, label656
label666:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label669
	srliw t5, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t3, t1, t5
	add t5, t0, t4
	sraiw t1, t3, 1
	sraiw t0, t5, 1
	blt a5, s0, label666
	j label656
label669:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t5, t1, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t3, t1, t5
	add t5, t0, t4
	sraiw t1, t3, 1
	sraiw t0, t5, 1
	blt a5, s0, label666
label656:
	lw a5, 52(sp)
	lui t3, 16
	mv t1, zero
	mulw t0, t2, a5
	addiw a5, t3, -1
	mv t2, zero
	blt zero, s0, label662
	j label2023
label1953:
	lw t1, 52(sp)
	lui t3, 16
	addiw a5, t3, -1
	mulw t0, t2, t1
	mv t1, zero
	mv t2, zero
	blt zero, s0, label633
	j label1972
label2858:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label637
	j label2851
label1996:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label637
	j label2851
label1972:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1932
	j label2855
label2856:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1932
	j label2855
label2086:
	bne t1, zero, label2102
	j label2873
label2871:
	bne t1, zero, label1928
	j label1927
label2880:
	lw t1, 52(sp)
	lui t3, 16
	addiw a5, t3, -1
	mulw t0, t2, t1
	mv t1, zero
	mv t2, zero
	blt zero, s0, label722
label2146:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label2106
	j label2882
label2864:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label2009
	j label2863
label2849:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1932
	j label1931
label2846:
	bne t1, zero, label1928
	j label1927
label589:
	bne a5, zero, label1902
	j label1901
label2127:
	lw t1, 52(sp)
	lui t3, 16
	addiw a5, t3, -1
	mulw t0, t2, t1
	mv t1, zero
	mv t2, zero
	blt zero, s0, label722
	j label2146
label1905:
	lui a4, 8
	addiw a2, a4, -1
	bgt a1, a2, label598
label2845:
	lw a4, 52(sp)
	mv a2, a3
	divw a1, a1, a4
	bgt a1, zero, label1893
	j label583
label2878:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1906
	j label1905
label2102:
	mv a5, a0
	mv t0, a4
	bne a4, zero, label2183
	mv a5, a4
	j label696
label2183:
	mv a0, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	blt zero, s0, label759
	j label2186
label2197:
	mv a5, a0
	mv t0, t2
	bne t2, zero, label2183
label2890:
	mv a0, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label2106
	j label2105
label751:
	and t3, a5, t0
	andi t4, t3, 1
	bne t4, zero, label752
	srliw t4, t0, 31
	srliw t3, a5, 31
	addiw t1, t1, 1
	add t5, t0, t4
	add t4, a5, t3
	sraiw t0, t5, 1
	sraiw a5, t4, 1
	blt t1, s0, label751
	j label2197
label752:
	sh2add t3, t1, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t0, 31
	srliw t3, a5, 31
	addiw t1, t1, 1
	add t5, t0, t4
	add t4, a5, t3
	sraiw t0, t5, 1
	sraiw a5, t4, 1
	blt t1, s0, label751
	mv a5, a0
	mv t0, t2
	bne t2, zero, label2183
	j label2890
label2186:
	mv t2, a5
	mv t1, zero
	mv a5, zero
	blt zero, s0, label755
	j label745
label759:
	andi t4, t3, 1
	bne t4, zero, label761
	andi t4, t1, 1
	beq t4, zero, label2894
label760:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw a0, a0, t4
	srliw t5, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t4, t3, t5
	add t5, t1, t6
	sraiw t3, t4, 1
	sraiw t1, t5, 1
	blt t2, s0, label759
	j label2186
label745:
	lw a5, 52(sp)
	mv t2, zero
	lui t3, 16
	mulw t0, t1, a5
	mv t1, zero
	addiw a5, t3, -1
	blt zero, s0, label751
	j label2197
label755:
	and t3, t0, t2
	andi t4, t3, 1
	bne t4, zero, label758
	srliw t4, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t3, t2, t4
	add t4, t0, t5
	sraiw t2, t3, 1
	sraiw t0, t4, 1
	blt a5, s0, label755
	j label745
label758:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t4, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t3, t2, t4
	add t4, t0, t5
	sraiw t2, t3, 1
	sraiw t0, t4, 1
	blt a5, s0, label755
	j label745
label761:
	andi t4, t1, 1
	beq t4, zero, label760
	srliw t5, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t4, t3, t5
	add t5, t1, t6
	sraiw t3, t4, 1
	sraiw t1, t5, 1
	blt t2, s0, label759
	j label2186
label2894:
	srliw t5, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t4, t3, t5
	add t5, t1, t6
	sraiw t3, t4, 1
	sraiw t1, t5, 1
	blt t2, s0, label759
	j label2186
label2842:
	bne a5, zero, label1902
	j label1901
label2879:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1906
	j label1905
label1513:
	mv a0, zero
label384:
	bge a0, s0, label1517
	mv a3, s3
	mv a2, s2
	mv a1, a0
	ble a0, zero, label390
label1522:
	mv t1, s2
	mv a4, a1
	mv t0, zero
	mv a5, zero
	blt zero, s0, label573
	j label397
label390:
	sh2add a3, a0, s1
	lw a1, 0(a3)
	bne a2, a1, label1529
	addiw a0, a0, 1
	j label384
label1705:
	mv t3, s2
	mv t0, a3
	mv t2, zero
	mv t1, zero
	blt zero, s0, label566
	j label494
label1716:
	lui t1, 8
	addiw a5, t1, -1
	ble a3, a5, label2821
label532:
	lw t2, 52(sp)
	lui t3, 16
	divw a5, a3, t2
	lw t2, 108(sp)
	addw t1, a5, t3
	mv a5, t0
	subw a3, t1, t2
	bne a3, zero, label1705
	lui a5, 8
	addiw a3, a5, -1
	ble a1, a3, label2819
label572:
	lw t0, 52(sp)
	lui t1, 16
	divw a3, a1, t0
	lw t0, 108(sp)
	addw a5, a3, t1
	mv a3, a4
	subw a1, a5, t0
	bgt a1, zero, label1522
	j label390
label2821:
	lw t1, 52(sp)
	mv a5, t0
	divw a3, a3, t1
	bne a3, zero, label1705
	j label2827
label2822:
	lui t1, 8
	addiw a5, t1, -1
	bgt a3, a5, label532
	j label2821
label516:
	and t4, t0, t1
	andi t5, t4, 1
	bne t5, zero, label517
	srliw t5, t1, 31
	srliw t6, t0, 31
	addiw t2, t2, 1
	add t4, t1, t5
	add t5, t0, t6
	sraiw t1, t4, 1
	sraiw t0, t5, 1
	blt t2, s0, label516
	j label1731
label517:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t5, t1, 31
	srliw t6, t0, 31
	addiw t2, t2, 1
	add t4, t1, t5
	add t5, t0, t6
	sraiw t1, t4, 1
	sraiw t0, t5, 1
	blt t2, s0, label516
	mv t0, a5
	mv t1, t3
	beq t3, zero, label2822
label1717:
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
	blt zero, s0, label524
	j label1720
label1731:
	mv t0, a5
	mv t1, t3
	bne t3, zero, label1717
	j label2822
label524:
	andi t5, t4, 1
	bne t5, zero, label529
	andi t5, t2, 1
	beq t5, zero, label1763
label526:
	sh2add t5, t3, s1
	lw t6, 0(t5)
	addw a5, a5, t6
	srliw a6, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add t5, t4, a6
	add a6, t2, t6
	sraiw t4, t5, 1
	sraiw t2, a6, 1
	blt t3, s0, label524
	j label1720
label529:
	andi t5, t2, 1
	beq t5, zero, label526
	srliw a6, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add t5, t4, a6
	add a6, t2, t6
	sraiw t4, t5, 1
	sraiw t2, a6, 1
	blt t3, s0, label524
label1720:
	mv t3, t0
	mv t2, zero
	mv t0, zero
	bge zero, s0, label510
label520:
	and t5, t1, t3
	andi t4, t5, 1
	bne t4, zero, label521
	srliw t5, t3, 31
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t6, t3, t5
	add t5, t1, t4
	sraiw t3, t6, 1
	sraiw t1, t5, 1
	blt t0, s0, label520
	j label510
label521:
	sh2add t4, t0, s1
	lw t5, 0(t4)
	addw t2, t2, t5
	srliw t5, t3, 31
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t6, t3, t5
	add t5, t1, t4
	sraiw t3, t6, 1
	sraiw t1, t5, 1
	blt t0, s0, label520
label510:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mulw t1, t2, t0
	mv t2, zero
	addiw t0, t4, -1
	blt zero, s0, label516
	j label1731
label1712:
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1717
	j label1716
label566:
	and t5, t3, t0
	andi t4, t5, 1
	bne t4, zero, label569
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t4, t0, t3
	mv t3, zero
	sraiw t0, t4, 1
	blt t1, s0, label566
	j label2836
label569:
	sh2add t4, t1, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t4, t0, t3
	mv t3, zero
	sraiw t0, t4, 1
	blt t1, s0, label566
	bne t2, zero, label1713
	j label1712
label1763:
	srliw a6, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add t5, t4, a6
	add a6, t2, t6
	sraiw t4, t5, 1
	sraiw t2, a6, 1
	blt t3, s0, label524
	j label1720
label1538:
	mv a5, a2
	mv a4, a3
	mv a2, zero
	bne a3, zero, label1542
	j label1541
label573:
	and t2, t1, a4
	andi t3, t2, 1
	bne t3, zero, label576
	srliw t1, a4, 31
	addiw a5, a5, 1
	add t2, a4, t1
	mv t1, zero
	sraiw a4, t2, 1
	blt a5, s0, label573
	j label2840
label576:
	sh2add t2, a5, s1
	lw t1, 0(t2)
	addw t0, t0, t1
	srliw t1, a4, 31
	addiw a5, a5, 1
	add t2, a4, t1
	mv t1, zero
	sraiw a4, t2, 1
	blt a5, s0, label573
	bne t0, zero, label1538
	j label1537
label1542:
	mv t2, zero
	mv t3, s2
	mv t1, a4
	mv t0, zero
	blt zero, s0, label479
	j label407
label1617:
	mv a5, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
	blt zero, s0, label451
	j label1620
label2813:
	lui t1, 8
	addiw a5, t1, -1
	bgt a4, a5, label478
	j label2807
label472:
	and t4, t0, t1
	andi t5, t4, 1
	bne t5, zero, label475
	srliw t4, t1, 31
	srliw t5, t0, 31
	addiw t2, t2, 1
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	blt t2, s0, label472
	j label2814
label475:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t1, 31
	srliw t5, t0, 31
	addiw t2, t2, 1
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	blt t2, s0, label472
	mv t0, a5
	mv t1, t3
	bne t3, zero, label1617
	j label2813
label478:
	lw t2, 52(sp)
	lui t3, 16
	divw a5, a4, t2
	lw t2, 108(sp)
	addw t1, a5, t3
	mv a5, t0
	subw a4, t1, t2
	bne a4, zero, label1542
	mv a5, a3
	mv a4, zero
	bne a3, zero, label1705
	j label1704
label2808:
	lw t2, 52(sp)
	lui t4, 16
	addiw t0, t4, -1
	mulw t1, t3, t2
	mv t2, zero
	mv t3, zero
	j label467
label451:
	andi t5, t4, 1
	beq t5, zero, label1624
	andi t5, t2, 1
	bne t5, zero, label1629
label453:
	sh2add t6, t3, s1
	lw t5, 0(t6)
	addw a5, a5, t5
	srliw t6, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t5, t4, t6
	add t6, t2, a6
	sraiw t4, t5, 1
	sraiw t2, t6, 1
	blt t3, s0, label451
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label462
	j label2808
label467:
	blt t2, s0, label472
	j label1663
label462:
	and t4, t1, t2
	andi t5, t4, 1
	bne t5, zero, label463
	srliw t4, t2, 31
	srliw t6, t1, 31
	addiw t0, t0, 1
	add t5, t2, t4
	add t4, t1, t6
	sraiw t2, t5, 1
	sraiw t1, t4, 1
	blt t0, s0, label462
	j label1644
label463:
	sh2add t4, t0, s1
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t2, 31
	srliw t6, t1, 31
	addiw t0, t0, 1
	add t5, t2, t4
	add t4, t1, t6
	sraiw t2, t5, 1
	sraiw t1, t4, 1
	blt t0, s0, label462
	lw t2, 52(sp)
	lui t4, 16
	addiw t0, t4, -1
	mulw t1, t3, t2
	mv t2, zero
	mv t3, zero
	blt zero, s0, label472
	j label1663
label1624:
	andi t5, t2, 1
	bne t5, zero, label453
	srliw t6, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t5, t4, t6
	add t6, t2, a6
	sraiw t4, t5, 1
	sraiw t2, t6, 1
	blt t3, s0, label451
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label462
	j label2808
label1549:
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1617
	j label1616
label1550:
	mv t0, a2
	mv t1, a5
	bne a5, zero, label1554
	j label1553
label479:
	and t4, t3, t1
	andi t5, t4, 1
	bne t5, zero, label480
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	sraiw t1, t3, 1
	mv t3, zero
	blt t0, s0, label479
	j label407
label480:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	sraiw t1, t3, 1
	mv t3, zero
	blt t0, s0, label479
	bne t2, zero, label1550
	j label1549
label1554:
	mv t2, t1
	mv t4, t0
	mv a2, zero
	mv t3, zero
	blt zero, s0, label416
	j label1557
label1588:
	mv t0, a2
	mv t1, t3
	bne t3, zero, label1554
label2803:
	mv a2, t0
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1617
	j label1616
label433:
	and t4, t0, t1
	andi t5, t4, 1
	bne t5, zero, label434
	srliw t4, t1, 31
	srliw t6, t0, 31
	addiw t2, t2, 1
	add t5, t1, t4
	add t4, t0, t6
	sraiw t1, t5, 1
	sraiw t0, t4, 1
	blt t2, s0, label433
	j label1588
label434:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t1, 31
	srliw t6, t0, 31
	addiw t2, t2, 1
	add t5, t1, t4
	add t4, t0, t6
	sraiw t1, t5, 1
	sraiw t0, t4, 1
	blt t2, s0, label433
	mv t0, a2
	mv t1, t3
	bne t3, zero, label1554
	j label2803
label416:
	andi t5, t4, 1
	bne t5, zero, label417
	andi t5, t2, 1
	bne t5, zero, label421
	j label2799
label417:
	andi t5, t2, 1
	bne t5, zero, label418
label421:
	sh2add t5, t3, s1
	lw t6, 0(t5)
	addw a2, a2, t6
	srliw t6, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t5, t4, t6
	add t6, t2, a6
	sraiw t4, t5, 1
	sraiw t2, t6, 1
	blt t3, s0, label416
	mv t3, t0
	mv t2, zero
	mv t0, zero
	blt zero, s0, label437
label2798:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mulw t1, t2, t0
	mv t2, zero
	addiw t0, t4, -1
	blt zero, s0, label433
	j label1588
label437:
	and t4, t1, t3
	andi t5, t4, 1
	bne t5, zero, label440
	srliw t5, t3, 31
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t6, t3, t5
	add t5, t1, t4
	sraiw t3, t6, 1
	sraiw t1, t5, 1
	blt t0, s0, label437
	j label2798
label440:
	sh2add t5, t0, s1
	lw t4, 0(t5)
	addw t2, t2, t4
	srliw t5, t3, 31
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t6, t3, t5
	add t5, t1, t4
	sraiw t3, t6, 1
	sraiw t1, t5, 1
	blt t0, s0, label437
	j label2798
label418:
	srliw t6, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t5, t4, t6
	add t6, t2, a6
	sraiw t4, t5, 1
	sraiw t2, t6, 1
	blt t3, s0, label416
	mv t3, t0
	mv t2, zero
	mv t0, zero
	blt zero, s0, label437
	j label2798
label1644:
	lw t2, 52(sp)
	lui t4, 16
	addiw t0, t4, -1
	mulw t1, t3, t2
	mv t2, zero
	mv t3, zero
	blt zero, s0, label472
	j label1663
label1620:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label462
	j label2808
label1629:
	srliw t6, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t5, t4, t6
	add t6, t2, a6
	sraiw t4, t5, 1
	sraiw t2, t6, 1
	blt t3, s0, label451
	j label1620
label2799:
	srliw t6, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t5, t4, t6
	add t6, t2, a6
	sraiw t4, t5, 1
	sraiw t2, t6, 1
	blt t3, s0, label416
	mv t3, t0
	mv t2, zero
	mv t0, zero
	blt zero, s0, label437
	j label2798
label1713:
	mv t0, a4
	mv t1, a5
	bne a5, zero, label1794
	j label2820
label2836:
	bne t2, zero, label1713
	j label1712
label1794:
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
	blt zero, s0, label560
	j label1797
label2829:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1717
	j label1716
label2830:
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1794
	j label2829
label560:
	andi t5, t4, 1
	bne t5, zero, label565
	j label561
label564:
	sh2add t6, t3, s1
	lw t5, 0(t6)
	addw a4, a4, t5
	srliw t6, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t5, t4, t6
	add t6, t2, a6
	sraiw t4, t5, 1
	sraiw t2, t6, 1
	blt t3, s0, label560
	j label1797
label565:
	andi t5, t2, 1
	beq t5, zero, label564
	srliw t6, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t5, t4, t6
	add t6, t2, a6
	sraiw t4, t5, 1
	sraiw t2, t6, 1
	blt t3, s0, label560
	j label1797
label561:
	andi t5, t2, 1
	bne t5, zero, label564
	srliw t6, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t5, t4, t6
	add t6, t2, a6
	sraiw t4, t5, 1
	sraiw t2, t6, 1
	blt t3, s0, label560
label1797:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	bge zero, s0, label546
label556:
	and t4, t1, t2
	andi t5, t4, 1
	bne t5, zero, label557
	srliw t5, t2, 31
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t6, t2, t5
	add t5, t1, t4
	sraiw t2, t6, 1
	sraiw t1, t5, 1
	blt t0, s0, label556
	j label546
label557:
	sh2add t4, t0, s1
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t5, t2, 31
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t6, t2, t5
	add t5, t1, t4
	sraiw t2, t6, 1
	sraiw t1, t5, 1
	blt t0, s0, label556
label546:
	lw t0, 52(sp)
	lui t4, 16
	mv t2, zero
	mulw t1, t3, t0
	addiw t0, t4, -1
	mv t3, zero
	bge zero, s0, label1808
label552:
	and t4, t0, t1
	andi t5, t4, 1
	bne t5, zero, label555
	srliw t4, t1, 31
	srliw t6, t0, 31
	addiw t2, t2, 1
	add t5, t1, t4
	add t4, t0, t6
	sraiw t1, t5, 1
	sraiw t0, t4, 1
	blt t2, s0, label552
	j label2830
label555:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t1, 31
	srliw t6, t0, 31
	addiw t2, t2, 1
	add t5, t1, t4
	add t4, t0, t6
	sraiw t1, t5, 1
	sraiw t0, t4, 1
	blt t2, s0, label552
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1794
	j label2829
label2807:
	lw t1, 52(sp)
	mv a5, t0
	divw a4, a4, t1
	bne a4, zero, label1542
	j label2816
label407:
	bne t2, zero, label1550
	j label1549
label2814:
	mv t0, a5
	mv t1, t3
	bne t3, zero, label1617
	j label2813
label1663:
	mv t0, a5
	mv t1, t3
	bne t3, zero, label1617
	j label2813
label494:
	bne t2, zero, label1713
	j label1712
label2819:
	lw a5, 52(sp)
	mv a3, a4
	divw a1, a1, a5
	bgt a1, zero, label1522
	j label390
label2827:
	lui a5, 8
	addiw a3, a5, -1
	bgt a1, a3, label572
	j label2819
label2820:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1717
	j label1716
label2816:
	mv a5, a3
	mv a4, zero
	bne a3, zero, label1705
	j label1704
label1616:
	lui t1, 8
	addiw a5, t1, -1
	bgt a4, a5, label478
	j label2807
label1537:
	mv a5, a3
	mv a4, zero
	bne a3, zero, label1705
	j label1704
label2840:
	bne t0, zero, label1538
	j label1537
label397:
	bne t0, zero, label1538
	j label1537
label201:
	beq a5, zero, label1158
label1159:
	mv a4, a1
	mv a3, a2
	mv a1, zero
	bne a2, zero, label1340
	mv a4, a2
	mv a3, zero
	j label1162
label1340:
	mv t2, s2
	mv a5, a3
	mv t1, zero
	mv t0, zero
	blt zero, s0, label301
	j label1343
label2785:
	lui t0, 8
	addiw a4, t0, -1
	bgt a3, a4, label376
	j label2784
label360:
	and t3, a5, t0
	andi t4, t3, 1
	bne t4, zero, label361
	srliw t4, t0, 31
	srliw t5, a5, 31
	addiw t1, t1, 1
	add t3, t0, t4
	add t4, a5, t5
	sraiw t0, t3, 1
	sraiw a5, t4, 1
	blt t1, s0, label360
	j label1440
label361:
	sh2add t4, t1, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t0, 31
	srliw t5, a5, 31
	addiw t1, t1, 1
	add t3, t0, t4
	add t4, a5, t5
	sraiw t0, t3, 1
	sraiw a5, t4, 1
	blt t1, s0, label360
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1426
	j label2785
label376:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a3, t1
	lw t1, 108(sp)
	addw t0, a4, t2
	mv a4, a5
	subw a3, t0, t1
	bne a3, zero, label1340
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1163
	j label1162
label1426:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	blt zero, s0, label368
	j label1429
label1440:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1426
	j label2785
label1429:
	mv t2, a5
	mv t1, zero
	mv a5, zero
	blt zero, s0, label364
	j label354
label368:
	andi t4, t3, 1
	bne t4, zero, label369
	andi t4, t1, 1
	bne t4, zero, label372
	j label2788
label369:
	andi t4, t1, 1
	bne t4, zero, label370
label372:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label368
	j label1429
label354:
	lw a5, 52(sp)
	mv t2, zero
	lui t3, 16
	mulw t0, t1, a5
	mv t1, zero
	addiw a5, t3, -1
	blt zero, s0, label360
	j label1440
label364:
	and t3, t0, t2
	andi t4, t3, 1
	bne t4, zero, label365
	srliw t4, t2, 31
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t5, t2, t4
	add t4, t0, t3
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt a5, s0, label364
	j label354
label365:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t4, t2, 31
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t5, t2, t4
	add t4, t0, t3
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt a5, s0, label364
	j label354
label370:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label368
	j label1429
label301:
	and t4, t2, a5
	andi t3, t4, 1
	bne t3, zero, label302
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	blt t0, s0, label301
	j label1343
label302:
	sh2add t3, t0, s1
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	blt t0, s0, label301
	beq t1, zero, label2777
label1359:
	mv a5, a1
	mv t0, a4
	bne a4, zero, label1363
	mv a5, a4
	j label1425
label1363:
	mv t1, t0
	mv t3, a5
	mv a1, zero
	mv t2, zero
	blt zero, s0, label314
	j label1366
label1397:
	mv a5, a1
	mv t0, t2
	bne t2, zero, label1363
label2781:
	mv a1, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1426
	j label1425
label331:
	and t3, a5, t0
	andi t4, t3, 1
	bne t4, zero, label332
	srliw t5, t0, 31
	srliw t4, a5, 31
	addiw t1, t1, 1
	add t3, t0, t5
	add t5, a5, t4
	sraiw t0, t3, 1
	sraiw a5, t5, 1
	blt t1, s0, label331
	j label1397
label332:
	sh2add t4, t1, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t5, t0, 31
	srliw t4, a5, 31
	addiw t1, t1, 1
	add t3, t0, t5
	add t5, a5, t4
	sraiw t0, t3, 1
	sraiw a5, t5, 1
	blt t1, s0, label331
	mv a5, a1
	mv t0, t2
	bne t2, zero, label1363
	j label2781
label314:
	andi t4, t3, 1
	beq t4, zero, label315
	andi t4, t1, 1
	bne t4, zero, label1379
label317:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw a1, a1, t4
	srliw t6, t3, 31
	srliw t4, t1, 31
	addiw t2, t2, 1
	add t5, t3, t6
	add t6, t1, t4
	sraiw t3, t5, 1
	sraiw t1, t6, 1
	blt t2, s0, label314
	mv t1, zero
	mv t2, a5
	mv a5, zero
	blt zero, s0, label335
label2779:
	lw t2, 52(sp)
	lui t3, 16
	addiw a5, t3, -1
	mulw t0, t1, t2
	mv t1, zero
	mv t2, zero
	blt zero, s0, label331
	j label1397
label335:
	and t4, t0, t2
	andi t3, t4, 1
	bne t3, zero, label336
	srliw t3, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t2, t3
	add t3, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label335
	j label2779
label336:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t3, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t2, t3
	add t3, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t3, 1
	blt a5, s0, label335
	j label2779
label1366:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	blt zero, s0, label335
	j label2779
label315:
	andi t4, t1, 1
	bne t4, zero, label317
	srliw t6, t3, 31
	srliw t4, t1, 31
	addiw t2, t2, 1
	add t5, t3, t6
	add t6, t1, t4
	sraiw t3, t5, 1
	sraiw t1, t6, 1
	blt t2, s0, label314
	j label1366
label2788:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label368
	j label1429
label1379:
	srliw t6, t3, 31
	srliw t4, t1, 31
	addiw t2, t2, 1
	add t5, t3, t6
	add t6, t1, t4
	sraiw t3, t5, 1
	sraiw t1, t6, 1
	blt t2, s0, label314
	j label1366
label2777:
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1426
label1425:
	lui t0, 8
	addiw a4, t0, -1
	bgt a3, a4, label376
label2784:
	lw t0, 52(sp)
	mv a4, a5
	divw a3, a3, t0
	bne a3, zero, label1340
	j label2792
label1343:
	bne t1, zero, label1359
	j label2777
label2792:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1163
	j label1162
label11:
	bne a5, zero, label796
	j label795
label1529:
	mv a0, s2
label577:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s0, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 112
	ret
label1704:
	lui a5, 8
	addiw a3, a5, -1
	bgt a1, a3, label572
	j label2819
label1162:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label210
	j label2751
label1553:
	mv a2, t0
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1617
	j label1616
label799:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label963
	j label962
label1541:
	mv a5, a3
	mv a4, zero
	bne a3, zero, label1705
	j label1704
label989:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label132
	j label2724
label1557:
	mv t3, t0
	mv t2, zero
	mv t0, zero
	blt zero, s0, label437
	j label2798
label2023:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label2009
	j label2863
label2766:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label278
	j label2962
label2844:
	mv a4, a2
	mv a3, zero
	j label592
label1517:
	mv a0, zero
	j label577
label2734:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label170
	j label2932
label1808:
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1794
	j label2829
label878:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	blt zero, s0, label86
	j label2707
