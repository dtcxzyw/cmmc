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
	bne s0, s2, label4
	mv a0, s0
	j label2
label65:
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
label2:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label4:
	sh2add a1, s2, s1
	lw s3, 0(a1)
	bne s2, s3, label7
	j label65
label7:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	bne s3, s4, label10
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label2
label10:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label13
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label2
label13:
	jal findfa
	sh2add a1, s4, s1
	sw a0, 0(a1)
	sh2add a1, s3, s1
	sw a0, 0(a1)
	sh2add a1, s2, s1
	sw a0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a1)
	j label2
.globl main
main:
	addi sp, sp, -48
pcrel390:
	auipc a0, %pcrel_hi(array)
	sd s0, 40(sp)
	addi s0, a0, %pcrel_lo(pcrel390)
	sd s1, 32(sp)
	li s1, 1
	sd s3, 24(sp)
	sd s2, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
label70:
	beq s1, zero, label111
label72:
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
	bge zero, a0, label76
	j label78
label76:
	bne s3, zero, label70
	li a0, -1
	jal putint
	li a0, 10
	jal putch
	beq s1, zero, label111
	j label72
label78:
	jal getint
	mv s4, a0
	jal getint
	mv a3, a0
	bne s3, zero, label79
	addiw a0, s4, -1
	sh2add a2, a0, a3
	li a0, 1
	sh2add a1, a2, s0
	sw a2, 0(a1)
	bne s4, a0, label82
	j label109
label224:
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	bge s2, a0, label76
	j label78
label79:
	addiw s2, s2, 1
	li a0, 10
	bge s2, a0, label76
	j label78
label82:
	li a0, 4
	bne s4, a0, label85
label83:
	li a4, 17
	sw a4, 68(s0)
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, a4
	jal findfa
	beq a5, a0, label85
	sh2add a1, a5, s0
	sw a0, 0(a1)
	li a0, 4
	bge a3, a0, label86
	addiw a4, a2, 1
	li a1, -1
	sh2add a5, a4, s0
	lw a0, 0(a5)
	beq a0, a1, label86
	j label107
label85:
	li a0, 4
	bge a3, a0, label86
	addiw a4, a2, 1
	li a1, -1
	sh2add a5, a4, s0
	lw a0, 0(a5)
	beq a0, a1, label86
	j label107
label86:
	li a0, 1
	ble a3, a0, label87
	addiw a3, a2, -1
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	beq a0, a1, label87
	j label104
label87:
	li a0, 4
	bge s4, a0, label91
	addiw a3, a2, 4
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	beq a0, a1, label91
	j label89
label230:
	mv a0, zero
	j label79
label91:
	li a0, 1
	ble s4, a0, label95
	addiw a3, a2, -4
	li a4, -1
	sh2add a1, a3, s0
	lw a0, 0(a1)
	beq a0, a4, label95
label93:
	mv a0, a2
	jal findfa
	mv a2, a0
	mv a0, a3
	jal findfa
	beq a2, a0, label95
	sh2add a1, a2, s0
	sw a0, 0(a1)
	lw a0, 0(s0)
	li a1, -1
	beq a0, a1, label224
	lw a2, 68(s0)
	xori a1, a2, -1
	sltu a0, zero, a1
	beq a0, zero, label230
	j label102
label95:
	lw a0, 0(s0)
	li a1, -1
	beq a0, a1, label224
	lw a2, 68(s0)
	xori a1, a2, -1
	sltu a0, zero, a1
	beq a0, zero, label230
label102:
	mv a0, zero
	jal findfa
	mv a2, a0
	li a0, 17
	jal findfa
	xor a1, a2, a0
	sltiu a0, a1, 1
	beq a0, zero, label79
	j label101
label89:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	beq a4, a0, label91
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 1
	ble s4, a0, label95
	addiw a3, a2, -4
	li a4, -1
	sh2add a1, a3, s0
	lw a0, 0(a1)
	beq a0, a4, label95
	j label93
label109:
	sw zero, 0(s0)
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, zero
	jal findfa
	beq a4, a0, label82
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 4
	bne s4, a0, label85
	j label83
label104:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	beq a4, a0, label87
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 4
	bge s4, a0, label91
	addiw a3, a2, 4
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	beq a0, a1, label91
	j label89
label101:
	addiw a0, s2, 1
	jal putint
	li a0, 10
	jal putch
	li s3, 1
	addiw s2, s2, 1
	li a0, 10
	bge s2, a0, label76
	j label78
label107:
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, a4
	jal findfa
	beq a5, a0, label86
	sh2add a1, a5, s0
	sw a0, 0(a1)
	li a0, 1
	ble a3, a0, label87
	addiw a3, a2, -1
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	beq a0, a1, label87
	j label104
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
