.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -88
	mv a1, zero
	sd ra, 80(sp)
	addi a0, sp, 0
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	mv a2, zero
.p2align 2
label2:
	li a3, 20
	blt a2, a3, label5
	mv a2, zero
	blt zero, a3, label116
	li a2, 1
	blt a2, a3, label109
	j label75
label937:
	mv a1, a3
	addiw a2, a2, 1
	j label2
.p2align 2
label13:
	bne a4, zero, label15
	j label937
.p2align 2
label5:
	addiw a3, a1, 1
	ble a2, zero, label208
	li a4, 1
	sw a4, 0(sp)
	bne a4, zero, label8
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label5
	mv a2, zero
	blt zero, a3, label116
	li a2, 1
	blt a2, a3, label109
	j label75
.p2align 2
label208:
	mv a4, zero
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label5
	mv a2, zero
	blt zero, a3, label116
	li a2, 1
	bge a2, a3, label75
label109:
	addiw a3, a2, -1
	addiw a1, a1, 1
	ble a2, a3, label75
	sh2add a4, a3, a0
	li a5, 1
	sw a5, 0(a4)
	beq a3, zero, label585
	j label584
.p2align 2
label69:
	li a3, 20
	blt a2, a3, label116
	li a2, 1
	blt a2, a3, label109
	j label75
.p2align 2
label116:
	addiw a3, a1, 2
	ble a2, zero, label600
	sw zero, 0(sp)
	mv a4, zero
	addiw a3, a1, 4
	li a4, 2
	blt a2, a4, label609
	sw zero, 4(sp)
	lw a4, 0(sp)
	bne a4, zero, label615
	addiw a3, a1, 6
	li a4, 3
	blt a2, a4, label620
	sw zero, 8(sp)
	lw a4, 4(sp)
	bne a4, zero, label627
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label627
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label627
	addiw a3, a1, 10
	li a4, 5
	blt a2, a4, label627
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label627
	j label1092
.p2align 2
label600:
	li a4, 1
	bne a4, zero, label604
	addiw a3, a1, 4
	li a4, 2
	blt a2, a4, label609
	sw zero, 4(sp)
	lw a4, 0(sp)
	bne a4, zero, label615
	addiw a3, a1, 6
	li a4, 3
	blt a2, a4, label620
	sw zero, 8(sp)
	lw a4, 4(sp)
	bne a4, zero, label627
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label627
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label627
	addiw a3, a1, 10
	li a4, 5
	blt a2, a4, label627
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label627
	j label1062
.p2align 2
label604:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label116
	li a2, 1
	blt a2, a3, label109
	j label75
.p2align 2
label609:
	li a4, 1
	bne a4, zero, label615
	addiw a3, a1, 6
	li a4, 3
	blt a2, a4, label620
	sw zero, 8(sp)
	lw a4, 4(sp)
	bne a4, zero, label627
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label627
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label627
	addiw a3, a1, 10
	li a4, 5
	blt a2, a4, label627
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label627
	addiw a3, a1, 12
	li a4, 6
	blt a2, a4, label627
	sw zero, 20(sp)
	lw a4, 16(sp)
	bne a4, zero, label627
	j label1046
.p2align 2
label1062:
	addiw a3, a1, 12
	li a4, 6
	blt a2, a4, label627
	j label1079
.p2align 2
label1046:
	addiw a3, a1, 14
	li a4, 7
	bge a2, a4, label1064
label627:
	mv a1, a3
	addiw a2, a2, 1
	j label69
.p2align 2
label1092:
	addiw a3, a1, 12
	li a4, 6
	blt a2, a4, label627
.p2align 2
label1079:
	sw zero, 20(sp)
	lw a4, 16(sp)
	bne a4, zero, label627
	j label1095
label620:
	li a4, 1
	j label126
.p2align 2
label1095:
	addiw a3, a1, 14
	li a4, 7
	blt a2, a4, label627
.p2align 2
label1064:
	sw zero, 24(sp)
	lw a4, 20(sp)
	bne a4, zero, label627
	addiw a3, a1, 16
	li a4, 8
	blt a2, a4, label627
	sw zero, 28(sp)
	lw a4, 24(sp)
	bne a4, zero, label627
	addiw a3, a1, 18
	li a4, 9
	blt a2, a4, label627
	sw zero, 32(sp)
	lw a4, 28(sp)
	bne a4, zero, label627
	addiw a3, a1, 20
	li a4, 10
	blt a2, a4, label627
	sw zero, 36(sp)
	lw a4, 32(sp)
	bne a4, zero, label627
	addiw a3, a1, 22
	li a4, 11
	blt a2, a4, label716
	j label1103
.p2align 2
label8:
	addiw a3, a1, 2
	li a4, 2
	blt a2, a4, label217
	li a5, 1
	sw a5, 4(sp)
	lw a4, 0(sp)
	bne a4, zero, label11
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label5
	mv a2, zero
	blt zero, a3, label116
	li a2, 1
	blt a2, a3, label109
	j label75
