.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
array:
	.zero	440
.text
findfa:
.p2align 2
	addi sp, sp, -48
pcrel73:
	auipc a1, %pcrel_hi(array)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel73)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	bne s0, s2, label2
	mv a0, s0
	j label12
label2:
	sh2add a1, s2, s1
	lw s3, 0(a1)
	bne s2, s3, label5
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label12
label5:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	bne s3, s4, label8
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label12
label8:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label11
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label12
label11:
	jal findfa
	sh2add a1, s4, s1
	sw a0, 0(a1)
	sh2add a1, s3, s1
	sw a0, 0(a1)
	sh2add a1, s2, s1
	sw a0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a1)
label12:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
.globl main
main:
.p2align 2
	addi sp, sp, -48
pcrel522:
	auipc a0, %pcrel_hi(array)
	sd s0, 40(sp)
	addi s0, a0, %pcrel_lo(pcrel522)
	sd s1, 32(sp)
	li s1, 1
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	beq s1, zero, label114
.p2align 2
label77:
	addiw s1, s1, -1
	li a0, -1
	mv s2, zero
	sw a0, 4(s0)
	sw a0, 8(s0)
	sw a0, 12(s0)
	sw a0, 16(s0)
	sw a0, 20(s0)
	sw a0, 24(s0)
	sw a0, 28(s0)
	sw a0, 32(s0)
	sw a0, 36(s0)
	sw a0, 40(s0)
	sw a0, 44(s0)
	sw a0, 48(s0)
	sw a0, 52(s0)
	sw a0, 56(s0)
	sw a0, 60(s0)
	sw a0, 64(s0)
	sw a0, 68(s0)
	mv s3, zero
	li a0, 10
	bge zero, a0, label113
.p2align 2
label81:
	jal getint
	mv s4, a0
	jal getint
	addiw s3, s3, 1
	mv a3, a0
	beq s2, zero, label82
	li a0, 10
	blt s3, a0, label81
	bne s1, zero, label77
	j label114
.p2align 2
label82:
	addiw a0, s4, -1
	sh2add a2, a0, a3
	li a0, 1
	sh2add a1, a2, s0
	sw a2, 0(a1)
	beq s4, a0, label83
	li a0, 4
	beq s4, a0, label110
	blt a3, a0, label87
	li a0, 1
	bgt a3, a0, label107
	li a0, 4
	blt s4, a0, label104
	li a0, 1
	bgt s4, a0, label101
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label100:
	lw a1, 68(s0)
	xori a2, a1, -1
	sltu a0, zero, a2
	bne a0, zero, label99
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label113:
	li a0, -1
	jal putint
	li a0, 10
	jal putch
	bne s1, zero, label77
	j label114
.p2align 2
label104:
	addiw a3, a2, 4
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	bne a0, a1, label105
	li a0, 1
	bgt s4, a0, label101
	lw a0, 0(s0)
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label83:
	sw zero, 0(s0)
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, zero
	jal findfa
	bne a4, a0, label84
	li a0, 4
	beq s4, a0, label110
	blt a3, a0, label87
	li a0, 1
	bgt a3, a0, label107
	li a0, 4
	blt s4, a0, label104
	li a0, 1
	bgt s4, a0, label101
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label110:
	li a5, 17
	sw a5, 68(s0)
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a5
	jal findfa
	bne a4, a0, label111
	li a0, 4
	blt a3, a0, label87
	li a0, 1
	bgt a3, a0, label107
	li a0, 4
	blt s4, a0, label104
	li a0, 1
	bgt s4, a0, label101
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label89:
	sh2add a1, a5, s0
	sw a0, 0(a1)
	li a0, 1
	bgt a3, a0, label107
	li a0, 4
	blt s4, a0, label104
	li a0, 1
	bgt s4, a0, label101
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label107:
	addiw a3, a2, -1
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	bne a0, a1, label108
	li a0, 4
	blt s4, a0, label104
	li a0, 1
	bgt s4, a0, label101
	lw a0, 0(s0)
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
label114:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label105:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	bne a4, a0, label106
	li a0, 1
	bgt s4, a0, label101
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label106:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 1
	bgt s4, a0, label101
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label87:
	addiw a4, a2, 1
	li a1, -1
	sh2add a5, a4, s0
	lw a0, 0(a5)
	bne a0, a1, label88
	li a0, 1
	bgt a3, a0, label107
	li a0, 4
	blt s4, a0, label104
	li a0, 1
	bgt s4, a0, label101
	lw a0, 0(s0)
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label99:
	mv a0, zero
	jal findfa
	mv a2, a0
	li a0, 17
	jal findfa
	xor a1, a2, a0
	sltiu a0, a1, 1
	bne a0, zero, label98
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label98:
	mv a0, s3
	jal putint
	li a0, 10
	jal putch
	li s2, 1
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label101:
	addiw a3, a2, -4
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	bne a0, a1, label102
	lw a0, 0(s0)
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label88:
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, a4
	jal findfa
	bne a5, a0, label89
	li a0, 1
	bgt a3, a0, label107
	li a0, 4
	blt s4, a0, label104
	li a0, 1
	bgt s4, a0, label101
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label84:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 4
	beq s4, a0, label110
	blt a3, a0, label87
	li a0, 1
	bgt a3, a0, label107
	li a0, 4
	blt s4, a0, label104
	li a0, 1
	bgt s4, a0, label101
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label111:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 4
	blt a3, a0, label87
	li a0, 1
	bgt a3, a0, label107
	li a0, 4
	blt s4, a0, label104
	li a0, 1
	bgt s4, a0, label101
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label102:
	mv a0, a2
	jal findfa
	mv a2, a0
	mv a0, a3
	jal findfa
	bne a2, a0, label103
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label103:
	sh2add a1, a2, s0
	sw a0, 0(a1)
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label108:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	bne a4, a0, label109
	li a0, 4
	blt s4, a0, label104
	li a0, 1
	bgt s4, a0, label101
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
.p2align 2
label109:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 4
	blt s4, a0, label104
	li a0, 1
	bgt s4, a0, label101
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label100
	mv a0, zero
	li a0, 10
	blt s3, a0, label81
	beq s2, zero, label113
	bne s1, zero, label77
	j label114
