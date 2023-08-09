.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[64] RegSpill[0] CalleeSaved[48]
	addi sp, sp, -112
	li a0, 2
	lui a4, 8
	slli a2, a0, 32
	sd ra, 0(sp)
	addi a1, a2, 1
	sd s1, 8(sp)
	slli a0, a1, 2
	addi s1, sp, 48
	slli a2, a0, 2
	sd s2, 16(sp)
	li s2, 1
	sd s3, 24(sp)
	li s3, 2
	sd s0, 32(sp)
	li s0, 16
	sd s4, 40(sp)
	sd a1, 48(sp)
	slli a1, a2, 2
	sd a0, 56(sp)
	slli a0, a1, 2
	sd a2, 64(sp)
	slli a2, a0, 2
	sd a1, 72(sp)
	lui a1, 1
	sd a0, 80(sp)
	lui a0, 2
	sd a2, 88(sp)
	slli a3, a0, 32
	lui a0, 4
	add.uw a2, a1, a3
	slli a1, a4, 32
	sd a2, 96(sp)
	add.uw a3, a0, a1
	mv a2, s3
	mv a1, s2
	sd a3, 104(sp)
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	mv a0, s2
	mv a1, s2
	mv a2, s3
	bgt s2, zero, label11
	j label222
label126:
	lw a4, 52(sp)
	mv a2, a3
	divw a0, a0, a4
	ble a0, zero, label222
label11:
	mv a3, s1
	mv t0, zero
	mv a4, a0
	mv t1, s2
	mv a5, zero
	and t3, a0, s2
	andi t2, t3, 1
	bne t2, zero, label221
	li t0, 1
	srliw t2, a0, 31
	add t1, a0, t2
	sraiw a4, t1, 1
	blt t0, s0, label20
	j label909
label2685:
	addiw t0, t0, 1
	srliw t2, a4, 31
	add t1, a4, t2
	sraiw a4, t1, 1
	bge t0, s0, label909
label20:
	addi a3, a3, 4
	mv t1, zero
	and t3, a4, zero
	andi t2, t3, 1
	beq t2, zero, label2685
label221:
	lw t1, 0(a3)
	addiw t0, t0, 1
	srliw t2, a4, 31
	addw a5, a5, t1
	add t1, a4, t2
	sraiw a4, t1, 1
	blt t0, s0, label20
	bne a5, zero, label915
label2684:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label128
label125:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label127
	j label126
label2719:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t5, t1, t0
	andi t4, t5, 1
	beq t4, zero, label1144
label172:
	lw t4, 0(a5)
	addw t2, t2, t4
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t5, t0, 31
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label1153
label175:
	addi a5, a5, 4
	and t5, t1, t0
	andi t4, t5, 1
	bne t4, zero, label172
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t5, t0, 31
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label175
label2720:
	mv t0, a4
	mv a5, t2
	bne t2, zero, label145
label2721:
	lui a5, 8
	addiw a4, a5, -1
	bgt a2, a4, label182
label2716:
	lw a5, 52(sp)
	mv a4, t0
	divw a2, a2, a5
	beq a2, zero, label2727
label128:
	mv a5, s1
	mv t1, zero
	mv t2, zero
	mv t0, a2
	mv t3, s2
	and t4, a2, s2
	andi t5, t4, 1
	bne t5, zero, label135
	li t1, 1
	srliw t3, a2, 31
	add t4, a2, t3
	sraiw t0, t4, 1
	blt t1, s0, label138
	j label2712
label1153:
	mv t0, a4
	mv a5, t2
	beq t2, zero, label2721
label145:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	beq t5, zero, label1114
label177:
	andi t5, t2, 1
	beq t5, zero, label178
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw t5, t2, 31
	add a6, t3, t6
	add t6, t2, t5
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	blt t4, s0, label154
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	mv a5, zero
	andi t4, t5, 1
	bne t4, zero, label162
	j label1127
label2725:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	mv a5, zero
	andi t4, t5, 1
	beq t4, zero, label1127
label162:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t0, 31
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	bge t3, s0, label2719
label176:
	addi t1, t1, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label162
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t0, 31
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label176
	j label2719
label1114:
	andi t5, t2, 1
	beq t5, zero, label2717
label178:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw t6, t3, 31
	addw a4, a4, t5
	add a6, t3, t6
	srliw t5, t2, 31
	sraiw t3, a6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	bge t4, s0, label2725
label154:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label177
	andi t5, t2, 1
	bne t5, zero, label178
label2717:
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw t5, t2, 31
	add a6, t3, t6
	add t6, t2, t5
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	blt t4, s0, label154
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	mv a5, zero
	andi t4, t5, 1
	bne t4, zero, label162
label1127:
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t0, 31
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label176
	j label2719
label2714:
	addiw t1, t1, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	bge t1, s0, label2712
label138:
	addi a5, a5, 4
	mv t3, zero
	and t4, t0, zero
	andi t5, t4, 1
	beq t5, zero, label2714
label135:
	lw t3, 0(a5)
	addw t2, t2, t3
	addiw t1, t1, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t1, s0, label138
	bne t2, zero, label1107
label2926:
	mv t0, a4
	mv a5, a4
label142:
	bne a5, zero, label145
label1110:
	lui a5, 8
	addiw a4, a5, -1
	ble a2, a4, label2716
label182:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a2, a5, t1
	bne a2, zero, label128
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label127
	j label126
label2712:
	beq t2, zero, label2926