.p2align 2
label217:
	mv a4, zero
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label5
	mv a2, zero
	blt zero, a3, label116
	li a2, 1
	blt a2, a3, label109
	j label75
.p2align 2
label11:
	addiw a3, a1, 3
	li a4, 3
	blt a2, a4, label226
	li a5, 1
	sw a5, 8(sp)
	lw a4, 4(sp)
	bne a4, zero, label15
	j label937
label226:
	mv a4, zero
	j label13
label15:
	addiw a3, a1, 4
	li a4, 4
	blt a2, a4, label937
	li a4, 1
	sw a4, 12(sp)
	lw a5, 8(sp)
	beq a5, zero, label937
	addiw a3, a1, 5
	li a4, 5
	blt a2, a4, label937
	li a5, 1
	sw a5, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label937
	addiw a3, a1, 6
	li a4, 6
	blt a2, a4, label937
	sw a5, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label937
	addiw a3, a1, 7
	li a4, 7
	blt a2, a4, label937
	li a4, 1
	sw a4, 24(sp)
	lw a5, 20(sp)
	beq a5, zero, label937
	addiw a3, a1, 8
	li a4, 8
	blt a2, a4, label937
	li a5, 1
	sw a5, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label937
	addiw a3, a1, 9
	li a4, 9
	blt a2, a4, label937
	sw a5, 32(sp)
	lw a4, 28(sp)
	beq a4, zero, label937
	addiw a3, a1, 10
	li a4, 10
	blt a2, a4, label937
	sw a5, 36(sp)
	lw a4, 32(sp)
	beq a4, zero, label937
	addiw a3, a1, 11
	li a4, 11
	bge a2, a4, label321
	mv a4, zero
	j label31
.p2align 2
label126:
	bne a4, zero, label627
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label627
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label627
	addiw a3, a1, 10
	li a4, 5
	blt a2, a4, label627
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label627
	addiw a3, a1, 12
	li a4, 6
	blt a2, a4, label627
	sw zero, 20(sp)
	lw a4, 16(sp)
	bne a4, zero, label627
	j label1046
.p2align 2
label615:
	mv a1, a3
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label116
	li a2, 1
	blt a2, a3, label109
	j label75
label716:
	li a4, 1
	j label143
label1103:
	sw zero, 40(sp)
	lw a4, 36(sp)
label143:
	bne a4, zero, label627
	addiw a3, a1, 24
	li a4, 12
	blt a2, a4, label725
	sw zero, 44(sp)
	lw a4, 40(sp)
	j label146
label725:
	li a4, 1
label146:
	bne a4, zero, label627
	addiw a3, a1, 26
	li a4, 13
	blt a2, a4, label734
	sw zero, 48(sp)
	lw a4, 44(sp)
	j label149
label734:
	li a4, 1
label149:
	bne a4, zero, label627
	addiw a3, a1, 28
	li a4, 14
	blt a2, a4, label743
	sw zero, 52(sp)
	lw a4, 48(sp)
	j label152
label743:
	li a4, 1
label152:
	bne a4, zero, label627
	addiw a3, a1, 30
	li a4, 15
	blt a2, a4, label752
	sw zero, 56(sp)
	lw a4, 52(sp)
	j label156
label752:
	li a4, 1
label156:
	bne a4, zero, label627
	addiw a3, a1, 32
	li a4, 16
	blt a2, a4, label764
	sw zero, 60(sp)
	lw a4, 56(sp)
	j label160
label764:
	li a4, 1
label160:
	bne a4, zero, label627
	addiw a3, a1, 34
	li a4, 17
	blt a2, a4, label776
	sw zero, 64(sp)
	lw a4, 60(sp)
	j label163
label776:
	li a4, 1
label163:
	bne a4, zero, label627
	addiw a3, a1, 36
	li a4, 18
	blt a2, a4, label785
	sw zero, 68(sp)
	lw a4, 64(sp)
	j label167
label785:
	li a4, 1
label167:
	bne a4, zero, label627
	addiw a4, a1, 38
	li a3, 19
	blt a2, a3, label797
	sw zero, 72(sp)
	lw a3, 68(sp)
	j label170
label797:
	li a3, 1
label170:
	addiw a5, a1, 40
	mv a1, a4
	bne a3, zero, label178
	mv a1, a5
	addiw a2, a2, 1
	j label69
.p2align 2
label178:
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label116
	li a2, 1
	blt a2, a3, label109
label75:
	lw a2, 0(sp)
	addiw a0, a1, 3
	bne a2, zero, label108
	mv a1, a0
label106:
	lw a3, 8(sp)
	addiw a4, a1, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a3, zero, label77
	mv a0, a1
	j label77
label108:
	lw a3, 4(sp)
	addiw a1, a1, 6
	beq a3, zero, label106
	mv a0, a1
label77:
	lw a3, 16(sp)
	addiw a1, a0, 3
	bne a3, zero, label101
label448:
	mv a0, a1
