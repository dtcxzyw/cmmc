.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
array:
	.zero	440
.text
.p2align 2
findfa:
	addi sp, sp, -48
pcrel75:
	auipc a1, %pcrel_hi(array)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s4, 16(sp)
	addi s4, a1, %pcrel_lo(pcrel75)
	sd s1, 24(sp)
	sh2add a0, a0, s4
	sd s2, 32(sp)
	sd s3, 40(sp)
	lw s1, 0(a0)
	beq s0, s1, label22
	sh2add a1, s1, s4
	lw s2, 0(a1)
	bne s1, s2, label5
	mv a0, s1
	sh2add a1, s0, s4
	sw s1, 0(a1)
	j label12
label22:
	mv a0, s0
label12:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s4, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
label5:
	sh2add a1, s2, s4
	lw s3, 0(a1)
	beq s2, s3, label38
	sh2add a1, s3, s4
	lw a0, 0(a1)
	bne s3, a0, label11
	mv a0, s3
	sh2add a1, s2, s4
	sw s3, 0(a1)
	sh2add a1, s1, s4
	sw s3, 0(a1)
	sh2add a1, s0, s4
	sw s3, 0(a1)
	j label12
label38:
	mv a0, s2
	sh2add a1, s1, s4
	sw s2, 0(a1)
	sh2add a1, s0, s4
	sw s2, 0(a1)
	j label12
label11:
	jal findfa
	sh2add a1, s3, s4
	sw a0, 0(a1)
	sh2add a1, s2, s4
	sw a0, 0(a1)
	sh2add a1, s1, s4
	sw a0, 0(a1)
	sh2add a1, s0, s4
	sw a0, 0(a1)
	j label12
.p2align 2
.globl main
main:
	addi sp, sp, -96
	li a0, -1
	sd ra, 0(sp)
	sd s5, 8(sp)
pcrel485:
	auipc s5, %pcrel_hi(array)
	sd s0, 16(sp)
	addi s0, s5, %pcrel_lo(pcrel485)
	sd s7, 24(sp)
	li s7, 1
	sd s4, 32(sp)
	li s4, 10
	sd s3, 40(sp)
	li s3, 4
	sd s2, 48(sp)
	mv s2, s7
	sd s1, 56(sp)
	li s1, -1
	sd s6, 64(sp)
	slli s6, a0, 32
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	beq s7, zero, label113
.p2align 2
label79:
	addiw s7, s7, -1
	add.uw a0, s1, s6
	mv s9, zero
	mv s8, zero
	sw s1, 4(s0)
	sd a0, 8(s0)
	sd a0, 16(s0)
	sd a0, 24(s0)
	sd a0, 32(s0)
	sd a0, 40(s0)
	sd a0, 48(s0)
	sd a0, 56(s0)
	sd a0, 64(s0)
	j label80
.p2align 2
label384:
	bne s8, zero, label407
.p2align 2
label112:
	mv a0, s1
	jal putint
	mv a0, s4
	jal putch
	bne s7, zero, label79
label113:
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s7, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s1, 56(sp)
	ld s6, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label80:
	jal getint
	mv s10, a0
	jal getint
	addiw s9, s9, 1
	mv a3, a0
	beq s8, zero, label83
	blt s9, s4, label80
	j label384
.p2align 2
label83:
	addiw a0, s10, -1
	sh2add a2, a0, a3
	sh2add a1, a2, s0
	sw a2, 0(a1)
	beq s10, s2, label84
	beq s10, s3, label107
	blt a3, s3, label88
	bgt a3, s2, label104
	blt s10, s3, label101
	bgt s10, s2, label98
pcrel486:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel486)(s5)
	bne a0, s1, label95
	blt s9, s4, label80
	j label390
.p2align 2
label157:
	beq s10, s3, label107
	bge a3, s3, label409
.p2align 2
label88:
	addiw a4, a2, 1
	sh2add a0, a4, s0
	lw a1, 0(a0)
	bne a1, s1, label89
	ble a3, s2, label388
.p2align 2
label104:
	addiw a3, a2, -1
	sh2add a1, a3, s0
	lw a0, 0(a1)
	bne a0, s1, label105
	blt s10, s3, label101
	bgt s10, s2, label98
pcrel487:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel487)(s5)
	bne a0, s1, label95
	blt s9, s4, label80
	j label390
.p2align 2
label388:
	blt s10, s3, label101
	bgt s10, s2, label98
	j label432
.p2align 2
label95:
	lw a0, 68(s0)
	bne a0, s1, label96
	blt s9, s4, label80
	j label391
.p2align 2
label98:
	addiw a3, a2, -4
	sh2add a0, a3, s0
	lw a1, 0(a0)
	bne a1, s1, label99