label1107:
	mv t0, a3
	mv a5, a4
	bne a4, zero, label186
	mv t0, a4
	j label142
label2732:
	mv t0, a3
	mv a5, t1
	beq t1, zero, label2733
label186:
	mv t1, s1
	mv t4, zero
	mv a3, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label193
	andi t5, a5, 1
	bne t5, zero, label194
	j label2729
label2736:
	andi t5, t2, 1
	beq t5, zero, label2729
label194:
	lw t5, 0(t1)
	addw a3, a3, t5
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	bge t4, s0, label2943
label219:
	addi t1, t1, 4
	andi t5, t3, 1
	beq t5, zero, label2736
label193:
	andi t5, t2, 1
	beq t5, zero, label194
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label219
label2943:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t6, t2, a5
	andi t5, t6, 1
	beq t5, zero, label1207
label218:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a5, t4, t5
	srliw t5, t0, 31
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label2735
label206:
	addi t1, t1, 4
	mv t4, a5
	and t6, t2, t0
	andi t5, t6, 1
	bne t5, zero, label218
label1207:
	mv a5, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label206
	lw t1, 52(sp)
	mv t3, zero
	lui t5, 16
	addiw t0, t5, -1
	mulw t2, a5, t1
	and t4, t2, t0
	mv t1, zero
	mv a5, s1
	andi t5, t4, 1
	bne t5, zero, label214
	j label1223
label2734:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label2732
label217:
	addi a5, a5, 4
	and t4, t2, t0
	andi t5, t4, 1
	beq t5, zero, label2734
label214:
	lw t4, 0(a5)
	addw t1, t1, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label217
	mv t0, a3
	mv a5, t1
	bne t1, zero, label186
label2733:
	mv a3, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label145
	j label1110
label2729:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label219
	j label2943
label2735:
	lw t1, 52(sp)
	mv t3, zero
	lui t5, 16
	addiw t0, t5, -1
	mulw t2, a5, t1
	and t4, t2, t0
	mv t1, zero
	mv a5, s1
	andi t5, t4, 1
	bne t5, zero, label214
label1223:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label217
	j label2732
label909:
	beq a5, zero, label2684
label915:
	mv a4, a1
	mv a3, a2
	mv a1, zero
	bne a2, zero, label26
	mv a4, a2
	mv a3, zero
	j label125
label2687:
	addiw t1, t1, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	bge t1, s0, label929
label35:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	beq t4, zero, label2687
label118:
	lw t3, 0(a5)
	addiw t1, t1, 1
	srliw t4, t0, 31
	addw t2, t2, t3
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t1, s0, label35
	bne t2, zero, label935
label2686:
	mv t0, a4
	mv a5, a4
	bne a4, zero, label80
label998:
	lui a5, 8
	addiw a4, a5, -1
	ble a3, a4, label2697
label117:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a3, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a3, a5, t1
	beq a3, zero, label2708
label26:
	mv a5, s1
	mv t1, zero
	mv t2, zero
	mv t0, a3
	mv t3, s2
	and t5, a3, s2
	andi t4, t5, 1
	bne t4, zero, label118
	li t1, 1
	srliw t4, a3, 31
	add t3, a3, t4
	sraiw t0, t3, 1
	blt t1, s0, label35
	j label929
label110:
	lw t4, 0(a5)
	addw t1, t1, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label1048
label113:
	addi a5, a5, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label110
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label113
label2703:
	mv t0, a4
	mv a5, t1
	beq t1, zero, label2704
label80:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label114
	andi t5, a5, 1
	beq t5, zero, label2698
label87:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	addw a4, a4, t5
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	bge t4, s0, label2699
label91:
	addi t1, t1, 4
	andi t5, t3, 1
	beq t5, zero, label2700
label114:
	andi t5, t2, 1
	beq t5, zero, label87
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	blt t4, s0, label91
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t5, t0, a5
	mv t0, a5
	andi t6, t5, 1
	beq t6, zero, label1021
label99:
	lw t5, 0(t1)
	addw a5, t4, t5
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	bge t3, s0, label1030
label102:
	addi t1, t1, 4
	mv t4, a5
	and t5, t2, t0
	andi t6, t5, 1
	bne t6, zero, label99
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label102
label2701:
	lw t1, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t2, a5, t1
	mv t1, zero
	mv a5, s1
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label110
label1039:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label113
	j label2703
label2700:
	andi t5, t2, 1
	bne t5, zero, label87
label2698:
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	blt t4, s0, label91
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t5, t0, a5
	mv t0, a5
	andi t6, t5, 1
	bne t6, zero, label99
	j label1021
label2699:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	andi t6, t5, 1
	bne t6, zero, label99
label1021:
	mv a5, t4
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t0, 31
	add t4, t2, t5
	add t5, t0, t6
	sraiw t2, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label102
	j label2701
label1030:
	lw t1, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t2, a5, t1
	and t5, t2, t0
	mv t1, zero
	mv a5, s1
	andi t4, t5, 1
	bne t4, zero, label110
	j label1039
label929:
	beq t2, zero, label2686
label935:
	mv t0, a1
	mv a5, a4
	bne a4, zero, label40
	mv t0, a4
	j label998
label991:
	mv t0, a1
	mv a5, t1
	beq t1, zero, label2694
label40:
	mv t1, s1
	mv t4, zero
	mv a1, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label47
	andi t5, a5, 1
	bne t5, zero, label49
	j label2688
