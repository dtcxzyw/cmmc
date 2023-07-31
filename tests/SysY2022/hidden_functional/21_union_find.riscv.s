.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
parent:
	.zero	4020
.text
find:
.p2align 2
	addi sp, sp, -48
pcrel75:
	auipc a1, %pcrel_hi(parent)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	addi a0, a1, %pcrel_lo(pcrel75)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 32(sp)
	sd s4, 40(sp)
	lw s2, 0(a1)
	beq s0, s2, label22
	sh2add a1, s2, a0
	lw s3, 0(a1)
	bne s2, s3, label5
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label12
label22:
	mv a0, s0
label12:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label5:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	beq s3, s4, label38
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
label38:
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
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
.p2align 2
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s2, 16(sp)
	sd s0, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
pcrel225:
	auipc a0, %pcrel_hi(parent)
	addi s0, a0, %pcrel_lo(pcrel225)
	bgt s1, zero, label87
label77:
	bgt s2, zero, label105
	j label104
label87:
	li a1, 4
	ble s1, a1, label134
	addiw a1, s1, -4
	addiw a2, s1, -20
	li a3, 16
	ble a1, a3, label140
	mv a0, zero
label89:
	sh2add a3, a0, s0
	addiw a5, a0, 1
	addiw a4, a0, 2
	addiw t0, a0, 3
	sw a0, 0(a3)
	sw a5, 4(a3)
	addiw a5, a0, 4
	sw a4, 8(a3)
	addiw a4, a0, 5
	sw t0, 12(a3)
	addiw t0, a0, 6
	sw a5, 16(a3)
	addiw a5, a0, 7
	sw a4, 20(a3)
	addiw a4, a0, 8
	sw t0, 24(a3)
	addiw t0, a0, 9
	sw a5, 28(a3)
	addiw a5, a0, 10
	sw a4, 32(a3)
	addiw a4, a0, 11
	sw t0, 36(a3)
	sw a5, 40(a3)
	addiw a5, a0, 12
	sw a4, 44(a3)
	addiw a4, a0, 13
	sw a5, 48(a3)
	addiw a5, a0, 14
	sw a4, 52(a3)
	addiw a4, a0, 15
	sw a5, 56(a3)
	addiw a0, a0, 16
	sw a4, 60(a3)
	bgt a2, a0, label89
label91:
	sh2add a2, a0, s0
	addiw a3, a0, 1
	addiw a4, a0, 2
	sw a0, 0(a2)
	sw a3, 4(a2)
	addiw a3, a0, 3
	sw a4, 8(a2)
	addiw a0, a0, 4
	sw a3, 12(a2)
	bgt a1, a0, label91
label93:
	sh2add a1, a0, s0
	sw a0, 0(a1)
	addiw a0, a0, 1
	bgt s1, a0, label93
	j label77
label104:
	mv a0, zero
	mv a1, zero
.p2align 2
label82:
	ble s1, a1, label86
	sh2add a3, a1, s0
	lw a4, 0(a3)
	xor a2, a1, a4
	addiw a1, a1, 1
	sltiu a3, a2, 1
	addw a0, a0, a3
	j label82
label86:
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label105:
	mv s3, zero
.p2align 2
label78:
	jal getint
	mv s4, a0
	jal getint
	mv a3, a0
	mv a0, s4
	jal find
	mv a2, a0
	mv a0, a3
	jal find
	bne a2, a0, label80
	addiw s3, s3, 1
	bgt s2, s3, label78
	j label104
.p2align 2
label80:
	sh2add a0, a0, s0
	sw a2, 0(a0)
	addiw s3, s3, 1
	bgt s2, s3, label78
	j label104
label134:
	mv a0, zero
	j label93
label140:
	mv a0, zero
	j label91
