.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
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
label2:
	li a3, 20
	blt a2, a3, label116
	mv a2, zero
	j label5
label116:
	addiw a3, a1, 1
	ble a2, zero, label600
	li a4, 1
	sw a4, 0(sp)
	j label117
label600:
	mv a4, zero
label117:
	bne a4, zero, label119
label603:
	mv a1, a3
label177:
	addiw a2, a2, 1
	j label2
label5:
	li a3, 20
	blt a2, a3, label52
	li a2, 1
	bge a2, a3, label18
label11:
	addiw a3, a2, -1
	addiw a1, a1, 1
	ble a2, a3, label18
	sh2add a4, a3, a0
	li a5, 1
	sw a5, 0(a4)
	bne a3, zero, label13
	lw a3, 0(sp)
	j label14
label18:
	lw a2, 0(sp)
	addiw a0, a1, 3
	bne a2, zero, label51
	mv a1, a0
	lw a3, 8(sp)
	addiw a4, a0, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a3, zero, label20
label883:
	mv a0, a1
	j label20
label51:
	lw a3, 4(sp)
	addiw a1, a1, 6
	bne a3, zero, label371
	j label370
label52:
	addiw a3, a1, 2
	ble a2, zero, label376
	sw zero, 0(sp)
	mv a4, zero
	j label54
label376:
	li a4, 1
label54:
	bne a4, zero, label380
	addiw a3, a1, 4
	li a4, 2
	blt a2, a4, label386
	j label385
label380:
	mv a1, a3
label56:
	addiw a2, a2, 1
	j label5
label385:
	sw zero, 4(sp)
	lw a4, 0(sp)
	j label60
label386:
	li a4, 1
label60:
	bne a4, zero, label380
	addiw a3, a1, 6
	li a4, 3
	blt a2, a4, label397
	sw zero, 8(sp)
	lw a4, 4(sp)
	j label63
label397:
	li a4, 1
label63:
	bne a4, zero, label380
	addiw a3, a1, 8
	li a4, 4
	blt a2, a4, label380
	sw zero, 12(sp)
	lw a4, 8(sp)
	bne a4, zero, label380
	addiw a3, a1, 10
	li a4, 5
	blt a2, a4, label380
	sw zero, 16(sp)
	lw a4, 12(sp)
	bne a4, zero, label380
	addiw a3, a1, 12
	li a4, 6
	blt a2, a4, label380
	sw zero, 20(sp)
	lw a4, 16(sp)
	bne a4, zero, label380
	addiw a3, a1, 14
	li a4, 7
	blt a2, a4, label380
	sw zero, 24(sp)
	lw a4, 20(sp)
	bne a4, zero, label380
	addiw a3, a1, 16
	li a4, 8
	blt a2, a4, label380
	sw zero, 28(sp)
	lw a4, 24(sp)
	bne a4, zero, label380
	addiw a3, a1, 18
	li a4, 9
	blt a2, a4, label380
	sw zero, 32(sp)
	lw a4, 28(sp)
	bne a4, zero, label380
	addiw a3, a1, 20
	li a4, 10
	blt a2, a4, label380
	sw zero, 36(sp)
	lw a4, 32(sp)
	bne a4, zero, label380
	addiw a3, a1, 22
	li a4, 11
	blt a2, a4, label490
	sw zero, 40(sp)
	lw a4, 36(sp)
	j label80
label490:
	li a4, 1
label80:
	bne a4, zero, label380
	addiw a3, a1, 24
	li a4, 12
	blt a2, a4, label499
	sw zero, 44(sp)
	lw a4, 40(sp)
	j label83
label499:
	li a4, 1
label83:
	bne a4, zero, label380
	addiw a3, a1, 26
	li a4, 13
	blt a2, a4, label508
	sw zero, 48(sp)
	lw a4, 44(sp)
	j label87
label508:
	li a4, 1
label87:
	bne a4, zero, label380
	addiw a3, a1, 28
	li a4, 14
	blt a2, a4, label520
	sw zero, 52(sp)
	lw a4, 48(sp)
	j label91
label520:
	li a4, 1
label91:
	bne a4, zero, label380
	addiw a3, a1, 30
	li a4, 15
	blt a2, a4, label532
	sw zero, 56(sp)
	lw a4, 52(sp)
	j label94