label70:
	lw t4, 0(a5)
	addw t1, t1, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label991
label73:
	addi a5, a5, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label70
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label73
label2693:
	mv t0, a1
	mv a5, t1
	bne t1, zero, label40
label2694:
	mv a1, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label80
	j label998
label2691:
	andi t5, t2, 1
	beq t5, zero, label2688
label49:
	lw t5, 0(t1)
	addw a1, a1, t5
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	bge t4, s0, label960
label52:
	addi t1, t1, 4
	andi t5, t3, 1
	beq t5, zero, label2691
label47:
	andi t5, t2, 1
	beq t5, zero, label49
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label52
	j label2904
label2688:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label52
label2904:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label74
label60:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label62
	j label973
label2692:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label973
label62:
	addi t1, t1, 4
	and t5, t2, t0
	andi t4, t5, 1
	beq t4, zero, label2692
label74:
	lw t4, 0(t1)
	addiw t3, t3, 1
	srliw t5, t0, 31
	addw a5, a5, t4
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label62
	lw t0, 52(sp)
	mv t3, zero
	mv t1, zero
	lui t4, 16
	mulw t2, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label70
	j label982
label973:
	lw t0, 52(sp)
	mv t3, zero
	mv t1, zero
	lui t4, 16
	mulw t2, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label70
label982:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label73
	j label2693
label960:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	mv a5, zero
	andi t4, t5, 1
	bne t4, zero, label74
	j label60
label2704:
	lui a5, 8
	addiw a4, a5, -1
	bgt a3, a4, label117
label2697:
	lw a5, 52(sp)
	mv a4, t0
	divw a3, a3, a5
	bne a3, zero, label26
	mv a4, a2
	mv a3, zero
	bne a2, zero, label128
	j label125
label2727:
	lui a4, 8
	addiw a2, a4, -1
	ble a0, a2, label126
label127:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a0, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	mv a2, a3
	subw a0, a4, a5
	bgt a0, zero, label11
label222:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv s4, s3
	blt s3, s0, label1247
	j label1246
label2801:
	lui a5, 8
	addiw a4, a5, -1
	bgt a2, a4, label526
label2799:
	lw a5, 52(sp)
	mv a4, t0
	divw a2, a2, a5
	bne a2, zero, label473
	lui a4, 8
	addiw a2, a4, -1
	ble a1, a2, label471
label472:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a1, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	mv a2, a3
	subw a1, a4, a5
	bgt a1, zero, label452
label663:
	jal putint
	li a0, 10
	jal putch
	addiw s4, s4, 1
	bge s4, s0, label1246
label1247:
	mv a2, s3
	mv a0, s2
	mv a1, s4
	bgt s4, zero, label452
	j label663
label2797:
	bne t1, zero, label1663
label1662:
	mv t0, a4
	mv a5, a4
	bne a4, zero, label489
label1666:
	lui a5, 8
	addiw a4, a5, -1
	ble a2, a4, label2799
label526:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a2, a5, t1
	beq a2, zero, label2809
label473:
	mv a5, s1
	mv t2, zero
	mv t0, a2
	mv t3, s2
	mv t1, zero
	and t4, a2, s2
	andi t5, t4, 1
	bne t5, zero, label480
	li t2, 1
	srliw t4, a2, 31
	add t3, a2, t4
	sraiw t0, t3, 1
	blt t2, s0, label565
	j label2797
label2803:
	mv t0, a4
	mv a5, t1
	beq t1, zero, label2801
label489:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	beq t5, zero, label496
label523:
	andi t5, t2, 1
	beq t5, zero, label497
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label522
	j label2800
label496:
	andi t5, t2, 1
	beq t5, zero, label1674
label497:
	lw t5, 0(t1)
	addw a4, a4, t5
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	bge t4, s0, label2800
label522:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label523
	andi t5, t2, 1
	bne t5, zero, label497
label1674:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label522
label2800:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t6, t2, a5
	andi t5, t6, 1
	beq t5, zero, label1688
label521:
	lw t5, 0(t1)
	addiw t3, t3, 1
	srliw t6, t2, 31
	addw a5, t4, t5
	srliw t5, t0, 31
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	bge t3, s0, label509
label520:
	addi t1, t1, 4
	mv t4, a5
	and t6, t2, t0
	andi t5, t6, 1
	bne t5, zero, label521
label1688:
	mv a5, t4
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t0, 31
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label520
label509:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t1, zero
	mulw t2, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t5, t2, t0
	andi t4, t5, 1
	beq t4, zero, label516
label519:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t5, t0, 31
	addw t1, t1, t4
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label2803
label518:
	addi a5, a5, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label519
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label518
label1710:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label489
	j label2801
label516:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label518
	j label1710
label2819:
	addiw t2, t2, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	bge t2, s0, label2797
label565:
	addi a5, a5, 4
	mv t3, zero
	and t4, t0, zero
	andi t5, t4, 1
	beq t5, zero, label2819
label480:
	lw t3, 0(a5)
	addw t1, t1, t3
	addiw t2, t2, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t2, s0, label565
	beq t1, zero, label1662
label1663:
	mv t0, a3
	mv a5, a4
	bne a4, zero, label530
	mv t0, a4
	j label1666
label2814:
	mv t0, a3
	mv a5, t2
	beq t2, zero, label2815
label530:
	mv t1, s1
	mv t4, zero
	mv t3, t0
	mv t2, a5
	mv a3, zero
	andi t5, t0, 1
	bne t5, zero, label564
	andi t5, a5, 1
	beq t5, zero, label2810
