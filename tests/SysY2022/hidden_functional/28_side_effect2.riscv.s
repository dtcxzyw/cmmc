.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -88
	mv a2, zero
	sd ra, 0(sp)
	addi a0, sp, 8
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	mv a1, zero
	li a3, 20
	bge zero, a3, label198
.p2align 2
label114:
	addiw a3, a2, 1
	ble a1, zero, label596
	li a4, 1
	sw a4, 8(sp)
	bne a4, zero, label119
	j label924
.p2align 2
label599:
	mv a2, a3
.p2align 2
label117:
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label114
	j label198
label130:
	addiw a3, a2, 6
	li a4, 6
	blt a1, a4, label599
	li a5, 1
	sw a5, 28(sp)
	lw a4, 24(sp)
	bne a4, zero, label132
	j label599
.p2align 2
label596:
	mv a4, zero
	j label599
.p2align 2
label119:
	addiw a3, a2, 2
	li a4, 2
	blt a1, a4, label606
	li a5, 1
	sw a5, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label122
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label114
	j label198
.p2align 2
label606:
	mv a4, zero
	j label609
.p2align 2
label122:
	addiw a3, a2, 3
	li a4, 3
	bge a1, a4, label614
	mv a4, zero
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label114
	j label198
.p2align 2
label614:
	li a5, 1
	sw a5, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label926
	addiw a3, a2, 4
	li a4, 4
	blt a1, a4, label624
	sw a5, 20(sp)
	lw a4, 16(sp)
	bne a4, zero, label128
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label114
	j label198
.p2align 2
label624:
	mv a4, zero
	j label627
.p2align 2
label128:
	addiw a3, a2, 5
	li a4, 5
	bge a1, a4, label632
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label114
	j label198
label632:
	li a5, 1
	sw a5, 24(sp)
	lw a4, 20(sp)
	bne a4, zero, label130
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label114
label198:
	mv a1, zero
label5:
	li a3, 20
	blt a1, a3, label52
	j label202
label951:
	sw zero, 20(sp)
	lw a4, 16(sp)
	bne a4, zero, label409
label946:
	addiw a3, a2, 10
	li a4, 5
	blt a1, a4, label414
label893:
	sw zero, 24(sp)
	lw a4, 20(sp)
	bne a4, zero, label421
label919:
	addiw a3, a2, 12
	li a4, 6
	bge a1, a4, label69
label426:
	mv a2, a3
	addiw a1, a1, 1
	j label5
label69:
	sw zero, 28(sp)
	lw a4, 24(sp)
	bne a4, zero, label426
	addiw a3, a2, 14
	li a4, 7
	blt a1, a4, label426
	sw zero, 32(sp)
	lw a4, 28(sp)
	bne a4, zero, label426
	addiw a3, a2, 16
	li a4, 8
	blt a1, a4, label426
	sw zero, 36(sp)
	lw a4, 32(sp)
	bne a4, zero, label426
	addiw a3, a2, 18
	li a4, 9
	blt a1, a4, label426
	sw zero, 40(sp)
	lw a4, 36(sp)
	bne a4, zero, label426
	addiw a3, a2, 20
	li a4, 10
	blt a1, a4, label426
	sw zero, 44(sp)
	lw a4, 40(sp)
	bne a4, zero, label426
	addiw a3, a2, 22
	li a4, 11
	blt a1, a4, label426
	sw zero, 48(sp)
	lw a4, 44(sp)
	bne a4, zero, label426
	addiw a3, a2, 24
	li a4, 12
	blt a1, a4, label426
	sw zero, 52(sp)
	lw a4, 48(sp)
	bne a4, zero, label426
	addiw a3, a2, 26
	li a4, 13
	blt a1, a4, label510
	sw zero, 56(sp)
	lw a4, 52(sp)
label83:
	bne a4, zero, label426
	addiw a3, a2, 28
	li a4, 14
	blt a1, a4, label519
	sw zero, 60(sp)
	lw a4, 56(sp)
label86:
	bne a4, zero, label426
	addiw a3, a2, 30
	li a4, 15
	blt a1, a4, label528
	sw zero, 64(sp)
	lw a4, 60(sp)
label89:
	bne a4, zero, label426
	addiw a3, a2, 32
	li a4, 16
	bge a1, a4, label536
	li a4, 1
label92:
	bne a4, zero, label426
	addiw a3, a2, 34
	li a4, 17
	bge a1, a4, label545
	li a4, 1
label95:
	bne a4, zero, label426
	addiw a3, a2, 36
	li a4, 18
	bge a1, a4, label554
	li a4, 1
	j label98
label202:
	li a3, 1
label8:
	li a1, 20
	bge a3, a1, label11
	addiw a1, a3, -1
	addiw a2, a2, 1
	ble a3, a1, label11
	j label46
