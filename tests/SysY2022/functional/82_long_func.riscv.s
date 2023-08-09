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
	slli a3, a0, 2
	li s2, 1
	slli a2, a3, 2
	sd s3, 24(sp)
	li s3, 2
	sd s0, 32(sp)
	li s0, 16
	sd s4, 40(sp)
	sd a1, 48(sp)
	slli a1, a2, 2
	sd a0, 56(sp)
	lui a0, 1
	sd a3, 64(sp)
	slli a3, a1, 2
	sd a2, 72(sp)
	sd a1, 80(sp)
	lui a1, 2
	sd a3, 88(sp)
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
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	mv a0, s2
	mv a1, s2
	mv a2, s3
	j label7
label2717:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t5, t1, t0
	andi t4, t5, 1
	beq t4, zero, label1152
label173:
	lw t4, 0(a5)
	addw t2, t2, t4
	addiw t3, t3, 1
	srliw t6, t1, 31
	srliw t5, t0, 31
	add t4, t1, t6
	add t6, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t6, 1
	bge t3, s0, label1161
label176:
	addi a5, a5, 4
	and t5, t1, t0
	andi t4, t5, 1
	bne t4, zero, label173
	addiw t3, t3, 1
	srliw t6, t1, 31
	srliw t5, t0, 31
	add t4, t1, t6
	add t6, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label176
label2718:
	mv t0, a4
	mv a5, t2
	bne t2, zero, label144
label2719:
	lui a5, 8
	addiw a4, a5, -1
	bgt a2, a4, label143
label142:
	lw a5, 52(sp)
	mv a4, t0
	divw a2, a2, a5
	bne a2, zero, label125
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label219
label2709:
	lw a4, 52(sp)
	mv a2, a3
	divw a0, a0, a4
label7:
	ble a0, zero, label222
label11:
	mv a3, s1
	mv t0, zero
	mv a4, a0
	mv t1, s2
	mv a5, zero
	and t2, a0, s2
	andi t3, t2, 1
	beq t3, zero, label18
label221:
	lw t1, 0(a3)
	addiw t0, t0, 1
	addw a5, a5, t1
	srliw t1, a4, 31
	add t2, a4, t1
	sraiw a4, t2, 1
	bge t0, s0, label2735
label20:
	addi a3, a3, 4
	mv t1, zero
	and t2, a4, zero
	andi t3, t2, 1
	bne t3, zero, label221
	addiw t0, t0, 1
	srliw t1, a4, 31
	add t2, a4, t1
	sraiw a4, t2, 1
	blt t0, s0, label20
label908:
	beq a5, zero, label2683
label914:
	mv a4, a1
	mv a3, a2
	mv a1, zero
	bne a2, zero, label26
	mv a4, a2
	mv a3, zero
	j label1073
label1161:
	mv t0, a4
	mv a5, t2
	beq t2, zero, label2719
label144:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label151
	andi t5, a5, 1
	beq t5, zero, label2714
label153:
	lw t5, 0(t1)
	addw a4, a4, t5
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	bge t4, s0, label2926
label178:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label151
	andi t5, t2, 1
	bne t5, zero, label153
label2714:
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	blt t4, s0, label178
label2926:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t5, t2, t0
	andi t4, t5, 1
	beq t4, zero, label1135
label163:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label2717
label177:
	addi t1, t1, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label163
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label177
	j label2717
label151:
	andi t5, t2, 1
	beq t5, zero, label153
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	blt t4, s0, label178
	j label2926
label143:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a2, a5, t1
	beq a2, zero, label2713
label125:
	mv a5, s1
	mv t1, zero
	mv t2, zero
	mv t0, a2
	mv t3, s2
	and t4, a2, s2
	andi t5, t4, 1
	beq t5, zero, label1078
label132:
	lw t3, 0(a5)
	addw t2, t2, t3
	addiw t1, t1, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	bge t1, s0, label135
label217:
	addi a5, a5, 4
	mv t3, zero
	and t4, t0, zero
	andi t5, t4, 1
	bne t5, zero, label132
	addiw t1, t1, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t1, s0, label217
label2710:
	beq t2, zero, label1090
label1091:
	mv t0, a3
	mv a5, a4
	bne a4, zero, label182
	mv t0, a4
	j label141
label2727:
	mv t0, a3
	mv a5, t1
	beq t1, zero, label2725
label182:
	mv t1, s1
	mv t4, zero
	mv a3, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label215
	andi t5, a5, 1
	beq t5, zero, label2723
label189:
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
label214:
	addi t1, t1, 4
	andi t5, t3, 1
	beq t5, zero, label2729
label215:
	andi t5, t2, 1
	beq t5, zero, label189
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label214
label2933:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t6, t2, a5
	andi t5, t6, 1
	beq t5, zero, label1186
label213:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a5, t4, t5
	srliw t5, t0, 31
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label2728
label201:
	addi t1, t1, 4
	mv t4, a5
	and t6, t2, t0
	andi t5, t6, 1
	bne t5, zero, label213
label1186:
	mv a5, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label201
	lw t1, 52(sp)
	mv t3, zero
	lui t5, 16
	addiw t0, t5, -1
	mulw t2, a5, t1
	and t4, t2, t0
	mv t1, zero
	mv a5, s1
	andi t5, t4, 1
	beq t5, zero, label209
label212:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t6, t0, 31
	addw t1, t1, t4
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label2727
label211:
	addi a5, a5, 4
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label212
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label211
label1209:
	mv t0, a3
	mv a5, t1
	bne t1, zero, label182
	j label2725