label537:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw t6, t3, 31
	addw a3, a3, t5
	add a6, t3, t6
	srliw t5, t2, 31
	sraiw t3, a6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	bge t4, s0, label3009
label563:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label564
	andi t5, t2, 1
	bne t5, zero, label537
label2810:
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw t5, t2, 31
	add a6, t3, t6
	add t6, t2, t5
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	blt t4, s0, label563
label3009:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t5, t2, t0
	andi t4, t5, 1
	beq t4, zero, label1762
label548:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	bge t3, s0, label1771
label551:
	addi t1, t1, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label548
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label551
label2812:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t4, t1, t0
	andi t5, t4, 1
	bne t5, zero, label559
label1780:
	addiw t3, t3, 1
	srliw t6, t1, 31
	srliw t4, t0, 31
	add t5, t1, t6
	add t6, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t6, 1
	blt t3, s0, label562
	j label2814
label2816:
	addiw t3, t3, 1
	srliw t6, t1, 31
	srliw t4, t0, 31
	add t5, t1, t6
	add t6, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t6, 1
	bge t3, s0, label2814
label562:
	addi a5, a5, 4
	and t4, t1, t0
	andi t5, t4, 1
	beq t5, zero, label2816
label559:
	lw t4, 0(a5)
	addw t2, t2, t4
	addiw t3, t3, 1
	srliw t6, t1, 31
	srliw t4, t0, 31
	add t5, t1, t6
	add t6, t0, t4
	sraiw t1, t5, 1
	sraiw t0, t6, 1
	blt t3, s0, label562
	mv t0, a3
	mv a5, t2
	bne t2, zero, label530
	j label2815
label564:
	andi t5, t2, 1
	beq t5, zero, label537
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw t5, t2, 31
	add a6, t3, t6
	add t6, t2, t5
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	blt t4, s0, label563
	j label3009
label1771:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t4, t1, t0
	andi t5, t4, 1
	bne t5, zero, label559
	j label1780
label2815:
	mv a3, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label489
	j label1666
label2809:
	lui a4, 8
	addiw a2, a4, -1
	bgt a1, a2, label472
label471:
	lw a4, 52(sp)
	mv a2, a3
	divw a1, a1, a4
	ble a1, zero, label663
label452:
	mv a3, s1
	mv a5, zero
	mv t0, zero
	mv a4, a1
	mv t1, s2
	and t3, a1, s2
	andi t2, t3, 1
	bne t2, zero, label459
	li a5, 1
	srliw t1, a1, 31
	add t2, a1, t1
	sraiw a4, t2, 1
	blt a5, s0, label462
	j label2791
label459:
	lw t1, 0(a3)
	addw t0, t0, t1
	addiw a5, a5, 1
	srliw t1, a4, 31
	add t2, a4, t1
	sraiw a4, t2, 1
	bge a5, s0, label1622
label462:
	addi a3, a3, 4
	mv t1, zero
	and t3, a4, zero
	andi t2, t3, 1
	bne t2, zero, label459
	addiw a5, a5, 1
	srliw t1, a4, 31
	add t2, a4, t1
	sraiw a4, t2, 1
	blt a5, s0, label462
label2791:
	beq t0, zero, label2996
label1628:
	mv a4, a0
	mv a3, a2
	mv a0, zero
	bne a2, zero, label570
	j label2996
label614:
	lw t4, 0(a5)
	addw t1, t1, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label1876
label617:
	addi a5, a5, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label614
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label617
label2825:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label588
label2826:
	lui a5, 8
	addiw a4, a5, -1
	bgt a3, a4, label586
label1824:
	lw a5, 52(sp)
	mv a4, t0
	divw a3, a3, a5
	beq a3, zero, label1801
label570:
	mv a5, s1
	mv t2, zero
	mv t0, a3
	mv t3, s2
	mv t1, zero
	and t4, a3, s2
	andi t5, t4, 1
	beq t5, zero, label577
label662:
	lw t3, 0(a5)
	addiw t2, t2, 1
	srliw t4, t0, 31
	addw t1, t1, t3
	add t3, t0, t4
	sraiw t0, t3, 1
	bge t2, s0, label2842
label661:
	addi a5, a5, 4
	mv t3, zero
	and t4, t0, zero
	andi t5, t4, 1
	bne t5, zero, label662
	addiw t2, t2, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t2, s0, label661
label579:
	beq t1, zero, label1816
label1817:
	mv t0, a0
	mv a5, a4
	bne a4, zero, label626
	mv t0, a4
	j label585
label1876:
	mv t0, a4
	mv a5, t1
	beq t1, zero, label2826
label588:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label620
	andi t5, a5, 1
	beq t5, zero, label2823
label622:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	addw a4, a4, t5
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	bge t4, s0, label3021
label619:
	addi t1, t1, 4
	andi t5, t3, 1
	beq t5, zero, label2829
label620:
	andi t5, t2, 1
	beq t5, zero, label622
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	blt t4, s0, label619
	j label3021
label2829:
	andi t5, t2, 1
	bne t5, zero, label622
label2823:
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	blt t4, s0, label619
label3021:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t6, t2, a5
	andi t5, t6, 1
	bne t5, zero, label604
	mv a5, zero
	li t3, 1
	srliw t6, t2, 31
	srliw t4, t0, 31
	add t5, t2, t6
	add t6, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t6, 1
	blt t3, s0, label618
	j label2824
