.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
array:
	.zero	440
.text
findfa:
	addi sp, sp, -48
pcrel66:
	auipc a1, %pcrel_hi(array)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel66)
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
	sh2add a0, s2, s1
	lw s3, 0(a0)
	bne s2, s3, label3
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
label12:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label3:
	sh2add a0, s3, s1
	lw s4, 0(a0)
	bne s3, s4, label6
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label12
label6:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label9
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label12
label9:
	jal findfa
	sh2add a1, s4, s1
	sw a0, 0(a1)
	sh2add a1, s3, s1
	sw a0, 0(a1)
	sh2add a1, s2, s1
	sw a0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a1)
	j label12
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
label68:
	beq s1, zero, label109
label70:
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
	bge zero, a0, label107
	j label74
label107:
	bne s3, zero, label68
	li a0, -1
	jal putint
	li a0, 10
	jal putch
	beq s1, zero, label109
	j label70
label74:
	jal getint
	mv s4, a0
	jal getint
	mv a3, a0
	bne s3, zero, label105
	addiw a0, s4, -1
	sh2add a2, a0, a3
	li a0, 1
	sh2add a1, a2, s0
	sw a2, 0(a1)
	bne s4, a0, label78
	j label76
label209:
	mv a0, zero
	addiw s2, s2, 1
	li a0, 10
	bge s2, a0, label107
	j label74
label105:
	addiw s2, s2, 1
	li a0, 10
	bge s2, a0, label107
	j label74
label215:
	mv a0, zero
	j label105
label94:
	addiw a0, s2, 1
	jal putint
	li a0, 10
	jal putch
	li s3, 1
	addiw s2, s2, 1
	li a0, 10
	bge s2, a0, label107
	j label74
label76:
	sw zero, 0(s0)
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, zero
	jal findfa
	beq a4, a0, label78
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 4
	bne s4, a0, label81
	j label79
label78:
	li a0, 4
	bne s4, a0, label81
	j label79
label81:
	li a0, 4
	bge a3, a0, label82
	addiw a4, a2, 1
	li a1, -1
	sh2add a5, a4, s0
	lw a0, 0(a5)
	beq a0, a1, label82
	j label103
label82:
	li a0, 1
	ble a3, a0, label83
	addiw a3, a2, -1
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	beq a0, a1, label83
	j label100
label83:
	li a0, 4
	bge s4, a0, label84
	addiw a3, a2, 4
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	beq a0, a1, label84
	j label97
label84:
	li a0, 1
	ble s4, a0, label88
	addiw a3, a2, -4
	li a4, -1
	sh2add a1, a3, s0
	lw a0, 0(a1)
	beq a0, a4, label88
	j label86
label88:
	lw a0, 0(s0)
	li a1, -1
	beq a0, a1, label209
	lw a1, 68(s0)
	xori a2, a1, -1
	sltu a0, zero, a2
	beq a0, zero, label215
	j label95
label97:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	beq a4, a0, label84
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 1
	ble s4, a0, label88
	addiw a3, a2, -4
	li a4, -1
	sh2add a1, a3, s0
	lw a0, 0(a1)
	beq a0, a4, label88
	j label86
label100:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	beq a4, a0, label83
	sh2add a1, a4, s0
	sw a0, 0(a1)
	li a0, 4
	bge s4, a0, label84
	addiw a3, a2, 4
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	beq a0, a1, label84
	j label97
label95:
	mv a0, zero
	jal findfa
	mv a2, a0
	li a0, 17
	jal findfa
	xor a1, a2, a0
	sltiu a0, a1, 1
	beq a0, zero, label105
	j label94
label103:
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, a4
	jal findfa
	beq a5, a0, label82
	sh2add a1, a5, s0
	sw a0, 0(a1)
	li a0, 1
	ble a3, a0, label83
	addiw a3, a2, -1
	li a1, -1
	sh2add a4, a3, s0
	lw a0, 0(a4)
	beq a0, a1, label83
	j label100
label79:
	li a4, 17
	sw a4, 68(s0)
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, a4
	jal findfa
	beq a5, a0, label81
	sh2add a1, a5, s0
	sw a0, 0(a1)
	li a0, 4
	bge a3, a0, label82
	addiw a4, a2, 1
	li a1, -1
	sh2add a5, a4, s0
	lw a0, 0(a5)
	beq a0, a1, label82
	j label103
label86:
	mv a0, a2
	jal findfa
	mv a2, a0
	mv a0, a3
	jal findfa
	beq a2, a0, label88
	sh2add a1, a2, s0
	sw a0, 0(a1)
	lw a0, 0(s0)
	li a1, -1
	beq a0, a1, label209
	lw a1, 68(s0)
	xori a2, a1, -1
	sltu a0, zero, a2
	beq a0, zero, label215
	j label95
label109:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