label2729:
	andi t5, t2, 1
	bne t5, zero, label189
label2723:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label214
	j label2933
label2728:
	lw t1, 52(sp)
	mv t3, zero
	lui t5, 16
	addiw t0, t5, -1
	mulw t2, a5, t1
	and t4, t2, t0
	mv t1, zero
	mv a5, s1
	andi t5, t4, 1
	bne t5, zero, label212
label209:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label211
	j label1209
label135:
	bne t2, zero, label1091
	j label1090
label2696:
	lw a5, 52(sp)
	mv a4, t0
	divw a3, a3, a5
	beq a3, zero, label2706
label26:
	mv a5, s1
	mv t1, zero
	mv t2, zero
	mv t0, a3
	mv t3, s2
	and t4, a3, s2
	andi t5, t4, 1
	bne t5, zero, label118
	li t1, 1
	srliw t3, a3, 31
	add t4, a3, t3
	sraiw t0, t4, 1
	blt t1, s0, label35
	j label928
label2686:
	addiw t1, t1, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	bge t1, s0, label928
label35:
	addi a5, a5, 4
	mv t3, zero
	and t4, t0, zero
	andi t5, t4, 1
	beq t5, zero, label2686
label118:
	lw t3, 0(a5)
	addiw t1, t1, 1
	addw t2, t2, t3
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t1, s0, label35
	bne t2, zero, label934
label2685:
	mv t0, a4
	mv a5, a4
	bne a4, zero, label80
label997:
	lui a5, 8
	addiw a4, a5, -1
	bgt a3, a4, label117
	j label2696
label2699:
	lw t2, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t1, a5, t2
	mv t2, zero
	mv a5, s1
	and t5, t1, t0
	andi t4, t5, 1
	beq t4, zero, label1037
label109:
	lw t4, 0(a5)
	addw t2, t2, t4
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t6, t0, 31
	add t5, t1, t4
	add t4, t0, t6
	sraiw t1, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label1046
label112:
	addi a5, a5, 4
	and t5, t1, t0
	andi t4, t5, 1
	bne t4, zero, label109
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t6, t0, 31
	add t5, t1, t4
	add t4, t0, t6
	sraiw t1, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label112
label2701:
	mv t0, a4
	mv a5, t2
	bne t2, zero, label80
label2702:
	lui a5, 8
	addiw a4, a5, -1
	ble a3, a4, label2696
label117:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a3, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a3, a5, t1
	bne a3, zero, label26
	mv a4, a2
	mv a3, zero
	bne a2, zero, label125
	j label1073
label2700:
	mv a5, t4
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	bge t3, s0, label2699
label101:
	addi t1, t1, 4
	mv t4, a5
	and t6, t2, t0
	andi t5, t6, 1
	beq t5, zero, label2700
label98:
	lw t5, 0(t1)
	addw a5, t4, t5
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label101
	lw t2, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t1, a5, t2
	and t5, t1, t0
	mv t2, zero
	mv a5, s1
	andi t4, t5, 1
	bne t4, zero, label109
label1037:
	addiw t3, t3, 1
	srliw t4, t1, 31
	srliw t6, t0, 31
	add t5, t1, t4
	add t4, t0, t6
	sraiw t1, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label112
	j label2701
label1046:
	mv t0, a4
	mv a5, t2
	beq t2, zero, label2702
label80:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label114
	andi t5, a5, 1
	bne t5, zero, label87
	j label2697
label114:
	andi t5, t2, 1
	bne t5, zero, label1053
label87:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw a6, t2, 31
	addw a4, a4, t5
	srliw t5, t3, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	bge t4, s0, label2912
label113:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label114
	andi t5, t2, 1
	bne t5, zero, label87
label2697:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label113
label2912:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t6, t2, a5
	andi t5, t6, 1
	bne t5, zero, label98
	mv a5, zero
	li t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label101
	j label2699
label1053:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label113
	j label2912
label1090:
	mv t0, a4
	mv a5, a4
	bne a4, zero, label144
label141:
	lui a5, 8
	addiw a4, a5, -1
	bgt a2, a4, label143
	j label142
label928:
	beq t2, zero, label2685
label934:
	mv t0, a1
	mv a5, a4
	bne a4, zero, label40
	mv t0, a4
	j label997
label990:
	mv t0, a1
	mv a5, t1
	beq t1, zero, label2693
label40:
	mv t1, s1
	mv t4, zero
	mv a1, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	beq t5, zero, label941
label47:
	andi t5, t2, 1
	beq t5, zero, label49
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	blt t4, s0, label52
	j label2902
label972:
	lw t0, 52(sp)
	mv t3, zero
	mv t1, zero
	lui t5, 16
	mulw t2, a5, t0
	addiw t0, t5, -1
	mv a5, s1
	and t4, t2, t0
	andi t5, t4, 1
	beq t5, zero, label981
label70:
	lw t4, 0(a5)
	addw t1, t1, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label990
label73:
	addi a5, a5, 4
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label70
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label73
label2692:
	mv t0, a1
	mv a5, t1
	bne t1, zero, label40
label2693:
	mv a1, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label80
	j label997
label941:
	andi t5, t2, 1
	beq t5, zero, label2687
label49:
	lw t5, 0(t1)
	addw a1, a1, t5
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	bge t4, s0, label959
label52:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label47
	andi t5, t2, 1
	bne t5, zero, label49
label2687:
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	blt t4, s0, label52
label2902:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t4, t2, t0
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
	blt t3, s0, label62
	j label972