label79:
	lw a4, 36(sp)
	addiw a1, a0, 3
	bne a4, zero, label95
	j label96
label101:
	lw a4, 20(sp)
	addiw a1, a0, 6
	bne a4, zero, label102
label544:
	addiw a0, a1, 3
	j label79
label103:
	lw a4, 28(sp)
	addiw a1, a0, 12
	bne a4, zero, label448
	j label544
label81:
	addiw a1, a0, 3
	bne a2, zero, label89
label458:
	mv a0, a1
	j label83
label95:
	lw a4, 40(sp)
	addiw a1, a0, 6
	bne a4, zero, label96
	mv a0, a1
	j label81
label96:
	lw a4, 44(sp)
	addiw a0, a1, 3
	beq a4, zero, label81
	lw a4, 48(sp)
	addiw a0, a1, 6
	beq a4, zero, label81
	lw a4, 52(sp)
	addiw a0, a1, 9
	beq a4, zero, label81
	lw a4, 56(sp)
	addiw a5, a1, 12
	addiw a1, a1, 15
	mv a0, a1
	bne a4, zero, label81
	mv a0, a5
	j label81
label83:
	lw a2, 20(sp)
	addiw a1, a0, 3
	beq a2, zero, label85
	li a0, 1
	j label92
label85:
	lw a2, 24(sp)
	addiw a1, a0, 6
	bne a2, zero, label86
	mv a0, a1
	lw a3, 32(sp)
	addiw a1, a1, 3
	sltu a2, zero, a3
	mv a0, a2
	j label92
label91:
	addiw a0, a0, 12
	beq a3, zero, label480
	j label83
label479:
	lw a3, 32(sp)
	addiw a1, a0, 3
	sltu a2, zero, a3
	mv a0, a2
label92:
	addw a0, a1, a0
	jal putint
	ld ra, 80(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label480:
	mv a1, a0
	li a0, 1
	j label92
label89:
	lw a2, 8(sp)
	addiw a1, a0, 6
	beq a2, zero, label458
	lw a2, 12(sp)
	addiw a1, a0, 9
	beq a2, zero, label91
	j label458
label102:
	lw a4, 24(sp)
	addiw a1, a0, 9
	beq a4, zero, label103
	j label544
label86:
	lw a1, 28(sp)
	addiw a0, a0, 9
	beq a1, zero, label480
	j label479
label585:
	lw a4, 0(sp)
label112:
	bne a4, zero, label114
	j label75
label72:
	li a3, 20
	blt a2, a3, label109
	j label75
label114:
	addiw a2, a2, 1
	j label72
label584:
	addiw a5, a2, -2
	sh2add a3, a5, a0
	lw a4, 0(a3)
	j label112
label321:
	li a5, 1
	sw a5, 40(sp)
	lw a4, 36(sp)
label31:
	beq a4, zero, label937
	addiw a3, a1, 12
	li a4, 12
	blt a2, a4, label334
	li a5, 1
	sw a5, 44(sp)
	lw a4, 40(sp)
	j label35
label334:
	mv a4, zero
label35:
	beq a4, zero, label937
	addiw a3, a1, 13
	li a4, 13
	blt a2, a4, label346
	li a5, 1
	sw a5, 48(sp)
	lw a4, 44(sp)
	j label38
label346:
	mv a4, zero
label38:
	beq a4, zero, label937
	addiw a3, a1, 14
	li a4, 14
	blt a2, a4, label355
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
	j label41
label355:
	mv a4, zero
label41:
	beq a4, zero, label937
	addiw a3, a1, 15
	li a4, 15
	bge a2, a4, label363
	mv a4, zero
	j label44
label363:
	li a5, 1
	sw a5, 56(sp)
	lw a4, 52(sp)
label44:
	beq a4, zero, label937
	addiw a3, a1, 16
	li a4, 16
	blt a2, a4, label373
	li a5, 1
	sw a5, 60(sp)
	lw a4, 56(sp)
	j label47
label373:
	mv a4, zero
label47:
	beq a4, zero, label937
	addiw a3, a1, 17
	li a4, 17
	bge a2, a4, label381
	mv a4, zero
	j label50
label381:
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
label50:
	beq a4, zero, label937
	addiw a3, a1, 18
	li a4, 18
	bge a2, a4, label390
	mv a4, zero
	j label54
label390:
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
label54:
	beq a4, zero, label937
	addiw a4, a1, 19
	li a3, 19
	blt a2, a3, label403
	li a5, 1
	sw a5, 72(sp)
	lw a3, 68(sp)
	j label58
label403:
	mv a3, zero
label58:
	addiw a5, a1, 20
	mv a1, a5
	bne a3, zero, label66
	mv a1, a4
	addiw a2, a2, 1
	j label2
.p2align 2
label66:
	addiw a2, a2, 1
	li a3, 20
	blt a2, a3, label5
	mv a2, zero
	blt zero, a3, label116
	li a2, 1
	blt a2, a3, label109
	j label75
