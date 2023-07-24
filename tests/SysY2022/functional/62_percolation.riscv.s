.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
array:
	.zero	440
.text
findfa:
.p2align 2
	addi sp, sp, -48
pcrel65:
	auipc a1, %pcrel_hi(array)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel65)
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
pcrel497:
	auipc a0, %pcrel_hi(array)
	sd s0, 40(sp)
	addi s0, a0, %pcrel_lo(pcrel497)
	sd s1, 32(sp)
	li s1, 1
	sd s3, 24(sp)
	sd s2, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	beq s1, zero, label108
.p2align 2
label69:
	addiw s1, s1, -1
	li a0, -1
	mv s3, zero
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
	mv s2, zero
	li a0, 10
	bge zero, a0, label74
.p2align 2
label75:
	jal getint
	mv s4, a0
	jal getint
	mv a3, a0
	beq s3, zero, label78
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	bne s1, zero, label69
	j label108
.p2align 2
label78:
	addiw a0, s4, -1
	sh2add a2, a0, a3
	li a0, 1
	sh2add a1, a2, s0
	sw a2, 0(a1)
	beq s4, a0, label79
	li a0, 4
	beq s4, a0, label82
	blt a3, a0, label105
	li a0, 1
	bgt a3, a0, label102
	li a0, 4
	blt s4, a0, label87
	li a0, 1
	bgt s4, a0, label91
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label74:
	li a0, -1
	jal putint
	li a0, 10
	jal putch
	bne s1, zero, label69
	j label108
.p2align 2
label98:
	mv a0, zero
	jal findfa
	mv a2, a0
	li a0, 17
	jal findfa
	xor a1, a2, a0
	sltiu a0, a1, 1
	bne a0, zero, label101
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label101:
	addiw a0, s2, 1
	jal putint
	li a0, 10
	jal putch
	li s3, 1
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label79:
	sw zero, 0(s0)
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, zero
	jal findfa
	bne a4, a0, label80
	li a0, 4
	beq s4, a0, label82
	blt a3, a0, label105
	li a0, 1
	bgt a3, a0, label102
	li a0, 4
	blt s4, a0, label87
	li a0, 1
	bgt s4, a0, label91
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label102:
	addiw a3, a2, -1
	li a4, -1
	sh2add a1, a3, s0
	lw a0, 0(a1)
	bne a0, a4, label103
	li a0, 4
	blt s4, a0, label87
	li a0, 1
	bgt s4, a0, label91
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label91:
	addiw a3, a2, -4
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	bne a0, a1, label92
	lw a0, 0(s0)
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label83:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 4
	blt a3, a0, label105
	li a0, 1
	bgt a3, a0, label102
	li a0, 4
	blt s4, a0, label87
	li a0, 1
	bgt s4, a0, label91
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label105:
	addiw a4, a2, 1
	li a1, -1
	sh2add a5, a4, s0
	lw a0, 0(a5)
	bne a0, a1, label106
	li a0, 1
	bgt a3, a0, label102
	li a0, 4
	blt s4, a0, label87
	li a0, 1
	bgt s4, a0, label91
	lw a0, 0(s0)
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label106:
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, a4
	jal findfa
	bne a5, a0, label107
	li a0, 1
	bgt a3, a0, label102
	li a0, 4
	blt s4, a0, label87
	li a0, 1
	bgt s4, a0, label91
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label80:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 4
	beq s4, a0, label82
	blt a3, a0, label105
	li a0, 1
	bgt a3, a0, label102
	li a0, 4
	blt s4, a0, label87
	li a0, 1
	bgt s4, a0, label91
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label82:
	li a5, 17
	sw a5, 68(s0)
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a5
	jal findfa
	bne a4, a0, label83
	li a0, 4
	blt a3, a0, label105
	li a0, 1
	bgt a3, a0, label102
	li a0, 4
	blt s4, a0, label87
	li a0, 1
	bgt s4, a0, label91
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label87:
	addiw a3, a2, 4
	li a4, -1
	sh2add a1, a3, s0
	lw a0, 0(a1)
	bne a0, a4, label88
	li a0, 1
	bgt s4, a0, label91
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label103:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	bne a4, a0, label104
	li a0, 4
	blt s4, a0, label87
	li a0, 1
	bgt s4, a0, label91
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
label108:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label104:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 4
	blt s4, a0, label87
	li a0, 1
	bgt s4, a0, label91
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label88:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	bne a4, a0, label89
	li a0, 1
	bgt s4, a0, label91
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label89:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 1
	bgt s4, a0, label91
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label95:
	lw a2, 68(s0)
	xori a1, a2, -1
	sltu a0, zero, a1
	bne a0, zero, label98
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label92:
	mv a0, a2
	jal findfa
	mv a2, a0
	mv a0, a3
	jal findfa
	bne a2, a0, label93
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label93:
	sh2add a1, a2, s0
	sw a0, 0(a1)
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
.p2align 2
label107:
	sh2add a1, a5, s0
	sw a0, 0(a1)
	li a0, 1
	bgt a3, a0, label102
	li a0, 4
	blt s4, a0, label87
	li a0, 1
	bgt s4, a0, label91
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label95
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	blt s2, a0, label75
	beq s3, zero, label74
	bne s1, zero, label69
	j label108
