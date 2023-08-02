.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -112
	li a1, 8589934593
	lui a3, 2
	slli a0, a1, 2
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 48
	sd s2, 16(sp)
	li s2, 1
	sd s3, 24(sp)
	li s3, 2
	sd s0, 32(sp)
	li s0, 16
	sd s4, 40(sp)
	sd a1, 48(sp)
	sd a0, 56(sp)
	slli a0, a0, 2
	slli a1, a0, 2
	sd a0, 64(sp)
	slli a0, a1, 2
	sd a1, 72(sp)
	slli a1, a0, 2
	sd a0, 80(sp)
	lui a0, 1
	sd a1, 88(sp)
	slli a1, a3, 32
	add.uw a2, a0, a1
	lui a0, 4
	sd a2, 96(sp)
	lui a2, 8
	slli a1, a2, 32
	mv a2, s3
	add.uw a0, a0, a1
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
	li a2, 32767
	bgt a0, a2, label185
label2690:
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
label2691:
	mv a5, a4
	mv t0, a4
	j label148
label108:
	and t3, t2, t0
	andi t2, t3, 1
	bne t2, zero, label111
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	blt a5, s0, label108
	j label2692
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
	j label2691
label148:
	bne t0, zero, label1049
label1048:
	li a4, 32767
	ble a2, a4, label2703
label152:
	lw a4, 52(sp)
	lui t1, 16
	lw t0, 108(sp)
	divw a2, a2, a4
	addw a4, a2, t1
	subw a2, a4, t0
	mv a4, a5
	bne a2, zero, label963
	li a2, 32767
	ble a0, a2, label2690