label2691:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label972
label62:
	addi t1, t1, 4
	and t4, t2, t0
	andi t5, t4, 1
	beq t5, zero, label2691
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
	blt t3, s0, label62
	lw t0, 52(sp)
	mv t3, zero
	mv t1, zero
	lui t5, 16
	mulw t2, a5, t0
	addiw t0, t5, -1
	mv a5, s1
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label70
	j label981
label959:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t4, t2, a5
	mv a5, zero
	andi t5, t4, 1
	bne t5, zero, label74
	j label60
label981:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label73
	j label2692
label2725:
	mv a3, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label144
	j label141
label18:
	addiw t0, t0, 1
	srliw t1, a4, 31
	add t2, a4, t1
	sraiw a4, t2, 1
	blt t0, s0, label20
	j label908
label2735:
	bne a5, zero, label914
label2683:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label125
label1073:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label219
	j label2709
label2713:
	lui a4, 8
	addiw a2, a4, -1
	ble a0, a2, label2709
label219:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a0, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	mv a2, a3
	subw a0, a4, a5
	bgt a0, zero, label11
	j label222
label2706:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label125
	j label1073
label222:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv s4, s3
	blt s3, s0, label1246
	j label1245
label663:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s4, s4, 1
	bge s4, s0, label1245
label1246:
	mv a2, s3
	mv a1, s2
	mv a0, s4
	bgt s4, zero, label452
	j label663
label2794:
	lui a4, 8
	addiw a2, a4, -1
	ble a0, a2, label470
label471:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a0, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	mv a2, a3
	subw a0, a4, a5
	ble a0, zero, label663
label452:
	mv a3, s1
	mv a5, zero
	mv t0, zero
	mv a4, a0
	mv t1, s2
	and t3, a0, s2
	andi t2, t3, 1
	bne t2, zero, label662
	li a5, 1
	srliw t2, a0, 31
	add t1, a0, t2
	sraiw a4, t1, 1
	blt a5, s0, label461
	j label1619
label2788:
	addiw a5, a5, 1
	srliw t2, a4, 31
	add t1, a4, t2
	sraiw a4, t1, 1
	bge a5, s0, label1619
label461:
	addi a3, a3, 4
	mv t1, zero
	and t3, a4, zero
	andi t2, t3, 1
	beq t2, zero, label2788
label662:
	lw t2, 0(a3)
	addiw a5, a5, 1
	addw t0, t0, t2
	srliw t2, a4, 31
	add t1, a4, t2
	sraiw a4, t1, 1
	blt a5, s0, label461
	bne t0, zero, label1625
label2787:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label472
label469:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label471
	j label470
label508:
	lw t5, 0(t1)
	addw a5, t4, t5
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t4, t0, 31
	add t5, t2, t6
	add t6, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t6, 1
	bge t3, s0, label1706
label511:
	addi t1, t1, 4
	mv t4, a5
	and t5, t2, t0
	andi t6, t5, 1
	bne t6, zero, label508
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t4, t0, 31
	add t5, t2, t6
	add t6, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t6, 1
	blt t3, s0, label511
label2796:
	lw t1, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t2, a5, t1
	mv t1, zero
	mv a5, s1
	and t5, t2, t0
	andi t4, t5, 1
	beq t4, zero, label519
label522:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t5, t0, 31
	addw t1, t1, t4
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label2800
label521:
	addi a5, a5, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label522
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label521
label1722:
	mv t0, a4
	mv a5, t1
	bne t1, zero, label490
label2798:
	lui a5, 8
	addiw a4, a5, -1
	ble a2, a4, label488
label489:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a2, a5, t1
	beq a2, zero, label2794
label472:
	mv a5, s1
	mv t2, zero
	mv t0, a2
	mv t3, s2
	mv t1, zero
	and t5, a2, s2
	andi t4, t5, 1
	bne t4, zero, label564
	li t2, 1
	srliw t4, a2, 31
	add t3, a2, t4
	sraiw t0, t3, 1
	blt t2, s0, label563
	j label481
label2800:
	mv t0, a4
	mv a5, t1
	beq t1, zero, label2798
label490:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	beq t5, zero, label497
label524:
	andi t5, t2, 1
	beq t5, zero, label498
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	blt t4, s0, label523
	j label2795
label497:
	andi t5, t2, 1
	beq t5, zero, label1683
label498:
	lw t5, 0(t1)
	addw a4, a4, t5
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	bge t4, s0, label2795
label523:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label524
	andi t5, t2, 1
	bne t5, zero, label498
label1683:
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	blt t4, s0, label523
label2795:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	andi t6, t5, 1
	bne t6, zero, label508
	mv a5, zero
	li t3, 1
	srliw t6, t2, 31
	srliw t4, t0, 31
	add t5, t2, t6
	add t6, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t6, 1
	blt t3, s0, label511
	j label2796
label1706:
	lw t1, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t2, a5, t1
	and t5, t2, t0
	mv t1, zero
	mv a5, s1
	andi t4, t5, 1
	bne t4, zero, label522
label519:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label521
	j label1722
label564:
	lw t3, 0(a5)
	addiw t2, t2, 1
	srliw t4, t0, 31
	addw t1, t1, t3
	add t3, t0, t4
	sraiw t0, t3, 1
	bge t2, s0, label2814
label563:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	bne t4, zero, label564
	addiw t2, t2, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t2, s0, label563
label481:
	beq t1, zero, label1657
label1658:
	mv t0, a3
	mv a5, a4
	bne a4, zero, label528
	mv t0, a4
	j label487