label604:
	lw t5, 0(t1)
	addw a5, t4, t5
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t4, t0, 31
	add t5, t2, t6
	add t6, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t6, 1
	bge t3, s0, label2824
label618:
	addi t1, t1, 4
	mv t4, a5
	and t6, t2, t0
	andi t5, t6, 1
	bne t5, zero, label604
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t4, t0, 31
	add t5, t2, t6
	add t6, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t6, 1
	blt t3, s0, label618
label2824:
	lw t0, 52(sp)
	mv t3, zero
	mv t1, zero
	lui t4, 16
	mulw t2, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label614
	li t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label617
	j label2825
label2834:
	mv t0, a0
	mv a5, t2
	beq t2, zero, label2835
label626:
	mv t1, s1
	mv t4, zero
	mv t3, t0
	mv t2, a5
	mv a0, zero
	andi t5, t0, 1
	bne t5, zero, label660
	andi t5, a5, 1
	bne t5, zero, label634
	j label1902
label2839:
	andi t5, t2, 1
	beq t5, zero, label1902
label634:
	lw t5, 0(t1)
	addw a0, a0, t5
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	bge t4, s0, label2833
label659:
	addi t1, t1, 4
	andi t5, t3, 1
	beq t5, zero, label2839
label660:
	andi t5, t2, 1
	beq t5, zero, label634
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label659
	j label2833
label1902:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label659
label2833:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t6, t2, a5
	andi t5, t6, 1
	bne t5, zero, label658
label1916:
	mv a5, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label646
label657:
	addi t1, t1, 4
	mv t4, a5
	and t6, t2, t0
	andi t5, t6, 1
	beq t5, zero, label1916
label658:
	lw t5, 0(t1)
	addiw t3, t3, 1
	srliw t6, t0, 31
	addw a5, t4, t5
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label657
label646:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t4, t1, t0
	andi t5, t4, 1
	bne t5, zero, label653
	li t3, 1
	srliw t4, t1, 31
	srliw t6, t0, 31
	add t5, t1, t4
	add t4, t0, t6
	sraiw t1, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label656
	j label2834
label2836:
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t6, t0, 31
	add t5, t1, t4
	add t4, t0, t6
	sraiw t1, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label2834
label656:
	addi a5, a5, 4
	and t4, t1, t0
	andi t5, t4, 1
	beq t5, zero, label2836
label653:
	lw t4, 0(a5)
	addw t2, t2, t4
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t6, t0, 31
	add t5, t1, t4
	add t4, t0, t6
	sraiw t1, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label656
	mv t0, a0
	mv a5, t2
	bne t2, zero, label626
	j label2835
label577:
	addiw t2, t2, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t2, s0, label661
	j label579
label2842:
	bne t1, zero, label1817
label1816:
	mv t0, a4
	mv a5, a4
	bne a4, zero, label588
label585:
	lui a5, 8
	addiw a4, a5, -1
	ble a3, a4, label1824
label586:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a3, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a3, a5, t1
	bne a3, zero, label570
	mv a4, a2
	mv a3, zero
	bne a2, zero, label473
	j label470
label2835:
	mv a0, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label588
	j label585
label1622:
	bne t0, zero, label1628
label2996:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label473
label470:
	lui a4, 8
	addiw a2, a4, -1
	bgt a1, a2, label472
	j label471
label1801:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label473
	j label470
label1246:
	mv a0, s1
	mv a1, zero
label226:
	bge a1, s0, label1250
	mv a4, s3
	mv a3, s2
	mv a2, a1
	bgt a1, zero, label233
	j label444
label2747:
	lui t0, 8
	addiw a4, t0, -1
	ble a2, a4, label251
label252:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw t0, a4, t2
	mv a4, a5
	subw a2, t0, t1
	ble a2, zero, label444
label233:
	mv a5, s1
	mv t1, zero
	mv t2, zero
	mv t0, a2
	mv t3, s2
	and t5, a2, s2
	andi t4, t5, 1
	beq t4, zero, label240
label443:
	lw t4, 0(a5)
	addiw t1, t1, 1
	addw t2, t2, t4
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	bge t1, s0, label2790
label242:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	bne t4, zero, label443
	addiw t1, t1, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t1, s0, label242
label1265:
	bne t2, zero, label1271
label2740:
	mv t0, a4
	mv a5, zero
	bne a4, zero, label253
label250:
	lui t0, 8
	addiw a4, t0, -1
	bgt a2, a4, label252
	j label251
label300:
	lw t6, 0(t1)
	addw t4, t4, t6
	addiw t5, t5, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add a7, t3, a6
	add a6, t2, t6
	sraiw t3, a7, 1
	sraiw t2, a6, 1
	bge t5, s0, label1373
label303:
	addi t1, t1, 4
	and t6, t3, t2
	andi a6, t6, 1
	bne a6, zero, label300
	addiw t5, t5, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add a7, t3, a6
	add a6, t2, t6
	sraiw t3, a7, 1
	sraiw t2, a6, 1
	blt t5, s0, label303
label2752:
	mv t2, t0
	mv t1, t4
	bne t4, zero, label272
label2753:
	lui t1, 8
	addiw t0, t1, -1
	bgt a4, t0, label271
label270:
	lw t1, 52(sp)
	mv t0, t2
	divw a4, a4, t1
	beq a4, zero, label2747
label253:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, a4
	mv t5, s2
	and t6, a4, s2
	andi a6, t6, 1
	beq a6, zero, label1293