label532:
	li a4, 1
label94:
	bne a4, zero, label380
	addiw a3, a1, 32
	li a4, 16
	blt a2, a4, label541
	sw zero, 60(sp)
	lw a4, 56(sp)
	j label97
label541:
	li a4, 1
label97:
	bne a4, zero, label380
	addiw a3, a1, 34
	li a4, 17
	blt a2, a4, label550
	sw zero, 64(sp)
	lw a4, 60(sp)
	j label101
label550:
	li a4, 1
label101:
	bne a4, zero, label380
	addiw a3, a1, 36
	li a4, 18
	blt a2, a4, label562
	sw zero, 68(sp)
	lw a4, 64(sp)
	j label104
label562:
	li a4, 1
label104:
	bne a4, zero, label380
	addiw a4, a1, 38
	li a3, 19
	blt a2, a3, label571
	sw zero, 72(sp)
	lw a3, 68(sp)
	j label107
label571:
	li a3, 1
label107:
	addiw a5, a1, 40
	mv a1, a4
	bne a3, zero, label56
	mv a1, a5
	j label56
label119:
	addiw a3, a1, 2
	li a4, 2
	blt a2, a4, label609
	li a5, 1
	sw a5, 4(sp)
	lw a4, 0(sp)
	j label120
label609:
	mv a4, zero
label120:
	beq a4, zero, label603
	addiw a3, a1, 3
	li a4, 3
	bge a2, a4, label617
	mv a4, zero
	j label124
label617:
	li a5, 1
	sw a5, 8(sp)
	lw a4, 4(sp)
label124:
	beq a4, zero, label603
	addiw a3, a1, 4
	li a4, 4
	blt a2, a4, label603
	li a5, 1
	sw a5, 12(sp)
	lw a4, 8(sp)
	beq a4, zero, label603
	addiw a3, a1, 5
	li a4, 5
	blt a2, a4, label603
	li a4, 1
	sw a4, 16(sp)
	lw a5, 12(sp)
	beq a5, zero, label603
	addiw a3, a1, 6
	li a4, 6
	blt a2, a4, label603
	li a5, 1
	sw a5, 20(sp)
	lw a4, 16(sp)
	beq a4, zero, label603
	addiw a3, a1, 7
	li a4, 7
	blt a2, a4, label603
	li a4, 1
	sw a4, 24(sp)
	lw a5, 20(sp)
	beq a5, zero, label603
	addiw a3, a1, 8
	li a4, 8
	blt a2, a4, label603
	li a5, 1
	sw a5, 28(sp)
	lw a4, 24(sp)
	beq a4, zero, label603
	addiw a3, a1, 9
	li a4, 9
	blt a2, a4, label603
	li a4, 1
	sw a4, 32(sp)
	lw a5, 28(sp)
	beq a5, zero, label603
	addiw a3, a1, 10
	li a4, 10
	blt a2, a4, label603
	li a5, 1
	sw a5, 36(sp)
	lw a4, 32(sp)
	beq a4, zero, label603
	addiw a3, a1, 11
	li a4, 11
	bge a2, a4, label713
	mv a4, zero
	j label142
label370:
	lw a3, 8(sp)
	addiw a4, a1, 3
	mv a0, a4
	addiw a1, a1, 6
	beq a3, zero, label20
	j label883
label371:
	mv a0, a1
label20:
	lw a3, 16(sp)
	addiw a1, a0, 3
	beq a3, zero, label246
	lw a4, 20(sp)
	addiw a1, a0, 6
	bne a4, zero, label23
	j label266
label246:
	mv a0, a1
	j label27
label23:
	lw a4, 24(sp)
	addiw a1, a0, 9
	beq a4, zero, label24
label266:
	addiw a0, a1, 3
label27:
	lw a4, 36(sp)
	addiw a1, a0, 3
	bne a4, zero, label29
	lw a4, 44(sp)
	addiw a0, a1, 3
	beq a4, zero, label35
	j label288
label29:
	lw a4, 40(sp)
	addiw a1, a0, 6
	beq a4, zero, label282
	lw a4, 44(sp)
	addiw a0, a1, 3
	beq a4, zero, label35
	j label288
label282:
	mv a0, a1
	j label35