label2807:
	addiw t3, t3, 1
	srliw t5, t1, 31
	srliw t6, t0, 31
	add t4, t1, t5
	add t5, t0, t6
	sraiw t1, t4, 1
	sraiw t0, t5, 1
	bge t3, s0, label2805
label557:
	addi a5, a5, 4
	and t4, t1, t0
	andi t5, t4, 1
	beq t5, zero, label2807
label554:
	lw t4, 0(a5)
	addw t2, t2, t4
	addiw t3, t3, 1
	srliw t5, t1, 31
	srliw t6, t0, 31
	add t4, t1, t5
	add t5, t0, t6
	sraiw t1, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label557
	mv t0, a3
	mv a5, t2
	beq t2, zero, label2806
label528:
	mv t1, s1
	mv t4, zero
	mv t3, t0
	mv t2, a5
	mv a3, zero
	andi t5, t0, 1
	bne t5, zero, label562
	andi t5, a5, 1
	beq t5, zero, label2803
label561:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw t6, t3, 31
	addw a3, a3, t5
	add a6, t3, t6
	srliw t5, t2, 31
	sraiw t3, a6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	bge t4, s0, label3004
label559:
	addi t1, t1, 4
	andi t5, t3, 1
	beq t5, zero, label2809
label562:
	andi t5, t2, 1
	beq t5, zero, label561
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw t5, t2, 31
	add a6, t3, t6
	add t6, t2, t5
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	blt t4, s0, label559
	j label3004
label2809:
	andi t5, t2, 1
	bne t5, zero, label561
label2803:
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw t5, t2, 31
	add a6, t3, t6
	add t6, t2, t5
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	blt t4, s0, label559
label3004:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label544
	li t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label558
	j label2804
label544:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label2804
label558:
	addi t1, t1, 4
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label544
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label558
label2804:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	mv t2, zero
	mulw t1, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t4, t1, t0
	andi t5, t4, 1
	bne t5, zero, label554
	li t3, 1
	srliw t5, t1, 31
	srliw t6, t0, 31
	add t4, t1, t5
	add t5, t0, t6
	sraiw t1, t4, 1
	sraiw t0, t5, 1
	blt t3, s0, label557
label2805:
	mv t0, a3
	mv a5, t2
	bne t2, zero, label528
label2806:
	mv a3, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label490
	j label487
label488:
	lw a5, 52(sp)
	mv a4, t0
	divw a2, a2, a5
	bne a2, zero, label472
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label471
label470:
	lw a4, 52(sp)
	mv a2, a3
	divw a0, a0, a4
	bgt a0, zero, label452
	j label663
label2814:
	bne t1, zero, label1658
label1657:
	mv t0, a4
	mv a5, a4
	bne a4, zero, label490
label487:
	lui a5, 8
	addiw a4, a5, -1
	bgt a2, a4, label489
	j label488
label1619:
	beq t0, zero, label2787
label1625:
	mv a4, a1
	mv a3, a2
	mv a1, zero
	bne a2, zero, label569
	j label2787
label2821:
	lui a5, 8
	addiw a4, a5, -1
	bgt a3, a4, label586
label585:
	lw a5, 52(sp)
	mv a4, t0
	divw a3, a3, a5
	beq a3, zero, label2816
label569:
	mv a5, s1
	mv t2, zero
	mv t0, a3
	mv t3, s2
	mv t1, zero
	and t5, a3, s2
	andi t4, t5, 1
	bne t4, zero, label661
	li t2, 1
	srliw t4, a3, 31
	add t3, a3, t4
	sraiw t0, t3, 1
	blt t2, s0, label660
	j label578
label2836:
	addiw t2, t2, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	bge t2, s0, label578
label660:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	beq t4, zero, label2836
label661:
	lw t3, 0(a5)
	addiw t2, t2, 1
	srliw t4, t0, 31
	addw t1, t1, t3
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t2, s0, label660
	beq t1, zero, label1813
label1814:
	mv t0, a1
	mv a5, a4
	bne a4, zero, label625
	mv t0, a4
	j label584
label2820:
	mv t0, a4
	mv a5, t1
	beq t1, zero, label2821
label587:
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	beq t5, zero, label1835
label619:
	andi t5, t2, 1
	bne t5, zero, label1881
label621:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw a6, t2, 31
	addw a4, a4, t5
	srliw t5, t3, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	bge t4, s0, label3016
label618:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label619
	andi t5, t2, 1
	bne t5, zero, label621
label2818:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label618
	j label3016
label2832:
	addiw t3, t3, 1
	srliw t6, t1, 31
	srliw t5, t0, 31
	add t4, t1, t6
	add t6, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t6, 1
	bge t3, s0, label2830
label656:
	addi a5, a5, 4
	and t5, t1, t0
	andi t4, t5, 1
	beq t4, zero, label2832
label653:
	lw t4, 0(a5)
	addw t2, t2, t4
	addiw t3, t3, 1
	srliw t6, t1, 31
	srliw t5, t0, 31
	add t4, t1, t6
	add t6, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label656
	mv t0, a1
	mv a5, t2
	beq t2, zero, label2831
label625:
	mv t1, s1
	mv t4, zero
	mv t3, t0
	mv t2, a5
	mv a1, zero
	andi t5, t0, 1
	bne t5, zero, label659
	andi t5, a5, 1
	bne t5, zero, label633
	j label1899
label2834:
	andi t5, t2, 1
	beq t5, zero, label1899