label260:
	lw t5, 0(t1)
	addw t4, t4, t5
	addiw t3, t3, 1
	srliw t6, t2, 31
	add t5, t2, t6
	sraiw t2, t5, 1
	bge t3, s0, label263
label345:
	addi t1, t1, 4
	mv t5, zero
	and t6, t2, zero
	andi a6, t6, 1
	bne a6, zero, label260
	addiw t3, t3, 1
	srliw t6, t2, 31
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label345
label2745:
	beq t4, zero, label1305
label1306:
	mv t2, a5
	mv t1, t0
	bne t0, zero, label310
	mv t2, t0
	j label269
label1373:
	mv t2, t0
	mv t1, t4
	beq t4, zero, label2753
label272:
	mv t3, s1
	mv t6, zero
	mv t0, zero
	mv t5, t2
	mv t4, t1
	andi a6, t2, 1
	beq a6, zero, label1327
label279:
	andi a6, t4, 1
	bne a6, zero, label1332
label306:
	lw a6, 0(t3)
	addiw t6, t6, 1
	srliw a7, t5, 31
	addw t0, t0, a6
	add s4, t5, a7
	srliw a6, t4, 31
	sraiw t5, s4, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	bge t6, s0, label2757
label283:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label279
	andi a6, t4, 1
	bne a6, zero, label306
label2749:
	addiw t6, t6, 1
	srliw a7, t5, 31
	srliw a6, t4, 31
	add s4, t5, a7
	add a7, t4, a6
	sraiw t5, s4, 1
	sraiw t4, a7, 1
	blt t6, s0, label283
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label305
label2958:
	mv t1, t6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t2, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	bge t5, s0, label293
label304:
	addi t3, t3, 4
	mv t6, t1
	and a7, t4, t2
	andi a6, a7, 1
	beq a6, zero, label2958
label305:
	lw a6, 0(t3)
	addiw t5, t5, 1
	srliw a7, t2, 31
	addw t1, t6, a6
	srliw t6, t4, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label304
label293:
	lw t2, 52(sp)
	mv t5, zero
	lui t6, 16
	mv t4, zero
	mulw t3, t1, t2
	addiw t2, t6, -1
	mv t1, s1
	and t6, t3, t2
	andi a6, t6, 1
	bne a6, zero, label300
	li t5, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add a7, t3, a6
	add a6, t2, t6
	sraiw t3, a7, 1
	sraiw t2, a6, 1
	blt t5, s0, label303
	j label2752
label2762:
	mv t2, a5
	mv t1, t3
	beq t3, zero, label2760
label310:
	mv t3, s1
	mv t6, zero
	mv a5, zero
	mv t5, t2
	mv t4, t1
	andi a6, t2, 1
	bne a6, zero, label344
	andi a6, t1, 1
	beq a6, zero, label318
label343:
	lw a6, 0(t3)
	addiw t6, t6, 1
	srliw s4, t4, 31
	addw a5, a5, a6
	srliw a6, t5, 31
	add a7, t5, a6
	add a6, t4, s4
	sraiw t5, a7, 1
	sraiw t4, a6, 1
	bge t6, s0, label320
label342:
	addi t3, t3, 4
	andi a6, t5, 1
	beq a6, zero, label2763
label344:
	andi a6, t4, 1
	beq a6, zero, label343
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw s4, t4, 31
	add a7, t5, a6
	add a6, t4, s4
	sraiw t5, a7, 1
	sraiw t4, a6, 1
	blt t6, s0, label342
	j label320
label2763:
	andi a6, t4, 1
	bne a6, zero, label343
label318:
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw s4, t4, 31
	add a7, t5, a6
	add a6, t4, s4
	sraiw t5, a7, 1
	sraiw t4, a6, 1
	blt t6, s0, label342
label320:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	mv t2, t1
	and a7, t4, t1
	andi a6, a7, 1
	bne a6, zero, label327
	mv t1, zero
	li t5, 1
	srliw a6, t2, 31
	srliw t6, t4, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label330
	j label2758
label327:
	lw a6, 0(t3)
	addw t1, t6, a6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a6, t2, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	bge t5, s0, label1412
label330:
	addi t3, t3, 4
	mv t6, t1
	and a7, t4, t2
	andi a6, a7, 1
	bne a6, zero, label327
	addiw t5, t5, 1
	srliw a6, t2, 31
	srliw t6, t4, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label330
label2758:
	lw t3, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t2, t6, -1
	mulw t4, t1, t3
	mv t3, zero
	mv t1, s1
	and a6, t4, t2
	andi t6, a6, 1
	bne t6, zero, label341
label338:
	addiw t5, t5, 1
	srliw a6, t4, 31
	srliw a7, t2, 31
	add t6, t4, a6
	add a6, t2, a7
	sraiw t4, t6, 1
	sraiw t2, a6, 1
	blt t5, s0, label340
	j label1428
label1412:
	lw t3, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t2, t6, -1
	mulw t4, t1, t3
	and a6, t4, t2
	mv t3, zero
	mv t1, s1
	andi t6, a6, 1
	beq t6, zero, label338
label341:
	lw t6, 0(t1)
	addiw t5, t5, 1
	srliw a6, t4, 31
	srliw a7, t2, 31
	addw t3, t3, t6
	add t6, t4, a6
	add a6, t2, a7
	sraiw t4, t6, 1
	sraiw t2, a6, 1
	bge t5, s0, label2762
