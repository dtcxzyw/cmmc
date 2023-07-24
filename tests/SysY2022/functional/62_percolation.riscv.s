.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
array:
	.zero	440
.text
findfa:
	addi sp, sp, -48
pcrel68:
	auipc a1, %pcrel_hi(array)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel68)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	beq s0, s2, label22
	sh2add a1, s2, a0
	lw s3, 0(a1)
	beq s2, s3, label29
	j label28
label22:
	mv a0, s0
	j label12
label28:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	beq s3, s4, label38
	j label37
label29:
	mv a0, s2
label3:
	sh2add a1, s0, s1
	sw a0, 0(a1)
	j label12
label37:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	beq s4, a0, label47
	j label11
label38:
	mv a0, s3
label6:
	sh2add a1, s2, s1
	sw a0, 0(a1)
	j label3
label47:
	mv a0, s4
label9:
	sh2add a1, s3, s1
	sw a0, 0(a1)
	j label6
label12:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label11:
	jal findfa
	sh2add a1, s4, s1
	sw a0, 0(a1)
	j label9
.globl main
main:
	addi sp, sp, -48
pcrel337:
	auipc a0, %pcrel_hi(array)
	sd s0, 40(sp)
	addi s0, a0, %pcrel_lo(pcrel337)
	sd s1, 32(sp)
	li s1, 1
	sd s3, 24(sp)
	sd s2, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
label70:
	beq s1, zero, label111
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
label73:
	li a0, 10
	blt s2, a0, label78
	bne s3, zero, label70
	li a0, -1
	jal putint
	li a0, 10
	jal putch
	j label70
label78:
	jal getint
	mv s4, a0
	jal getint
	mv a3, a0
	beq s3, zero, label81
label79:
	addiw s2, s2, 1
	j label73
label81:
	addiw a0, s4, -1
	sh2add a2, a0, a3
	li a0, 1
	sh2add a1, a2, s0
	sw a2, 0(a1)
	beq s4, a0, label82
label84:
	li a0, 4
	beq s4, a0, label85
label87:
	li a0, 4
	blt a3, a0, label108
label88:
	li a0, 1
	bgt a3, a0, label105
label89:
	li a0, 4
	blt s4, a0, label90
label93:
	li a0, 1
	bgt s4, a0, label94
label97:
	lw a0, 0(s0)
	li a1, -1
	bne a0, a1, label98
	mv a0, zero
	j label99
label105:
	addiw a3, a2, -1
	li a4, -1
	sh2add a1, a3, s0
	lw a0, 0(a1)
	bne a0, a4, label106
	j label89
label108:
	addiw a4, a2, 1
	li a1, -1
	sh2add a5, a4, s0
	lw a0, 0(a5)
	bne a0, a1, label109
	j label88
label111:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label82:
	sw zero, 0(s0)
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, zero
	jal findfa
	bne a4, a0, label83
	j label84
label94:
	addiw a3, a2, -4
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	beq a0, a1, label97
	mv a0, a2
	jal findfa
	mv a2, a0
	mv a0, a3
	jal findfa
	beq a2, a0, label97
	sh2add a1, a2, s0
	sw a0, 0(a1)
	j label97
label83:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	j label84
label106:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	bne a4, a0, label107
	j label89
label90:
	addiw a3, a2, 4
	li a4, -1
	sh2add a1, a3, s0
	lw a0, 0(a1)
	beq a0, a4, label93
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	beq a4, a0, label93
	sh2add a1, a4, s0
	sw a0, 0(a1)
	j label93
label85:
	li a5, 17
	sw a5, 68(s0)
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a5
	jal findfa
	beq a4, a0, label87
	sh2add a1, a4, s0
	sw a0, 0(a1)
	j label87
label109:
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, a4
	jal findfa
	beq a5, a0, label88
	sh2add a1, a5, s0
	sw a0, 0(a1)
	j label88
label98:
	lw a2, 68(s0)
	xori a1, a2, -1
	sltu a0, zero, a1
label99:
	bne a0, zero, label101
	mv a0, zero
	j label102
label107:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	j label89
label101:
	mv a0, zero
	jal findfa
	mv a2, a0
	li a0, 17
	jal findfa
	xor a1, a2, a0
	sltiu a0, a1, 1
label102:
	beq a0, zero, label79
	addiw a0, s2, 1
	jal putint
	li a0, 10
	jal putch
	li s3, 1
	j label79