label633:
	lw t5, 0(t1)
	addw a1, a1, t5
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw t5, t2, 31
	add a6, t3, t6
	add t6, t2, t5
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	bge t4, s0, label2828
label658:
	addi t1, t1, 4
	andi t5, t3, 1
	beq t5, zero, label2834
label659:
	andi t5, t2, 1
	beq t5, zero, label633
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw t5, t2, 31
	add a6, t3, t6
	add t6, t2, t5
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	blt t4, s0, label658
	j label2828
label1899:
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw t5, t2, 31
	add a6, t3, t6
	add t6, t2, t5
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	blt t4, s0, label658
	j label2828
label3016:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	andi t6, t5, 1
	bne t6, zero, label603
	mv a5, zero
	li t3, 1
	srliw t6, t0, 31
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label617
	j label2819
label2823:
	mv a5, t4
	addiw t3, t3, 1
	srliw t6, t0, 31
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label2819
label617:
	addi t1, t1, 4
	mv t4, a5
	and t5, t2, t0
	andi t6, t5, 1
	beq t6, zero, label2823
label603:
	lw t5, 0(t1)
	addw a5, t4, t5
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label617
label2819:
	lw t0, 52(sp)
	mv t3, zero
	mv t1, zero
	lui t4, 16
	mulw t2, a5, t0
	addiw t0, t4, -1
	mv a5, s1
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label613
	li t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label616
	j label2820
label2822:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label2820
label616:
	addi a5, a5, 4
	and t5, t2, t0
	andi t4, t5, 1
	beq t4, zero, label2822
label613:
	lw t4, 0(a5)
	addw t1, t1, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label616
	mv t0, a4
	mv a5, t1
	bne t1, zero, label587
	j label2821
label2828:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	andi t6, t5, 1
	bne t6, zero, label657
label1913:
	mv a5, t4
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	bge t3, s0, label1920
label645:
	addi t1, t1, 4
	mv t4, a5
	and t5, t2, t0
	andi t6, t5, 1
	beq t6, zero, label1913
label657:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a5, t4, t5
	srliw t4, t0, 31
	srliw t5, t2, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label645
	lw t2, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t1, a5, t2
	and t5, t1, t0
	mv t2, zero
	mv a5, s1
	andi t4, t5, 1
	bne t4, zero, label653
	j label1929
label1881:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label618
	j label3016
label2830:
	mv t0, a1
	mv a5, t2
	bne t2, zero, label625
label2831:
	mv a1, t0
	mv a5, a4
	mv t0, a4
	bne a4, zero, label587
	j label584
label1920:
	lw t2, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t0, t4, -1
	mulw t1, a5, t2
	and t5, t1, t0
	mv t2, zero
	mv a5, s1
	andi t4, t5, 1
	bne t4, zero, label653
label1929:
	addiw t3, t3, 1
	srliw t6, t1, 31
	srliw t5, t0, 31
	add t4, t1, t6
	add t6, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label656
	j label2830
label578:
	bne t1, zero, label1814
label1813:
	mv t0, a4
	mv a5, a4
	bne a4, zero, label587
label584:
	lui a5, 8
	addiw a4, a5, -1
	ble a3, a4, label585
label586:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a3, t1
	lw t1, 108(sp)
	addw a5, a4, t2
	mv a4, t0
	subw a3, a5, t1
	bne a3, zero, label569
	mv a4, a2
	mv a3, zero
	bne a2, zero, label472
	j label469
label2816:
	mv a4, a2
	mv a3, zero
	bne a2, zero, label472
	j label469
label1245:
	mv a0, s1
	mv a1, zero
label226:
	bge a1, s0, label1249
	mv a4, s3
	mv a3, s2
	mv a2, a1
	bgt a1, zero, label235
	j label446
label351:
	lw t1, 52(sp)
	lui t2, 16
	divw a4, a2, t1
	lw t1, 108(sp)
	addw t0, a4, t2
	mv a4, a5
	subw a2, t0, t1
	ble a2, zero, label446
label235:
	mv a5, s1
	mv t1, zero
	mv t2, zero
	mv t0, a2
	mv t3, s2
	and t4, a2, s2
	andi t5, t4, 1
	bne t5, zero, label242
	li t1, 1
	srliw t3, a2, 31
	add t4, a2, t3
	sraiw t0, t4, 1
	blt t1, s0, label445
	j label2737
label242:
	lw t3, 0(a5)
	addw t2, t2, t3
	addiw t1, t1, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	bge t1, s0, label245
label445:
	addi a5, a5, 4
	mv t3, zero
	and t4, t0, zero
	andi t5, t4, 1
	bne t5, zero, label242
	addiw t1, t1, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t1, s0, label445
label2737:
	beq t2, zero, label1270
label1271:
	mv t0, a3
	mv a5, a4
	mv a3, zero
	bne a4, zero, label250
	j label1274
label327:
	lw t2, 52(sp)
	mv t5, zero
	lui t6, 16
	mv t4, zero
	mulw t3, t1, t2
	addiw t2, t6, -1
	mv t1, s1
	and t6, t3, t2
	andi a6, t6, 1
	beq a6, zero, label1403
label334:
	lw t6, 0(t1)
	addw t4, t4, t6
	addiw t5, t5, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add a7, t3, a6
	add a6, t2, t6
	sraiw t3, a7, 1
	sraiw t2, a6, 1
	bge t5, s0, label1412
label337:
	addi t1, t1, 4
	and t6, t3, t2
	andi a6, t6, 1
	bne a6, zero, label334
	addiw t5, t5, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add a7, t3, a6
	add a6, t2, t6
	sraiw t3, a7, 1
	sraiw t2, a6, 1
	blt t5, s0, label337