label340:
	addi t1, t1, 4
	and a6, t4, t2
	andi t6, a6, 1
	bne t6, zero, label341
	addiw t5, t5, 1
	srliw a6, t4, 31
	srliw a7, t2, 31
	add t6, t4, a6
	add a6, t2, a7
	sraiw t4, t6, 1
	sraiw t2, a6, 1
	blt t5, s0, label340
label1428:
	mv t2, a5
	mv t1, t3
	bne t3, zero, label310
	j label2760
label2757:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label305
	j label2958
label1332:
	addiw t6, t6, 1
	srliw a7, t5, 31
	srliw a6, t4, 31
	add s4, t5, a7
	add a7, t4, a6
	sraiw t5, s4, 1
	sraiw t4, a7, 1
	blt t6, s0, label283
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	mv t2, t1
	and a7, t4, t1
	andi a6, a7, 1
	bne a6, zero, label305
	j label2958
label263:
	bne t4, zero, label1306
label1305:
	mv t2, t0
	mv t1, t0
	bne t0, zero, label272
label269:
	lui t1, 8
	addiw t0, t1, -1
	ble a4, t0, label270
label271:
	lw t3, 52(sp)
	lui t4, 16
	divw t0, a4, t3
	lw t3, 108(sp)
	addw t1, t0, t4
	mv t0, t2
	subw a4, t1, t3
	bne a4, zero, label253
	lui t0, 8
	addiw a4, t0, -1
	bgt a2, a4, label252
	j label251
label2760:
	mv a5, t2
	mv t1, t0
	mv t2, t0
	bne t0, zero, label272
	j label269
label240:
	addiw t1, t1, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t1, s0, label242
	j label1265
label2790:
	beq t2, zero, label2740
label1271:
	mv t0, a3
	mv a5, a4
	mv a3, zero
	bne a4, zero, label350
	j label2740
label397:
	lw t6, 0(t1)
	addw t4, t4, t6
	addiw t5, t5, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add a7, t3, a6
	add a6, t2, t6
	sraiw t3, a7, 1
	sraiw t2, a6, 1
	bge t5, s0, label1524
label400:
	addi t1, t1, 4
	and a6, t3, t2
	andi t6, a6, 1
	bne t6, zero, label397
	addiw t5, t5, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add a7, t3, a6
	add a6, t2, t6
	sraiw t3, a7, 1
	sraiw t2, a6, 1
	blt t5, s0, label400
label2774:
	mv t2, t0
	mv t1, t4
	bne t4, zero, label369
label2775:
	lui t1, 8
	addiw t0, t1, -1
	ble a5, t0, label1469
label367:
	lw t3, 52(sp)
	lui t4, 16
	divw t0, a5, t3
	lw t3, 108(sp)
	addw t1, t0, t4
	mv t0, t2
	subw a5, t1, t3
	beq a5, zero, label2769
label350:
	mv t1, s1
	mv t4, zero
	mv t2, a5
	mv t5, s2
	mv t3, zero
	and t6, a5, s2
	andi a6, t6, 1
	bne a6, zero, label357
	li t4, 1
	srliw t5, a5, 31
	add t6, a5, t5
	sraiw t2, t6, 1
	blt t4, s0, label442
	j label2767
label1524:
	mv t2, t0
	mv t1, t4
	beq t4, zero, label2775
label369:
	mv t3, s1
	mv t6, zero
	mv t5, t2
	mv t4, t1
	mv t0, zero
	andi a6, t2, 1
	bne a6, zero, label402
	andi a6, t1, 1
	beq a6, zero, label2771
label376:
	lw a6, 0(t3)
	addw t0, t0, a6
	addiw t6, t6, 1
	srliw a7, t5, 31
	srliw s4, t4, 31
	add a6, t5, a7
	add a7, t4, s4
	sraiw t5, a6, 1
	sraiw t4, a7, 1
	bge t6, s0, label1492
label379:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label402
	andi a6, t4, 1
	bne a6, zero, label376
label2771:
	addiw t6, t6, 1
	srliw a7, t5, 31
	srliw s4, t4, 31
	add a6, t5, a7
	add a7, t4, s4
	sraiw t5, a6, 1
	sraiw t4, a7, 1
	blt t6, s0, label379
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label387
	j label1498
label1492:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	beq a6, zero, label1498
label387:
	lw a6, 0(t3)
	addw t1, t6, a6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t2, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	bge t5, s0, label2773
label401:
	addi t3, t3, 4
	mv t6, t1
	and a7, t4, t2
	andi a6, a7, 1
	bne a6, zero, label387
	addiw t5, t5, 1
	srliw a7, t2, 31
	srliw t6, t4, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label401
	j label2773
label402:
	andi a6, t4, 1
	beq a6, zero, label376
	addiw t6, t6, 1
	srliw a7, t5, 31
	srliw s4, t4, 31
	add a6, t5, a7
	add a7, t4, s4
	sraiw t5, a6, 1
	sraiw t4, a7, 1
	blt t6, s0, label379
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label387
	j label1498
label2773:
	lw t2, 52(sp)
	mv t5, zero
	lui t6, 16
	mv t4, zero
	mulw t3, t1, t2
	addiw t2, t6, -1
	mv t1, s1
	and a6, t3, t2
	andi t6, a6, 1
	bne t6, zero, label397
	li t5, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add a7, t3, a6
	add a6, t2, t6
	sraiw t3, a7, 1
	sraiw t2, a6, 1
	blt t5, s0, label400
	j label2774