.p2align 2
label52:
	addiw a3, a2, 2
	bgt a1, zero, label371
	li a4, 1
	bne a4, zero, label376
	addiw a3, a2, 4
	li a4, 2
	bge a1, a4, label888
.p2align 2
label381:
	li a4, 1
	beq a4, zero, label384
.p2align 2
label385:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label52
	j label202
.p2align 2
label371:
	sw zero, 8(sp)
	mv a4, zero
	addiw a3, a2, 4
	li a4, 2
	blt a1, a4, label381
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label385
	addiw a3, a2, 6
	li a4, 3
	blt a1, a4, label390
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label397
	addiw a3, a2, 8
	li a4, 4
	bge a1, a4, label951
.p2align 2
label402:
	li a4, 1
	bne a4, zero, label409
	addiw a3, a2, 10
	li a4, 5
	bge a1, a4, label918
label414:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label52
	j label202
.p2align 2
label384:
	addiw a3, a2, 6
	li a4, 3
	blt a1, a4, label390
	sw zero, 16(sp)
	lw a4, 12(sp)
	beq a4, zero, label931
.p2align 2
label397:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label52
	j label202
.p2align 2
label390:
	li a4, 1
	bne a4, zero, label397
	addiw a3, a2, 8
	li a4, 4
	blt a1, a4, label402
	sw zero, 20(sp)
	lw a4, 16(sp)
	bne a4, zero, label409
	addiw a3, a2, 10
	li a4, 5
	blt a1, a4, label414
	j label893
.p2align 2
label888:
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label385
	addiw a3, a2, 6
	li a4, 3
	blt a1, a4, label390
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label397
	addiw a3, a2, 8
	li a4, 4
	blt a1, a4, label402
	sw zero, 20(sp)
	lw a4, 16(sp)
	bne a4, zero, label409
	j label946
label931:
	addiw a3, a2, 8
	li a4, 4
	blt a1, a4, label402
	sw zero, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label946
.p2align 2
label409:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label52
	j label202
label918:
	sw zero, 24(sp)
	lw a4, 20(sp)
	bne a4, zero, label421
	j label919
label11:
	lw a1, 8(sp)
	addiw a0, a2, 3
	bne a1, zero, label13
label14:
	lw a2, 16(sp)
	addiw a4, a0, 3
	addiw a3, a0, 6
	mv a0, a4
	beq a2, zero, label16
	mv a0, a3
label16:
	lw a3, 24(sp)
	addiw a2, a0, 3
	bne a3, zero, label18
	mv a0, a2
label23:
	lw a4, 44(sp)
	addiw a2, a0, 3
	beq a4, zero, label261
	lw a2, 48(sp)
	addiw a0, a0, 6
	beq a2, zero, label25
	j label39
label261:
	mv a0, a2
	j label39
label25:
	addiw a2, a0, 3
	bne a1, zero, label27
	j label265
label39:
	lw a4, 52(sp)
	addiw a2, a0, 3
	bne a4, zero, label41
label318:
	mv a0, a2
	j label25
label18:
	lw a4, 28(sp)
	addiw a2, a0, 6
	beq a4, zero, label239
	lw a4, 32(sp)
	addiw a2, a0, 9
	bne a4, zero, label247
	lw a2, 36(sp)
	addiw a0, a0, 12
	bne a2, zero, label23
	j label19
label265:
	mv a0, a2
label30:
	lw a2, 28(sp)
	addiw a1, a0, 3
	bne a2, zero, label291
	lw a2, 32(sp)
	addiw a1, a0, 6
	beq a2, zero, label297
	lw a2, 36(sp)
	addiw a0, a0, 9
	beq a2, zero, label284
	j label33
label291:
	mv a0, a1
	li a1, 1
label36:
	addw a0, a0, a1
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label41:
	lw a4, 56(sp)
	addiw a2, a0, 6
	beq a4, zero, label318
	lw a4, 60(sp)
	addiw a2, a0, 9
	beq a4, zero, label318
	lw a2, 64(sp)
	addiw a4, a0, 12
	addiw a5, a0, 15
	mv a0, a5
	bne a2, zero, label25
	mv a0, a4
	j label25
label46:
	sh2add a4, a1, a0
	li a5, 1
	sw a5, 0(a4)
	bne a1, zero, label47
	lw a1, 8(sp)
	j label48
label47:
	addiw a5, a3, -2
	sh2add a4, a5, a0
	lw a1, 0(a4)
label48:
	beq a1, zero, label11
	addiw a3, a3, 1
	j label8
label13:
	lw a3, 12(sp)
	addiw a0, a2, 6
	bne a3, zero, label16
	j label14