label2752:
	mv t2, t0
	mv t1, t4
	bne t4, zero, label307
label2753:
	lui t1, 8
	addiw t0, t1, -1
	ble a5, t0, label1359
label305:
	lw t3, 52(sp)
	lui t4, 16
	divw t0, a5, t3
	lw t3, 108(sp)
	addw t1, t0, t4
	mv t0, t2
	subw a5, t1, t3
	beq a5, zero, label2748
label250:
	mv t1, s1
	mv t4, zero
	mv t2, a5
	mv t5, s2
	mv t3, zero
	and a6, a5, s2
	andi t6, a6, 1
	beq t6, zero, label1279
label257:
	lw t5, 0(t1)
	addw t3, t3, t5
	addiw t4, t4, 1
	srliw t6, t2, 31
	add t5, t2, t6
	sraiw t2, t5, 1
	bge t4, s0, label260
label342:
	addi t1, t1, 4
	mv t5, zero
	and a6, t2, zero
	andi t6, a6, 1
	bne t6, zero, label257
	addiw t4, t4, 1
	srliw t6, t2, 31
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t4, s0, label342
label2738:
	bne t3, zero, label1292
label1291:
	mv t2, t0
	mv t1, t0
	bne t0, zero, label307
label304:
	lui t1, 8
	addiw t0, t1, -1
	bgt a5, t0, label305
	j label1359
label1412:
	mv t2, t0
	mv t1, t4
	beq t4, zero, label2753
label307:
	mv t3, s1
	mv t6, zero
	mv t5, t2
	mv t4, t1
	mv t0, zero
	andi a6, t2, 1
	bne a6, zero, label340
	andi a6, t1, 1
	beq a6, zero, label2750
label314:
	lw a6, 0(t3)
	addw t0, t0, a6
	addiw t6, t6, 1
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	bge t6, s0, label1382
label317:
	addi t3, t3, 4
	andi a6, t5, 1
	beq a6, zero, label2751
label340:
	andi a6, t4, 1
	beq a6, zero, label314
	addiw t6, t6, 1
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	blt t6, s0, label317
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label339
label2959:
	mv t1, t6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a6, t2, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	bge t5, s0, label327
label338:
	addi t3, t3, 4
	mv t6, t1
	and a7, t4, t2
	andi a6, a7, 1
	beq a6, zero, label2959
label339:
	lw a6, 0(t3)
	addiw t5, t5, 1
	addw t1, t6, a6
	srliw a6, t2, 31
	srliw t6, t4, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label338
	j label327
label2751:
	andi a6, t4, 1
	bne a6, zero, label314
label2750:
	addiw t6, t6, 1
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	blt t6, s0, label317
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label339
	j label2959
label260:
	beq t3, zero, label1291
label1292:
	mv t2, a3
	mv t1, t0
	bne t0, zero, label264
	mv t2, t0
	j label304
label2744:
	addiw t5, t5, 1
	srliw t6, t3, 31
	srliw a7, t2, 31
	add a6, t3, t6
	add t6, t2, a7
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	bge t5, s0, label2742
label295:
	addi t1, t1, 4
	and a6, t3, t2
	andi t6, a6, 1
	beq t6, zero, label2744
label292:
	lw t6, 0(t1)
	addw t4, t4, t6
	addiw t5, t5, 1
	srliw t6, t3, 31
	srliw a7, t2, 31
	add a6, t3, t6
	add t6, t2, a7
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label295
	mv t2, a3
	mv t1, t4
	beq t4, zero, label2743
label264:
	mv t3, s1
	mv t6, zero
	mv a3, zero
	mv t5, t2
	mv t4, t1
	andi a6, t2, 1
	beq a6, zero, label1299
label298:
	andi a6, t4, 1
	beq a6, zero, label271
	addiw t6, t6, 1
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	blt t6, s0, label296
	j label2949
label1299:
	andi a6, t4, 1
	beq a6, zero, label2739
label271:
	lw a6, 0(t3)
	addw a3, a3, a6
	addiw t6, t6, 1
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	bge t6, s0, label2949
label296:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label298
	andi a6, t4, 1
	bne a6, zero, label271
label2739:
	addiw t6, t6, 1
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	blt t6, s0, label296
label2949:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	mv t2, t1
	and a7, t4, t1
	andi a6, a7, 1
	bne a6, zero, label281
	mv t1, zero
	li t5, 1
	srliw a6, t4, 31
	srliw a7, t2, 31
	add t6, t4, a6
	add a6, t2, a7
	sraiw t4, t6, 1
	sraiw t2, a6, 1
	blt t5, s0, label284
	j label2740
label2741:
	mv t1, t6
	addiw t5, t5, 1
	srliw a6, t4, 31
	srliw a7, t2, 31
	add t6, t4, a6
	add a6, t2, a7
	sraiw t4, t6, 1
	sraiw t2, a6, 1
	bge t5, s0, label2740
label284:
	addi t3, t3, 4
	mv t6, t1
	and a7, t4, t2
	andi a6, a7, 1
	beq a6, zero, label2741
label281:
	lw a6, 0(t3)
	addw t1, t6, a6
	addiw t5, t5, 1
	srliw a6, t4, 31
	srliw a7, t2, 31
	add t6, t4, a6
	add a6, t2, a7
	sraiw t4, t6, 1
	sraiw t2, a6, 1
	blt t5, s0, label284
	lw t4, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t2, t6, -1
	mulw t3, t1, t4
	and a6, t3, t2
	mv t4, zero
	mv t1, s1
	andi t6, a6, 1
	bne t6, zero, label292
	j label1331