label1498:
	mv t1, t6
	addiw t5, t5, 1
	srliw a7, t2, 31
	srliw t6, t4, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label401
	j label2773
label357:
	lw t5, 0(t1)
	addw t3, t3, t5
	addiw t4, t4, 1
	srliw t5, t2, 31
	add t6, t2, t5
	sraiw t2, t6, 1
	bge t4, s0, label360
label442:
	addi t1, t1, 4
	mv t5, zero
	and t6, t2, zero
	andi a6, t6, 1
	bne a6, zero, label357
	addiw t4, t4, 1
	srliw t5, t2, 31
	add t6, t2, t5
	sraiw t2, t6, 1
	blt t4, s0, label442
label2767:
	bne t3, zero, label1462
label1461:
	mv t2, t0
	mv t1, t0
	bne t0, zero, label369
label366:
	lui t1, 8
	addiw t0, t1, -1
	bgt a5, t0, label367
	j label1469
label360:
	beq t3, zero, label1461
label1462:
	mv t2, a3
	mv t1, t0
	bne t0, zero, label407
	mv t2, t0
	j label366
label2783:
	mv t2, a3
	mv t1, t4
	beq t4, zero, label2784
label407:
	mv t3, s1
	mv t6, zero
	mv a3, zero
	mv t5, t2
	mv t4, t1
	andi a6, t2, 1
	beq a6, zero, label1543
label440:
	andi a6, t4, 1
	bne a6, zero, label1591
label414:
	lw a6, 0(t3)
	addw a3, a3, a6
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw s4, t4, 31
	add a7, t5, a6
	add a6, t4, s4
	sraiw t5, a7, 1
	sraiw t4, a6, 1
	bge t6, s0, label2987
label439:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label440
	andi a6, t4, 1
	bne a6, zero, label414
label2780:
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw s4, t4, 31
	add a7, t5, a6
	add a6, t4, s4
	sraiw t5, a7, 1
	sraiw t4, a6, 1
	blt t6, s0, label439
label2987:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	mv t2, t1
	and a7, t4, t1
	andi a6, a7, 1
	beq a6, zero, label1557
label424:
	lw a6, 0(t3)
	addw t1, t6, a6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a6, t2, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	bge t5, s0, label1566
label427:
	addi t3, t3, 4
	mv t6, t1
	and a7, t4, t2
	andi a6, a7, 1
	bne a6, zero, label424
	addiw t5, t5, 1
	srliw a6, t2, 31
	srliw t6, t4, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label427
label2781:
	lw t4, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t2, t6, -1
	mulw t3, t1, t4
	mv t4, zero
	mv t1, s1
	and t6, t3, t2
	andi a6, t6, 1
	bne a6, zero, label435
label1575:
	addiw t5, t5, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add a7, t3, t6
	add t6, t2, a6
	sraiw t3, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label438
	j label2783
label2785:
	addiw t5, t5, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add a7, t3, t6
	add t6, t2, a6
	sraiw t3, a7, 1
	sraiw t2, t6, 1
	bge t5, s0, label2783
label438:
	addi t1, t1, 4
	and t6, t3, t2
	andi a6, t6, 1
	beq a6, zero, label2785
label435:
	lw t6, 0(t1)
	addw t4, t4, t6
	addiw t5, t5, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add a7, t3, t6
	add t6, t2, a6
	sraiw t3, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label438
	mv t2, a3
	mv t1, t4
	bne t4, zero, label407
label2784:
	mv a3, t2
	mv t1, t0
	mv t2, t0
	bne t0, zero, label369
	j label366
label1591:
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw s4, t4, 31
	add a7, t5, a6
	add a6, t4, s4
	sraiw t5, a7, 1
	sraiw t4, a6, 1
	blt t6, s0, label439
	j label2987
label1566:
	lw t4, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t2, t6, -1
	mulw t3, t1, t4
	and t6, t3, t2
	mv t4, zero
	mv t1, s1
	andi a6, t6, 1
	bne a6, zero, label435
	j label1575
label1469:
	lw t1, 52(sp)
	mv t0, t2
	divw a5, a5, t1
	bne a5, zero, label350
	mv t0, a4
	mv a5, zero
	bne a4, zero, label253
	j label250
label251:
	lw t0, 52(sp)
	mv a4, a5
	divw a2, a2, t0
	bgt a2, zero, label233
label444:
	lw a2, 0(a0)
	bne a3, a2, label1604
	addiw a1, a1, 1
	addi a0, a0, 4
	j label226
label1604:
	mv a0, s2
label446:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s0, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 112
	ret
label2769:
	mv t0, a4
	mv a5, zero
	bne a4, zero, label253
	j label250
label2708:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label128
	j label125
label1543:
	andi a6, t4, 1
	bne a6, zero, label414
	j label2780
label1293:
	addiw t3, t3, 1
	srliw t6, t2, 31
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t3, s0, label345
	j label2745
label1557:
	mv t1, t6
	addiw t5, t5, 1
	srliw a6, t2, 31
	srliw t6, t4, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label427
	j label2781
label1048:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label80
	j label2704
label1762:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label551
	j label2812
label1144:
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t5, t0, 31
	add t6, t1, t4
	add t4, t0, t5
	sraiw t1, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label175
	j label2720
label1250:
	mv a0, zero
	j label446
label1327:
	andi a6, t4, 1
	bne a6, zero, label306
	j label2749
