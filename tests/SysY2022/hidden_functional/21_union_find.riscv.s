.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
parent:
	.zero	4020
.text
find:
	addi sp, sp, -48
pcrel67:
	auipc a1, %pcrel_hi(parent)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel67)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	bne s0, s2, label2
	mv a0, s0
label12:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label2:
	sh2add a0, s2, s1
	lw s3, 0(a0)
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
	jal find
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
	sd s0, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s2, a0
pcrel190:
	auipc a0, %pcrel_hi(parent)
	addi s1, a0, %pcrel_lo(pcrel190)
	ble s0, zero, label74
	mv a0, zero
	li a1, 4
	ble s0, a1, label72
	mv a2, s1
	li a3, 1
	li a4, 2
	sw zero, 0(s1)
	sw a3, 4(s1)
	li a3, 3
	sw a4, 8(s1)
	mv a0, a1
	sw a3, 12(s1)
	addiw a1, a1, 4
	ble s0, a1, label72
	sh2add a2, a0, s1
	addiw a3, a0, 1
	addiw a4, a0, 2
	sw a0, 0(a2)
	sw a3, 4(a2)
	addiw a3, a0, 3
	sw a4, 8(a2)
	mv a0, a1
	sw a3, 12(a2)
	addiw a1, a1, 4
	ble s0, a1, label72
	sh2add a2, a0, s1
	addiw a3, a0, 1
	addiw a4, a0, 2
	sw a0, 0(a2)
	sw a3, 4(a2)
	addiw a3, a0, 3
	sw a4, 8(a2)
	mv a0, a1
	sw a3, 12(a2)
	addiw a1, a1, 4
	ble s0, a1, label72
	sh2add a2, a0, s1
	addiw a3, a0, 1
	addiw a4, a0, 2
	sw a0, 0(a2)
	sw a3, 4(a2)
	addiw a3, a0, 3
	sw a4, 8(a2)
	mv a0, a1
	sw a3, 12(a2)
	addiw a1, a1, 4
	ble s0, a1, label72
	j label182
label156:
	mv s3, zero
	j label75
label74:
	ble s2, zero, label114
	j label156
label114:
	mv a0, zero
	mv a1, zero
	ble s0, zero, label83
	mv a3, s1
	lw a2, 0(s1)
	xor a4, zero, a2
	li a1, 1
	sltiu a3, a4, 1
	sext.w a0, a3
	ble s0, a1, label83
	sh2add a3, a1, s1
	lw a2, 0(a3)
	xor a4, a1, a2
	addiw a1, a1, 1
	sltiu a3, a4, 1
	addw a0, a0, a3
	ble s0, a1, label83
	sh2add a3, a1, s1
	lw a2, 0(a3)
	xor a4, a1, a2
	addiw a1, a1, 1
	sltiu a3, a4, 1
	addw a0, a0, a3
	ble s0, a1, label83
	sh2add a3, a1, s1
	lw a2, 0(a3)
	xor a4, a1, a2
	addiw a1, a1, 1
	sltiu a3, a4, 1
	addw a0, a0, a3
	ble s0, a1, label83
	j label185
label83:
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label185:
	sh2add a3, a1, s1
	lw a2, 0(a3)
	xor a4, a1, a2
	addiw a1, a1, 1
	sltiu a3, a4, 1
	addw a0, a0, a3
	j label79
label129:
	mv a0, zero
	mv a1, zero
label79:
	ble s0, a1, label83
	j label185
label75:
	jal getint
	mv s4, a0
	jal getint
	mv a3, a0
	mv a0, s4
	jal find
	mv a2, a0
	mv a0, a3
	jal find
	beq a2, a0, label78
	sh2add a0, a0, s1
	sw a2, 0(a0)
	addiw s3, s3, 1
	ble s2, s3, label129
	j label75
label78:
	addiw s3, s3, 1
	ble s2, s3, label129
	j label75
label182:
	sh2add a2, a0, s1
	addiw a3, a0, 1
	addiw a4, a0, 2
	sw a0, 0(a2)
	sw a3, 4(a2)
	addiw a3, a0, 3
	sw a4, 8(a2)
	mv a0, a1
	sw a3, 12(a2)
	addiw a1, a1, 4
	ble s0, a1, label72
	j label182
label72:
	sh2add a1, a0, s1
	sw a0, 0(a1)
	addiw a0, a0, 1
	ble s0, a0, label74
	j label72