label2740:
	lw t4, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t2, t6, -1
	mulw t3, t1, t4
	mv t4, zero
	mv t1, s1
	and a6, t3, t2
	andi t6, a6, 1
	bne t6, zero, label292
label1331:
	addiw t5, t5, 1
	srliw t6, t3, 31
	srliw a7, t2, 31
	add a6, t3, t6
	add t6, t2, a7
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label295
label2742:
	mv t2, a3
	mv t1, t4
	bne t4, zero, label264
label2743:
	mv a3, t2
	mv t1, t0
	mv t2, t0
	bne t0, zero, label307
	j label304
label1359:
	lw t1, 52(sp)
	mv t0, t2
	divw a5, a5, t1
	bne a5, zero, label250
label1274:
	mv t0, a4
	mv a5, zero
	bne a4, zero, label352
	j label349
label370:
	lw t1, 52(sp)
	mv t0, t2
	divw a4, a4, t1
	beq a4, zero, label2766
label352:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, a4
	mv t5, s2
	and a6, a4, s2
	andi t6, a6, 1
	bne t6, zero, label359
	li t3, 1
	srliw t5, a4, 31
	add t6, a4, t5
	sraiw t2, t6, 1
	blt t3, s0, label362
	j label2762
label2764:
	addiw t3, t3, 1
	srliw t5, t2, 31
	add t6, t2, t5
	sraiw t2, t6, 1
	bge t3, s0, label2762
label362:
	addi t1, t1, 4
	mv t5, zero
	and a6, t2, zero
	andi t6, a6, 1
	beq t6, zero, label2764
label359:
	lw t5, 0(t1)
	addw t4, t4, t5
	addiw t3, t3, 1
	srliw t5, t2, 31
	add t6, t2, t5
	sraiw t2, t6, 1
	blt t3, s0, label362
	beq t4, zero, label2967
label1463:
	mv t2, a5
	mv t1, t0
	bne t0, zero, label410
	mv t2, t0
	j label366
label2782:
	mv t2, a5
	mv t1, t3
	beq t3, zero, label2780
label410:
	mv t3, s1
	mv t6, zero
	mv a5, zero
	mv t5, t2
	mv t4, t1
	andi a6, t2, 1
	bne a6, zero, label444
	andi a6, t1, 1
	beq a6, zero, label418
label443:
	lw a6, 0(t3)
	addiw t6, t6, 1
	srliw a7, t5, 31
	srliw s4, t4, 31
	addw a5, a5, a6
	add a6, t5, a7
	add a7, t4, s4
	sraiw t5, a6, 1
	sraiw t4, a7, 1
	bge t6, s0, label2784
label420:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label444
	andi a6, t4, 1
	bne a6, zero, label443
label418:
	addiw t6, t6, 1
	srliw a7, t5, 31
	srliw s4, t4, 31
	add a6, t5, a7
	add a7, t4, s4
	sraiw t5, a6, 1
	sraiw t4, a7, 1
	blt t6, s0, label420
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label428
	j label1561
label2783:
	mv t1, t6
	addiw t5, t5, 1
	srliw a7, t4, 31
	srliw a6, t2, 31
	add t6, t4, a7
	add a7, t2, a6
	sraiw t4, t6, 1
	sraiw t2, a7, 1
	bge t5, s0, label2779
label442:
	addi t3, t3, 4
	mv t6, t1
	and a7, t4, t2
	andi a6, a7, 1
	beq a6, zero, label2783
label428:
	lw a6, 0(t3)
	addw t1, t6, a6
	addiw t5, t5, 1
	srliw a7, t4, 31
	srliw a6, t2, 31
	add t6, t4, a7
	add a7, t2, a6
	sraiw t4, t6, 1
	sraiw t2, a7, 1
	blt t5, s0, label442
label2779:
	lw t2, 52(sp)
	mv t5, zero
	lui t6, 16
	mv t3, zero
	mulw t4, t1, t2
	addiw t2, t6, -1
	mv t1, s1
	and t6, t4, t2
	andi a6, t6, 1
	beq a6, zero, label438
label441:
	lw t6, 0(t1)
	addiw t5, t5, 1
	srliw a7, t2, 31
	addw t3, t3, t6
	srliw t6, t4, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	bge t5, s0, label2782
label440:
	addi t1, t1, 4
	and t6, t4, t2
	andi a6, t6, 1
	bne a6, zero, label441
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t2, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label440
label1585:
	mv t2, a5
	mv t1, t3
	bne t3, zero, label410
	j label2780
label444:
	andi a6, t4, 1
	beq a6, zero, label443
	addiw t6, t6, 1
	srliw a7, t5, 31
	srliw s4, t4, 31
	add a6, t5, a7
	add a7, t4, s4
	sraiw t5, a6, 1
	sraiw t4, a7, 1
	blt t6, s0, label420
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label428
	j label1561
label438:
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t2, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label440
	j label1585
label2784:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label428
label1561:
	mv t1, t6
	addiw t5, t5, 1
	srliw a7, t4, 31
	srliw a6, t2, 31
	add t6, t4, a7
	add a7, t2, a6
	sraiw t4, t6, 1
	sraiw t2, a7, 1
	blt t5, s0, label442
	j label2779
label2967:
	mv t2, t0
	mv t1, t0
label366:
	bne t1, zero, label372
label369:
	lui t1, 8
	addiw t0, t1, -1
	bgt a4, t0, label371
	j label370