pcrel488:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel488)(s5)
	bne a0, s1, label95
	blt s9, s4, label80
	beq s8, zero, label112
	j label413
.p2align 2
label101:
	addiw a3, a2, 4
	sh2add a1, a3, s0
	lw a0, 0(a1)
	beq a0, s1, label236
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	beq a4, a0, label242
	sh2add a1, a4, s0
	sw a0, 0(a1)
	bgt s10, s2, label98
	j label399
.p2align 2
label106:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	blt s10, s3, label101
	bgt s10, s2, label98
pcrel489:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel489)(s5)
	bne a0, s1, label95
	blt s9, s4, label80
	j label390
.p2align 2
label107:
	li a4, 17
	sw a4, 68(s0)
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, a4
	jal findfa
	bne a5, a0, label108
	blt a3, s3, label88
	bgt a3, s2, label104
	blt s10, s3, label101
	bgt s10, s2, label98
pcrel490:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel490)(s5)
	bne a0, s1, label95
	blt s9, s4, label80
	j label390
.p2align 2
label84:
	auipc s5, %pcrel_hi(array)
	sw zero, %pcrel_lo(label84)(s5)
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, zero
	jal findfa
	beq a4, a0, label157
	sh2add a1, a4, s0
	sw a0, 0(a1)
	beq s10, s3, label107
	blt a3, s3, label88
	bgt a3, s2, label104
	blt s10, s3, label101
	bgt s10, s2, label98
	lw a0, %pcrel_lo(label84)(s5)
	bne a0, s1, label95
	j label451
.p2align 2
label89:
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, a4
	jal findfa
	beq a5, a0, label181
	sh2add a1, a5, s0
	sw a0, 0(a1)
	bgt a3, s2, label104
	blt s10, s3, label101
	bgt s10, s2, label98
pcrel491:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel491)(s5)
	bne a0, s1, label95
	blt s9, s4, label80
	j label390
.p2align 2
label108:
	sh2add a1, a5, s0
	sw a0, 0(a1)
	blt a3, s3, label88
	bgt a3, s2, label104
	blt s10, s3, label101
	bgt s10, s2, label98
pcrel492:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel492)(s5)
	bne a0, s1, label95
	blt s9, s4, label80
.p2align 2
label390:
	beq s8, zero, label112
.p2align 2
label413:
	bne s7, zero, label79
	j label113
.p2align 2
label236:
	bgt s10, s2, label98
pcrel493:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel493)(s5)
	bne a0, s1, label95
	blt s9, s4, label80
	j label390
.p2align 2
label99:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	bne a4, a0, label100
pcrel494:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel494)(s5)
	bne a0, s1, label95
	blt s9, s4, label80
	beq s8, zero, label112
	j label413
.p2align 2
label96:
	mv a0, zero
	jal findfa
	li a4, 17
	mv a2, a0
	mv a0, a4
	jal findfa
	beq a2, a0, label97
	blt s9, s4, label80
	beq s8, zero, label112
	bne s7, zero, label79
	j label113
.p2align 2
label105:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	bne a4, a0, label106
	blt s10, s3, label101
	bgt s10, s2, label98
pcrel495:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel495)(s5)
	bne a0, s1, label95
	blt s9, s4, label80
	j label390
.p2align 2
label181:
	bgt a3, s2, label104
	blt s10, s3, label101
	bgt s10, s2, label98
pcrel496:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel496)(s5)
	bne a0, s1, label95
	blt s9, s4, label80
	j label390
.p2align 2
label242:
	bgt s10, s2, label98
pcrel497:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel497)(s5)
	bne a0, s1, label95
	blt s9, s4, label80
	j label390
.p2align 2
label100:
	sh2add a1, a4, s0
	sw a0, 0(a1)
pcrel498:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel498)(s5)
	bne a0, s1, label95
	blt s9, s4, label80
	beq s8, zero, label112
	j label413
.p2align 2
label399:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label399)(s5)
	bne a0, s1, label95
	blt s9, s4, label80
	j label390
.p2align 2
label409:
	bgt a3, s2, label104
	blt s10, s3, label101
	bgt s10, s2, label98
pcrel499:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel499)(s5)
	bne a0, s1, label95
label451:
	blt s9, s4, label80
	j label390
.p2align 2
label432:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label432)(s5)
	bne a0, s1, label95
	blt s9, s4, label80
	j label390
.p2align 2
label391:
	beq s8, zero, label112
	bne s7, zero, label79
	j label113
.p2align 2
label97:
	mv a0, s9
	jal putint
	mv a0, s4
	jal putch
	mv s8, s2
	blt s9, s4, label80
	beq s2, zero, label112
	bne s7, zero, label79
	j label113
.p2align 2
label407:
	bne s7, zero, label79
	j label113