label185:
	lw a2, 52(sp)
	lui a5, 16
	lw a4, 108(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	bgt a0, zero, label788
	j label191
label99:
	bne a2, zero, label963
	j label962
label2703:
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
	j label2704
label2713:
	li a4, 32767
	bgt a2, a4, label152
	j label2703
label2714:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1049
	j label2713
label2902:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label175
label159:
	andi t4, t3, 1
	bne t4, zero, label160
	andi t4, t1, 1
	bne t4, zero, label164
	j label2708
label160:
	andi t4, t1, 1
	bne t4, zero, label161
label164:
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
	blt t2, s0, label159
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label170
	j label2902
label175:
	bge t0, s0, label1109
label180:
	and t3, a5, t1
	andi t4, t3, 1
	bne t4, zero, label183
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label180
	j label2714
label183:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label180
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1049
	j label2713
label170:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label171
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label170
	j label1090
label171:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label170
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label180
label1109:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1049
	j label2713
label161:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label159
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label170
	j label2902
label1090:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label180
	j label1109
label2708:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label159
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label170
	j label2902
label966:
	beq t1, zero, label2691
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
label2700:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1049
	j label1048
label142:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label145
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label142
	j label2701
label145:
	sh2add t4, t0, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label142
	mv a5, a3
	mv t0, t2
	bne t2, zero, label986
	j label2700
label2694:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label137
label121:
	andi t4, t3, 1
	bne t4, zero, label122
	andi t4, t1, 1
	beq t4, zero, label2695
label125:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a3, a3, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label121
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label132
	j label2694
label137:
	blt t0, s0, label142
	j label1032
label132:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label133
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label132
	j label1013
label133:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label132
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label142
label1032:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label986
	j label2700
label122:
	andi t4, t1, 1
	beq t4, zero, label125
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label121
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label132
	j label2694
label1013:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label142
	j label1032
label2695:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label121
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label132
	j label2694
label795:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label963
	j label962
label796:
	mv a4, a1
	mv a3, zero
	mv a1, a2
	j label12
label187:
	and t1, t0, a3
	andi t0, t1, 1
	bne t0, zero, label190
	srliw t1, a3, 31
	addiw a4, a4, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	blt a4, s0, label187
	j label2718
label190:
	sh2add t1, a4, s1
	lw t0, 0(t1)
	addw a5, a5, t0
	srliw t1, a3, 31
	addiw a4, a4, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	blt a4, s0, label187
	bne a5, zero, label796
	j label795
label12:
	beq a1, zero, label799
label800:
	mv t1, zero
	mv t2, s2
	mv t0, a1
	mv a5, zero
	blt zero, s0, label93
	j label21
label2676:
	lw t0, 52(sp)
	mv a4, a5
	divw a1, a1, t0
	j label12
label2682:
	li a4, 32767
	bgt a1, a4, label91
	j label2676
label82:
	and t3, a5, t1
	andi t4, t3, 1
	bne t4, zero, label83
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label82
	j label909
label83:
	sh2add t4, t0, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label82
	mv a5, a4
	mv t0, t2
	beq t2, zero, label2682
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
	j label2682
label65:
	andi t4, t3, 1
	bne t4, zero, label70
	andi t4, t1, 1
	beq t4, zero, label2678
label66:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label65
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label86
label2677:
	lw a5, 52(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	blt zero, s0, label82
	j label909
label86:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label89
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label86
	j label2677
label89:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label86
	j label2677
label70:
	andi t4, t1, 1
	beq t4, zero, label66
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label65
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label86
	j label2677
label93:
	and t3, t2, t0
	andi t2, t3, 1
	bne t2, zero, label96
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	blt a5, s0, label93
	j label2688
label96:
	sh2add t2, a5, s1
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t3, t0, 31
	addiw a5, a5, 1
	add t2, t0, t3
	sraiw t0, t2, 1
	mv t2, zero
	blt a5, s0, label93
	bne t1, zero, label808
	j label807
label2678:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label65
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label86
	j label2677
label21:
	beq t1, zero, label807
label808:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label812
	mv a5, a4
	j label874
label812:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	blt zero, s0, label49
	j label815
label826:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label812
label2669:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label875
	j label874
label41:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label42
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label41
	j label826
label42:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label41
	mv a5, a3
	mv t0, t2
	bne t2, zero, label812
	j label2669
label815:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label45
	j label35
label49:
	andi t4, t3, 1
	bne t4, zero, label50
	andi t4, t1, 1
	beq t4, zero, label2673
label54:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a3, a3, t5
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label49
	j label815
label45:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label48
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label45
	j label35
label48:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label45
	j label35
label50:
	andi t4, t1, 1
	beq t4, zero, label54
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label49
	j label815
label35:
	lw a5, 52(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	blt zero, s0, label41
	j label826
label2673:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label49
	j label815
label2692:
	bne t1, zero, label982
	j label2691
label2701:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label986
	j label2700
label807:
	mv a5, a4
	mv t0, a4
	bne a4, zero, label875
	j label874
label2688:
	bne t1, zero, label808
	j label807
label874:
	li a4, 32767
	ble a1, a4, label2676
label91:
	lw a4, 52(sp)
	lui t1, 16
	lw t0, 108(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	bne a1, zero, label800
	mv a1, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label963
	j label962
label2718:
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
label2721:
	lw a4, 52(sp)
	mv a2, a3
	divw a0, a0, a4
	bgt a0, zero, label1151
	j label381
label2737:
	li a2, 32767
	bgt a0, a2, label210
	j label2721
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
	j label2920
label1196:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1200
	mv a5, a4
	j label1262
label377:
	and t1, t0, a4
	andi t0, t1, 1
	bne t0, zero, label380
	srliw t1, a4, 31
	addiw a3, a3, 1
	add t0, a4, t1
	sraiw a4, t0, 1
	mv t0, zero
	blt a3, s0, label377
	j label2764
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
	j label2736
label288:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label291
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label288
	j label2745
label291:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label288
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1263
	j label2744
label267:
	andi t4, t3, 1
	bne t4, zero, label269
	andi t4, t1, 1
	beq t4, zero, label2740
label268:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label267
	j label1280
label269:
	andi t4, t1, 1
	beq t4, zero, label268
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label267
	j label1280
label216:
	and t3, t2, a5
	andi t2, t3, 1
	bne t2, zero, label219
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	blt t0, s0, label216
	j label2726
label219:
	sh2add t3, t0, s1
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, a5, 31
	addiw t0, t0, 1
	add t3, a5, t2
	mv t2, zero
	sraiw a5, t3, 1
	blt t0, s0, label216
	bne t1, zero, label1196
	j label2920
label1280:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	bge zero, s0, label2932
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
	j label2742
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
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	blt zero, s0, label288
label1323:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1263
	j label2744
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
label2731:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1263
	j label1262
label246:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label247
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label246
	j label1234
label247:
	sh2add t4, t0, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label246
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1200
	j label2731
label224:
	blt t2, s0, label229
	j label1203
label1207:
	andi t4, t1, 1
	bne t4, zero, label230
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
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
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label229
	j label1203
label232:
	andi t4, t1, 1
	beq t4, zero, label230
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label229
	mv t1, a5
	mv t2, zero
	mv a5, zero
	bge zero, s0, label2728
label250:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label253
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label250
	j label2728
label253:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label250
label2728:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label246
	j label1234
label2740:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label267
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label278
	j label2932
label1203:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label250
	j label2728
label2932:
	lw a5, 52(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	blt zero, s0, label288
	j label1323
label2920:
	mv a5, a4
	mv t0, a4
	j label256
label2726:
	bne t1, zero, label1196
	j label2920
label256:
	bne t0, zero, label1263
label1262:
	li a4, 32767
	bgt a2, a4, label261
label2735:
	lw t0, 52(sp)
	mv a4, a5
	divw a2, a2, t0
	bne a2, zero, label1163
	j label2737
label261:
	lw a4, 52(sp)
	lui t1, 16
	lw t0, 108(sp)
	divw a2, a2, a4
	addw a4, a2, t1
	subw a2, a4, t0
	mv a4, a5
	bne a2, zero, label1163
	j label2738
label2744:
	li a4, 32767
	bgt a2, a4, label261
	j label2735
label2745:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1263
	j label2744
label2742:
	lw a5, 52(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	blt zero, s0, label288
	j label1323
label210:
	lw a2, 52(sp)
	lui a5, 16
	lw a4, 108(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	bgt a0, zero, label1151
	j label381
label2738:
	li a2, 32767
	bgt a0, a2, label210
	j label2721
label2764:
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
	mv a1, s2
	mv a0, s4
	ble s4, zero, label583
label1893:
	mv t0, s2
	mv a3, a0
	mv a5, zero
	mv a4, zero
	blt zero, s0, label765
	j label2812
label583:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s4, s4, 1
	blt s4, s0, label1514
	j label1513
label598:
	lw a2, 52(sp)
	lui a5, 16
	lw a4, 108(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	subw a0, a2, a4
	mv a2, a3
	bgt a0, zero, label1893
	j label583
label1901:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1906
	j label1905
label765:
	and t1, t0, a3
	andi t0, t1, 1
	bne t0, zero, label766
	srliw t1, a3, 31
	addiw a4, a4, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	blt a4, s0, label765
	j label589
label766:
	sh2add t1, a4, s1
	lw t0, 0(t1)
	addw a5, a5, t0
	srliw t1, a3, 31
	addiw a4, a4, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	blt a4, s0, label765
	beq a5, zero, label1901
label1902:
	mv a4, a1
	mv a3, zero
	mv a1, a2
	beq a2, zero, label2814
label2083:
	mv t1, zero
	mv t2, s2
	mv t0, a1
	mv a5, zero
	blt zero, s0, label689
	j label2086
label2843:
	mv a5, a4
	mv t0, a4
	j label696
label689:
	and t2, t2, t0
	andi t3, t2, 1
	bne t3, zero, label690
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	blt a5, s0, label689
	j label2086
label690:
	sh2add t2, a5, s1
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	blt a5, s0, label689
	bne t1, zero, label2102
	j label2843
label696:
	bne t0, zero, label2106
label2105:
	li a4, 32767
	bgt a1, a4, label701
label2846:
	lw t0, 52(sp)
	mv a4, a5
	divw a1, a1, t0
	bne a1, zero, label2083
	j label2848
label2106:
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	blt zero, s0, label726
	j label2847
label701:
	lw a4, 52(sp)
	lui t1, 16
	lw t0, 108(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	bne a1, zero, label2083
	j label2849
label2852:
	li a4, 32767
	bgt a1, a4, label701
	j label2846
label2853:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label2106
	j label2852
label726:
	andi t4, t3, 1
	bne t4, zero, label731
	andi t4, t1, 1
	beq t4, zero, label2169
label730:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw a4, a4, t4
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label726
	j label2847
label731:
	andi t4, t1, 1
	beq t4, zero, label730
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label726
	j label2847
label2169:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label726
label2847:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	bge zero, s0, label2127
label712:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label715
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	blt a5, s0, label712
	j label2850
label715:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	blt a5, s0, label712
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	bge zero, s0, label2146
label722:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label725
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label722
	j label2853
label725:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label722
	mv a5, a4
	mv t0, t2
	bne t2, zero, label2106
	j label2852
label1906:
	mv t1, zero
	mv t2, s2
	mv t0, a2
	mv a5, zero
	blt zero, s0, label676
	j label2816
label1931:
	li a4, 32767
	ble a2, a4, label2820
label611:
	lw a4, 52(sp)
	lui t1, 16
	lw t0, 108(sp)
	divw a2, a2, a4
	addw a4, a2, t1
	subw a2, a4, t0
	mv a4, a5
	bne a2, zero, label1906
	li a2, 32767
	bgt a0, a2, label598
	j label2815
label592:
	bne a2, zero, label1906
	j label1905
label2820:
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
	j label2821
label2825:
	li a4, 32767
	bgt a2, a4, label611
	j label2820
label633:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label636
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label633
	j label2826
label636:
	sh2add t4, t0, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label633
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1932
	j label2825
label2821:
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
	j label2828
label640:
	andi t4, t1, 1
	bne t4, zero, label1996
label642:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw a4, a4, t4
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label637
	j label2821
label623:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label624
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label623
	j label1953
label624:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label623
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
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
	j label2819
label676:
	and t3, t2, t0
	andi t2, t3, 1
	bne t2, zero, label679
	srliw t2, t0, 31
	addiw a5, a5, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	blt a5, s0, label676
	j label2841
label679:
	sh2add t2, a5, s1
	lw t3, 0(t2)
	addw t1, t1, t3
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
label2833:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1932
	j label1931
label662:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label665
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label662
	j label2834
label665:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t0, s0, label662
	mv a5, a3
	mv t0, t2
	bne t2, zero, label2009
	j label2833
label670:
	andi t4, t3, 1
	bne t4, zero, label675
	j label2051
label671:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw a3, a3, t4
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label670
	j label2012
label675:
	andi t4, t1, 1
	beq t4, zero, label671
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label670
	j label2012
label2051:
	andi t4, t1, 1
	bne t4, zero, label671
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label670
label2012:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	bge zero, s0, label656
label666:
	and t4, t0, t1
	andi t3, t4, 1
	bne t3, zero, label669
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label666
	j label656
label669:
	sh2add t4, a5, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt a5, s0, label666
label656:
	lw a5, 52(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	blt zero, s0, label662
	j label2023
label1953:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label633
	j label1972
label2828:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label637
	j label2821
label1996:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	blt t2, s0, label637
	j label2821
label1972:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1932
	j label2825
label2826:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1932
	j label2825
label2086:
	bne t1, zero, label2102
	j label2843
label2841:
	bne t1, zero, label1928
	j label1927
label2850:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label722
label2146:
	mv a5, a4
	mv t0, t2
	bne t2, zero, label2106
	j label2852
label2834:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label2009
	j label2833
label2819:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1932
	j label1931
label2816:
	bne t1, zero, label1928
	j label1927
label589:
	bne a5, zero, label1902
	j label1901
label2127:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label722
	j label2146
label1905:
	li a2, 32767
	bgt a0, a2, label598
label2815:
	lw a4, 52(sp)
	mv a2, a3
	divw a0, a0, a4
	bgt a0, zero, label1893
	j label583
label2848:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label1906
	j label1905
label2102:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label2183
	mv a5, a4
	j label696
label2183:
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	blt zero, s0, label759
	j label2186
label2197:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label2183
label2860:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label2106
	j label2105
label751:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label752
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label751
	j label2197
label752:
	sh2add t4, t0, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label751
	mv a5, a3
	mv t0, t2
	bne t2, zero, label2183
	j label2860
label2186:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label755
	j label745
label759:
	andi t4, t3, 1
	bne t4, zero, label761
	andi t4, t1, 1
	beq t4, zero, label2864
label760:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw a3, a3, t4
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label759
	j label2186
label745:
	lw a5, 52(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	blt zero, s0, label751
	j label2197
label755:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label758
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	blt a5, s0, label755
	j label745
label758:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	blt a5, s0, label755
	j label745
label761:
	andi t4, t1, 1
	beq t4, zero, label760
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label759
	j label2186
label2864:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label759
	j label2186
label2812:
	bne a5, zero, label1902
	j label1901
label2849:
	mv a1, a3
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
	li a5, 32767
	ble a3, a5, label2791
label532:
	lw a5, 52(sp)
	lui t2, 16
	lw t1, 108(sp)
	divw a3, a3, a5
	addw a5, a3, t2
	subw a3, a5, t1
	mv a5, t0
	bne a3, zero, label1705
	li a3, 32767
	ble a1, a3, label2789
label572:
	lw a3, 52(sp)
	lui t0, 16
	lw a5, 108(sp)
	divw a1, a1, a3
	addw a3, a1, t0
	subw a1, a3, a5
	mv a3, a4
	bgt a1, zero, label1522
	j label390
label2791:
	lw t1, 52(sp)
	mv a5, t0
	divw a3, a3, t1
	bne a3, zero, label1705
	j label2797
label2792:
	li a5, 32767
	bgt a3, a5, label532
	j label2791
label516:
	and t4, t0, t2
	andi t5, t4, 1
	bne t5, zero, label517
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	blt t1, s0, label516
	j label1731
label517:
	sh2add t4, t1, s1
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	blt t1, s0, label516
	mv t0, a5
	mv t1, t3
	beq t3, zero, label2792
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
	j label2792
label524:
	andi t5, t4, 1
	bne t5, zero, label529
	andi t5, t2, 1
	beq t5, zero, label1763
label526:
	sh2add t6, t3, s1
	lw t5, 0(t6)
	addw a5, a5, t5
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	blt t3, s0, label524
	j label1720
label529:
	andi t5, t2, 1
	beq t5, zero, label526
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	blt t3, s0, label524
label1720:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	bge zero, s0, label510
label520:
	and t4, t1, t2
	andi t5, t4, 1
	bne t5, zero, label521
	srliw t4, t2, 31
	srliw t6, t1, 31
	addiw t0, t0, 1
	add t5, t2, t4
	add t4, t1, t6
	sraiw t2, t5, 1
	sraiw t1, t4, 1
	blt t0, s0, label520
	j label510
label521:
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
	blt t0, s0, label520
label510:
	lw t0, 52(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	blt zero, s0, label516
	j label1731
label1712:
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1717
	j label1716
label566:
	and t3, t3, t0
	andi t4, t3, 1
	bne t4, zero, label569
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t4, t0, t3
	mv t3, zero
	sraiw t0, t4, 1
	blt t1, s0, label566
	j label2806
label569:
	sh2add t3, t1, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t0, 31
	addiw t1, t1, 1
	add t4, t0, t3
	mv t3, zero
	sraiw t0, t4, 1
	blt t1, s0, label566
	bne t2, zero, label1713
	j label1712
label1763:
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	blt t3, s0, label524
	j label1720
label1538:
	mv a5, a2
	mv a4, zero
	mv a2, a3
	bne a3, zero, label1542
	j label1541
label573:
	and t2, t1, a4
	andi t1, t2, 1
	bne t1, zero, label576
	srliw t2, a4, 31
	addiw a5, a5, 1
	add t1, a4, t2
	sraiw a4, t1, 1
	mv t1, zero
	blt a5, s0, label573
	j label2810
label576:
	sh2add t2, a5, s1
	lw t1, 0(t2)
	addw t0, t0, t1
	srliw t2, a4, 31
	addiw a5, a5, 1
	add t1, a4, t2
	sraiw a4, t1, 1
	mv t1, zero
	blt a5, s0, label573
	bne t0, zero, label1538
	j label1537
label1542:
	mv t2, zero
	mv t3, s2
	mv t1, a2
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
label2783:
	li a5, 32767
	bgt a2, a5, label478
	j label2777
label472:
	and t5, t0, t2
	andi t4, t5, 1
	bne t4, zero, label475
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	blt t1, s0, label472
	j label2784
label475:
	sh2add t4, t1, s1
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	blt t1, s0, label472
	mv t0, a5
	mv t1, t3
	bne t3, zero, label1617
	j label2783
label478:
	lw a5, 52(sp)
	lui t2, 16
	lw t1, 108(sp)
	divw a2, a2, a5
	addw a5, a2, t2
	subw a2, a5, t1
	mv a5, t0
	bne a2, zero, label1542
	mv a2, a4
	mv a5, a3
	mv a4, zero
	bne a3, zero, label1705
	j label1704
label2778:
	lw t1, 52(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
	j label467
label451:
	andi t5, t4, 1
	beq t5, zero, label1624
	andi t5, t2, 1
	bne t5, zero, label1629
label453:
	sh2add t5, t3, s1
	lw t6, 0(t5)
	addw a5, a5, t6
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	blt t3, s0, label451
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label462
	j label2778
label467:
	blt t1, s0, label472
	j label1663
label462:
	and t4, t1, t2
	andi t5, t4, 1
	bne t5, zero, label463
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t0, s0, label462
	j label1644
label463:
	sh2add t5, t0, s1
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t0, s0, label462
	lw t1, 52(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
	blt zero, s0, label472
	j label1663
label1624:
	andi t5, t2, 1
	bne t5, zero, label453
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	blt t3, s0, label451
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label462
	j label2778
label1549:
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1617
	j label1616
label1550:
	mv t0, a4
	mv t1, a5
	bne a5, zero, label1554
	j label1553
label479:
	and t4, t3, t1
	andi t3, t4, 1
	bne t3, zero, label480
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	sraiw t1, t3, 1
	mv t3, zero
	blt t0, s0, label479
	j label407
label480:
	sh2add t4, t0, s1
	lw t3, 0(t4)
	addw t2, t2, t3
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
	mv a4, zero
	mv t3, zero
	blt zero, s0, label416
	j label1557
label1588:
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1554
label2773:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1617
	j label1616
label433:
	and t4, t0, t2
	andi t5, t4, 1
	bne t5, zero, label434
	srliw t4, t2, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t1, s0, label433
	j label1588
label434:
	sh2add t5, t1, s1
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t2, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t1, s0, label433
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1554
	j label2773
label416:
	andi t5, t4, 1
	bne t5, zero, label417
	andi t5, t2, 1
	bne t5, zero, label421
	j label2769
label417:
	andi t5, t2, 1
	bne t5, zero, label418
label421:
	sh2add t5, t3, s1
	lw t6, 0(t5)
	addw a4, a4, t6
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label416
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label437
label2768:
	lw t0, 52(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	blt zero, s0, label433
	j label1588
label437:
	and t4, t1, t2
	andi t5, t4, 1
	bne t5, zero, label440
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t0, s0, label437
	j label2768
label440:
	sh2add t4, t0, s1
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t0, s0, label437
	j label2768
label418:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label416
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label437
	j label2768
label1644:
	lw t1, 52(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
	blt zero, s0, label472
	j label1663
label1620:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label462
	j label2778
label1629:
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	blt t3, s0, label451
	j label1620
label2769:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label416
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label437
	j label2768
label1713:
	mv t0, a4
	mv t1, a5
	bne a5, zero, label1794
	j label2790
label2806:
	bne t2, zero, label1713
	j label1712
label1794:
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
	blt zero, s0, label560
	j label1797
label2799:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1717
	j label1716
label2800:
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1794
	j label2799
label560:
	andi t5, t4, 1
	bne t5, zero, label565
	j label561
label564:
	sh2add t6, t3, s1
	lw t5, 0(t6)
	addw a4, a4, t5
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label560
	j label1797
label565:
	andi t5, t2, 1
	beq t5, zero, label564
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label560
	j label1797
label561:
	andi t5, t2, 1
	bne t5, zero, label564
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
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
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t0, s0, label556
	j label546
label557:
	sh2add t4, t0, s1
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t2, 31
	addiw t0, t0, 1
	add t5, t2, t4
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t0, s0, label556
label546:
	lw t0, 52(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	bge zero, s0, label1808
label552:
	and t4, t0, t2
	andi t5, t4, 1
	bne t5, zero, label555
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	blt t1, s0, label552
	j label2800
label555:
	sh2add t5, t1, s1
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	blt t1, s0, label552
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1794
	j label2799
label2777:
	lw t1, 52(sp)
	mv a5, t0
	divw a2, a2, t1
	bne a2, zero, label1542
	j label2786
label407:
	bne t2, zero, label1550
	j label1549
label2784:
	mv t0, a5
	mv t1, t3
	bne t3, zero, label1617
	j label2783
label1663:
	mv t0, a5
	mv t1, t3
	bne t3, zero, label1617
	j label2783
label494:
	bne t2, zero, label1713
	j label1712
label2789:
	lw a5, 52(sp)
	mv a3, a4
	divw a1, a1, a5
	bgt a1, zero, label1522
	j label390
label2797:
	li a3, 32767
	bgt a1, a3, label572
	j label2789
label2790:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1717
	j label1716
label2786:
	mv a2, a4
	mv a5, a3
	mv a4, zero
	bne a3, zero, label1705
	j label1704
label1616:
	li a5, 32767
	bgt a2, a5, label478
	j label2777
label1537:
	mv a5, a3
	mv a4, zero
	bne a3, zero, label1705
	j label1704
label2810:
	bne t0, zero, label1538
	j label1537
label397:
	bne t0, zero, label1538
	j label1537
label201:
	beq a5, zero, label1158
label1159:
	mv a4, a1
	mv a3, zero
	mv a1, a2
	bne a2, zero, label1340
	mv a1, zero
	mv a4, a2
	j label1162
label1340:
	mv t2, s2
	mv a5, a1
	mv t1, zero
	mv t0, zero
	blt zero, s0, label301
	j label1343
label2755:
	li a4, 32767
	bgt a1, a4, label376
	j label2754
label360:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label361
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	blt t0, s0, label360
	j label1440
label361:
	sh2add t4, t0, s1
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	blt t0, s0, label360
	mv a5, a4
	mv t0, t2
	bne t2, zero, label1426
	j label2755
label376:
	lw a4, 52(sp)
	lui t1, 16
	lw t0, 108(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	bne a1, zero, label1340
	mv a1, a3
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
	j label2755
label1429:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label364
	j label354
label368:
	andi t4, t3, 1
	bne t4, zero, label369
	andi t4, t1, 1
	bne t4, zero, label372
	j label2758
label369:
	andi t4, t1, 1
	bne t4, zero, label370
label372:
	sh2add t4, t2, s1
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label368
	j label1429
label354:
	lw a5, 52(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	blt zero, s0, label360
	j label1440
label364:
	and t3, t0, t1
	andi t4, t3, 1
	bne t4, zero, label365
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	blt a5, s0, label364
	j label354
label365:
	sh2add t3, a5, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	blt a5, s0, label364
	j label354
label370:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label368
	j label1429
label301:
	and t2, t2, a5
	andi t3, t2, 1
	bne t3, zero, label302
	srliw t3, a5, 31
	addiw t0, t0, 1
	add t2, a5, t3
	sraiw a5, t2, 1
	mv t2, zero
	blt t0, s0, label301
	j label1343
label302:
	sh2add t3, t0, s1
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t3, a5, 31
	addiw t0, t0, 1
	add t2, a5, t3
	sraiw a5, t2, 1
	mv t2, zero
	blt t0, s0, label301
	beq t1, zero, label2747
label1359:
	mv a5, a3
	mv t0, a4
	bne a4, zero, label1363
	mv a5, a4
	j label1425
label1363:
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	blt zero, s0, label314
	j label1366
label1397:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1363
label2751:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1426
	j label1425
label331:
	and t4, a5, t1
	andi t3, t4, 1
	bne t3, zero, label332
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label331
	j label1397
label332:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t0, s0, label331
	mv a5, a3
	mv t0, t2
	bne t2, zero, label1363
	j label2751
label314:
	andi t4, t3, 1
	beq t4, zero, label315
	andi t4, t1, 1
	bne t4, zero, label1379
label317:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	addw a3, a3, t4
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label314
	mv t2, zero
	mv t1, zero
	blt zero, s0, label335
label2749:
	lw t0, 52(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	blt zero, s0, label331
	j label1397
label335:
	and t4, t0, a5
	andi t3, t4, 1
	bne t3, zero, label336
	srliw t4, a5, 31
	addiw t1, t1, 1
	add t3, a5, t4
	srliw t4, t0, 31
	sraiw a5, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t1, s0, label335
	j label2749
label336:
	sh2add t3, t1, s1
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, a5, 31
	addiw t1, t1, 1
	add t3, a5, t4
	srliw t4, t0, 31
	sraiw a5, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t1, s0, label335
	j label2749
label1366:
	mv t2, zero
	mv t1, zero
	blt zero, s0, label335
	j label2749
label315:
	andi t4, t1, 1
	bne t4, zero, label317
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label314
	j label1366
label2758:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	blt t2, s0, label368
	j label1429
label1379:
	srliw t4, t3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	add t6, t3, t4
	add t4, t1, t5
	sraiw t3, t6, 1
	sraiw t1, t4, 1
	blt t2, s0, label314
	j label1366
label2747:
	mv a5, a4
	mv t0, a4
	bne a4, zero, label1426
label1425:
	li a4, 32767
	bgt a1, a4, label376
label2754:
	lw t0, 52(sp)
	mv a4, a5
	divw a1, a1, t0
	bne a1, zero, label1340
	j label2762
label1343:
	bne t1, zero, label1359
	j label2747
label2762:
	mv a1, a3
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
	li a3, 32767
	bgt a1, a3, label572
	j label2789
label1162:
	li a2, 32767
	bgt a0, a2, label210
	j label2721
label1553:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	bne a5, zero, label1617
	j label1616
label799:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	bne a2, zero, label963
	j label962
label1541:
	mv a2, a4
	mv a5, a3
	mv a4, zero
	bne a3, zero, label1705
	j label1704
label989:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	blt zero, s0, label132
	j label2694
label1557:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	blt zero, s0, label437
	j label2768
label2023:
	mv a5, a3
	mv t0, t2
	bne t2, zero, label2009
	j label2833
label2736:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label278
	j label2932
label2814:
	mv a1, a3
	mv a4, a2
	mv a3, zero
	j label592
label1517:
	mv a0, zero
	j label577
label2704:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label170
	j label2902
label1808:
	mv t0, a4
	mv t1, t3
	bne t3, zero, label1794
	j label2799
label878:
	mv t2, zero
	mv t1, a5
	mv a5, zero
	blt zero, s0, label86
	j label2677