label27:
	lw a2, 16(sp)
	addiw a1, a0, 6
	bne a2, zero, label28
label272:
	mv a0, a1
	j label30
label239:
	mv a0, a2
label19:
	addiw a0, a0, 3
	j label23
label132:
	addiw a3, a2, 7
	li a4, 7
	blt a1, a4, label599
	li a5, 1
	sw a5, 32(sp)
	lw a4, 28(sp)
	bne a4, zero, label134
	j label599
.p2align 2
label376:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label52
	j label202
.p2align 2
label924:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label114
	j label198
label297:
	mv a0, a1
label33:
	lw a2, 40(sp)
	addiw a0, a0, 3
	sltu a1, zero, a2
	j label36
label28:
	lw a2, 20(sp)
	addiw a1, a0, 9
	beq a2, zero, label29
	j label272
.p2align 2
label609:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label114
	j label198
label29:
	addiw a0, a0, 12
	bne a3, zero, label30
label284:
	li a1, 1
	j label36
label134:
	addiw a3, a2, 8
	li a4, 8
	blt a1, a4, label599
	li a5, 1
	sw a5, 36(sp)
	lw a4, 32(sp)
	beq a4, zero, label599
	addiw a3, a2, 9
	li a4, 9
	blt a1, a4, label599
	li a4, 1
	sw a4, 40(sp)
	lw a5, 36(sp)
	beq a5, zero, label599
	addiw a3, a2, 10
	li a4, 10
	blt a1, a4, label599
	li a5, 1
	sw a5, 44(sp)
	lw a4, 40(sp)
	beq a4, zero, label599
	addiw a3, a2, 11
	li a4, 11
	blt a1, a4, label599
	li a4, 1
	sw a4, 48(sp)
	lw a5, 44(sp)
	bne a5, zero, label142
	j label599
.p2align 2
label926:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label114
	j label198
label627:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label114
	j label198
label421:
	mv a2, a3
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label52
	j label202
label142:
	addiw a3, a2, 12
	li a4, 12
	blt a1, a4, label599
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
	beq a4, zero, label599
	addiw a3, a2, 13
	li a4, 13
	bge a1, a4, label728
	mv a4, zero
label146:
	bne a4, zero, label148
	j label599
label554:
	sw zero, 76(sp)
	lw a4, 72(sp)
label98:
	bne a4, zero, label426
	addiw a4, a2, 38
	li a3, 19
	bge a1, a3, label563
	li a3, 1
	j label101
label563:
	sw zero, 80(sp)
	lw a3, 76(sp)
label101:
	addiw a5, a2, 40
	mv a2, a4
	beq a3, zero, label883
	addiw a1, a1, 1
	li a3, 20
	blt a1, a3, label52
	j label202
label148:
	addiw a3, a2, 14
	li a4, 14
	bge a1, a4, label740
	mv a4, zero
	j label150
label740:
	li a5, 1
	sw a5, 60(sp)
	lw a4, 56(sp)
label150:
	beq a4, zero, label599
	addiw a3, a2, 15
	li a4, 15
	bge a1, a4, label752
	mv a4, zero
label154:
	beq a4, zero, label599
	addiw a3, a2, 16
	li a4, 16
	blt a1, a4, label765
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
	j label158
label765:
	mv a4, zero
label158:
	beq a4, zero, label599
	addiw a3, a2, 17
	li a4, 17
	bge a1, a4, label776
	mv a4, zero
	j label162
label776:
	li a5, 1
	sw a5, 72(sp)
	lw a4, 68(sp)
label162:
	beq a4, zero, label599
	addiw a3, a2, 18
	li a4, 18
	bge a1, a4, label788
	mv a4, zero
label166:
	beq a4, zero, label599
	addiw a4, a2, 19
	li a3, 19
	bge a1, a3, label800
	mv a3, zero
label169:
	addiw a5, a2, 20
	mv a2, a5
	bne a3, zero, label117
	mv a2, a4
	j label117
label752:
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
	j label154
label519:
	li a4, 1
	j label86
label800:
	li a5, 1
	sw a5, 80(sp)
	lw a3, 76(sp)
	j label169
label788:
	li a5, 1
	sw a5, 76(sp)
	lw a4, 72(sp)
	j label166
label728:
	li a5, 1
	sw a5, 56(sp)
	lw a4, 52(sp)
	j label146
label536:
	sw zero, 68(sp)
	lw a4, 64(sp)
	j label92
label510:
	li a4, 1
	j label83
label247:
	mv a0, a2
	addiw a0, a2, 3
	j label23
label545:
	sw zero, 72(sp)
	lw a4, 68(sp)
	j label95
label883:
	mv a2, a5
	addiw a1, a1, 1
	j label5
label528:
	li a4, 1
	j label89