label288:
	lw a4, 48(sp)
	addiw a0, a1, 6
	beq a4, zero, label35
	lw a4, 52(sp)
	addiw a0, a1, 9
	beq a4, zero, label35
	lw a4, 56(sp)
	addiw a5, a1, 12
	addiw a1, a1, 15
	mv a0, a1
	beq a4, zero, label881
label35:
	addiw a1, a0, 3
	bne a2, zero, label40
label312:
	mv a0, a1
	j label43
label40:
	lw a2, 8(sp)
	addiw a1, a0, 6
	bne a2, zero, label41
	j label312
label43:
	lw a2, 20(sp)
	addiw a1, a0, 3
	bne a2, zero, label340
	j label339
label42:
	addiw a0, a0, 12
	beq a3, zero, label333
	lw a2, 20(sp)
	addiw a1, a0, 3
	bne a2, zero, label340
label339:
	lw a2, 24(sp)
	addiw a1, a0, 6
	bne a2, zero, label46
	j label346
label340:
	li a0, 1
	j label37
label346:
	mv a0, a1
	j label353
label46:
	lw a1, 28(sp)
	addiw a0, a0, 9
	beq a1, zero, label333
	j label353
label37:
	addw a0, a1, a0
	jal putint
	ld ra, 80(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label353:
	lw a3, 32(sp)
	addiw a1, a0, 3
	sltu a2, zero, a3
	mv a0, a2
	j label37
label41:
	lw a2, 12(sp)
	addiw a1, a0, 9
	beq a2, zero, label42
	j label312
label24:
	lw a4, 28(sp)
	addiw a1, a0, 12
	bne a4, zero, label246
	j label266
label333:
	mv a1, a0
	li a0, 1
	j label37
label13:
	addiw a5, a2, -2
	sh2add a4, a5, a0
	lw a3, 0(a4)
label14:
	bne a3, zero, label16
	j label18
label8:
	li a3, 20
	blt a2, a3, label11
	j label18
label16:
	addiw a2, a2, 1
	j label8
label881:
	mv a0, a5
	j label35
label713:
	li a5, 1
	sw a5, 40(sp)
	lw a4, 36(sp)
label142:
	beq a4, zero, label603
	addiw a3, a1, 12
	li a4, 12
	blt a2, a4, label726
	li a5, 1
	sw a5, 44(sp)
	lw a4, 40(sp)
	j label145
label726:
	mv a4, zero
label145:
	beq a4, zero, label603
	addiw a3, a1, 13
	li a4, 13
	blt a2, a4, label735
	li a5, 1
	sw a5, 48(sp)
	lw a4, 44(sp)
	j label148
label735:
	mv a4, zero
label148:
	beq a4, zero, label603
	addiw a3, a1, 14
	li a4, 14
	blt a2, a4, label744
	li a5, 1
	sw a5, 52(sp)
	lw a4, 48(sp)
	j label152
label744:
	mv a4, zero
label152:
	beq a4, zero, label603
	addiw a3, a1, 15
	li a4, 15
	blt a2, a4, label756
	li a5, 1
	sw a5, 56(sp)
	lw a4, 52(sp)
	j label156
label756:
	mv a4, zero
label156:
	beq a4, zero, label603
	addiw a3, a1, 16
	li a4, 16
	bge a2, a4, label767
	mv a4, zero
	j label159
label767:
	li a5, 1
	sw a5, 60(sp)
	lw a4, 56(sp)
label159:
	beq a4, zero, label603
	addiw a3, a1, 17
	li a4, 17
	bge a2, a4, label776
	mv a4, zero
	j label162
label776:
	li a5, 1
	sw a5, 64(sp)
	lw a4, 60(sp)
label162:
	beq a4, zero, label603
	addiw a3, a1, 18
	li a4, 18
	bge a2, a4, label785
	mv a4, zero
	j label165
label785:
	li a5, 1
	sw a5, 68(sp)
	lw a4, 64(sp)
label165:
	beq a4, zero, label603
	addiw a4, a1, 19
	li a3, 19
	bge a2, a3, label794
	mv a3, zero
	j label169
label794:
	li a5, 1
	sw a5, 72(sp)
	lw a3, 68(sp)
label169:
	addiw a5, a1, 20
	mv a1, a5
	bne a3, zero, label177
	mv a1, a4
	j label177