label2770:
	lw t2, 52(sp)
	mv t5, zero
	lui t6, 16
	mv t4, zero
	mulw t3, t1, t2
	addiw t2, t6, -1
	mv t1, s1
	and a6, t3, t2
	andi t6, a6, 1
	beq t6, zero, label1514
label399:
	lw t6, 0(t1)
	addw t4, t4, t6
	addiw t5, t5, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add a7, t3, t6
	add t6, t2, a6
	sraiw t3, a7, 1
	sraiw t2, t6, 1
	bge t5, s0, label1523
label402:
	addi t1, t1, 4
	and a6, t3, t2
	andi t6, a6, 1
	bne t6, zero, label399
	addiw t5, t5, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add a7, t3, t6
	add t6, t2, a6
	sraiw t3, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label402
label2771:
	mv t2, t0
	mv t1, t4
	bne t4, zero, label372
label2772:
	lui t1, 8
	addiw t0, t1, -1
	ble a4, t0, label370
label371:
	lw t3, 52(sp)
	lui t4, 16
	divw t0, a4, t3
	lw t3, 108(sp)
	addw t1, t0, t4
	mv t0, t2
	subw a4, t1, t3
	bne a4, zero, label352
	lui t0, 8
	addiw a4, t0, -1
	bgt a2, a4, label351
	j label350
label1523:
	mv t2, t0
	mv t1, t4
	beq t4, zero, label2772
label372:
	mv t3, s1
	mv t6, zero
	mv t0, zero
	mv t5, t2
	mv t4, t1
	andi a6, t2, 1
	beq a6, zero, label1484
label405:
	andi a6, t4, 1
	beq a6, zero, label406
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw s4, t4, 31
	add a7, t5, a6
	add a6, t4, s4
	sraiw t5, a7, 1
	sraiw t4, a6, 1
	blt t6, s0, label381
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a6, t2, t1
	mv t2, t1
	andi a7, a6, 1
	bne a7, zero, label389
	j label1497
label2777:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a6, t2, t1
	mv t2, t1
	andi a7, a6, 1
	beq a7, zero, label1497
label389:
	lw a6, 0(t3)
	addw t1, t6, a6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a6, t2, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	bge t5, s0, label2770
label403:
	addi t3, t3, 4
	mv t6, t1
	and a6, t4, t2
	andi a7, a6, 1
	bne a7, zero, label389
	addiw t5, t5, 1
	srliw a6, t2, 31
	srliw t6, t4, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label403
	j label2770
label1484:
	andi a6, t4, 1
	beq a6, zero, label2768
label406:
	lw a6, 0(t3)
	addiw t6, t6, 1
	srliw s4, t4, 31
	addw t0, t0, a6
	srliw a6, t5, 31
	add a7, t5, a6
	add a6, t4, s4
	sraiw t5, a7, 1
	sraiw t4, a6, 1
	bge t6, s0, label2777
label381:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label405
	andi a6, t4, 1
	bne a6, zero, label406
label2768:
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw s4, t4, 31
	add a7, t5, a6
	add a6, t4, s4
	sraiw t5, a7, 1
	sraiw t4, a6, 1
	blt t6, s0, label381
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a6, t2, t1
	mv t2, t1
	andi a7, a6, 1
	bne a7, zero, label389
label1497:
	mv t1, t6
	addiw t5, t5, 1
	srliw a6, t2, 31
	srliw t6, t4, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label403
	j label2770
label2762:
	bne t4, zero, label1463
	j label2967
label2780:
	mv a5, t2
	mv t1, t0
	mv t2, t0
	bne t0, zero, label372
	j label369
label245:
	bne t2, zero, label1271
label1270:
	mv t0, a4
	mv a5, zero
	bne a4, zero, label352
label349:
	lui t0, 8
	addiw a4, t0, -1
	bgt a2, a4, label351
	j label350
label2766:
	lui t0, 8
	addiw a4, t0, -1
	bgt a2, a4, label351
label350:
	lw t0, 52(sp)
	mv a4, a5
	divw a2, a2, t0
	bgt a2, zero, label235
label446:
	lw a2, 0(a0)
	bne a3, a2, label1603
	addiw a1, a1, 1
	addi a0, a0, 4
	j label226
label1603:
	mv a0, s2
label229:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s0, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 112
	ret
label2748:
	mv t0, a4
	mv a5, zero
	bne a4, zero, label352
	j label349
label1135:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label177
	j label2717
label1382:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label339
	j label2959
label1403:
	addiw t5, t5, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add a7, t3, a6
	add a6, t2, t6
	sraiw t3, a7, 1
	sraiw t2, a6, 1
	blt t5, s0, label337
	j label2752
label1279:
	addiw t4, t4, 1
	srliw t6, t2, 31
	add t5, t2, t6
	sraiw t2, t5, 1
	blt t4, s0, label342
	j label2738
label1249:
	mv a0, zero
	j label229
label1152:
	addiw t3, t3, 1
	srliw t6, t1, 31
	srliw t5, t0, 31
	add t4, t1, t6
	add t6, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label176
	j label2718
label1835:
	andi t5, t2, 1
	bne t5, zero, label621
	j label2818
label1514:
	addiw t5, t5, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add a7, t3, t6
	add t6, t2, a6
	sraiw t3, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label402
	j label2771
label1078:
	addiw t1, t1, 1
	srliw t3, t0, 31
	add t4, t0, t3
	sraiw t0, t4, 1
	blt t1, s0, label217
	j label2710
