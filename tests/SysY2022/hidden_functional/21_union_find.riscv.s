.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
parent:
	.zero	4020
.text
find:
.p2align 2
	addi sp, sp, -48
pcrel73:
	auipc a1, %pcrel_hi(parent)
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
	jal find
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
	sd s0, 40(sp)
	sd s3, 32(sp)
	sd s2, 24(sp)
	sd s1, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	addiw s3, a0, -4
	mv s0, a0
	jal getint
	mv s2, a0
pcrel172:
	auipc a0, %pcrel_hi(parent)
	addi s1, a0, %pcrel_lo(pcrel172)
	ble s0, zero, label80
	li a0, 4
	bgt s0, a0, label101
	mv a1, zero
	j label78
label101:
	mv a0, zero
label76:
	sh2add a1, a0, s1
	addiw a2, a0, 1
	addiw a3, a0, 2
	sw a0, 0(a1)
	sw a2, 4(a1)
	addiw a2, a0, 3
	sw a3, 8(a1)
	sw a2, 12(a1)
	addiw a1, a0, 4
	ble s3, a1, label78
	mv a0, a1
	j label76
label78:
	sh2add a2, a1, s1
	sw a1, 0(a2)
	addiw a1, a1, 1
	bgt s0, a1, label78
label80:
	bgt s2, zero, label125
	mv a0, zero
	mv a1, zero
	bgt s0, zero, label88
	j label89
.p2align 2
label125:
	mv s3, zero
.p2align 2
label81:
	jal getint
	mv s4, a0
	jal getint
	mv a3, a0
	mv a0, s4
	jal find
	mv a2, a0
	mv a0, a3
	jal find
	bne a2, a0, label83
	addiw s3, s3, 1
	bgt s2, s3, label81
	mv a0, zero
	mv a1, zero
	bgt s0, zero, label88
	j label89
.p2align 2
label83:
	sh2add a0, a0, s1
	sw a2, 0(a0)
	addiw s3, s3, 1
	bgt s2, s3, label81
	mv a0, zero
	mv a1, zero
	bgt s0, zero, label88
	j label89
.p2align 2
label85:
	ble s0, a1, label89
.p2align 2
label88:
	sh2add a2, a1, s1
	lw a4, 0(a2)
	xor a3, a1, a4
	addiw a1, a1, 1
	sltiu a2, a3, 1
	addw a0, a0, a2
	j label85
label89:
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
