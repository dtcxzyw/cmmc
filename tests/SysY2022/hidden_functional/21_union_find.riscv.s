.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
parent:
	.zero	4020
.text
find:
	addi sp, sp, -48
pcrel71:
	auipc a1, %pcrel_hi(parent)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel71)
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
	sh2add a1, s3, a0
	lw s4, 0(a1)
	beq s3, s4, label38
	sh2add a1, s4, a0
	lw a0, 0(a1)
	beq s4, a0, label47
	j label13
label22:
	mv a0, s0
label2:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label29:
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label2
label38:
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label2
label13:
	jal find
	sh2add a1, s4, s1
	sw a0, 0(a1)
	sh2add a1, s3, s1
	sw a0, 0(a1)
	sh2add a1, s2, s1
	sw a0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a1)
	j label2
label47:
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label2
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
pcrel169:
	auipc a0, %pcrel_hi(parent)
	addi s1, a0, %pcrel_lo(pcrel169)
	bgt s0, zero, label94
	bgt s2, zero, label118
	mv a0, zero
	mv a1, zero
	j label87
label94:
	mv a0, zero
label73:
	addiw a1, a0, 4
	bgt s0, a1, label75
	sh2add a1, a0, s1
	sw a0, 0(a1)
	addiw a0, a0, 1
	bgt s0, a0, label76
	bgt s2, zero, label118
	mv a0, zero
	mv a1, zero
	bgt s0, zero, label86
	j label87
label75:
	sh2add a2, a0, s1
	addiw a3, a0, 1
	addiw a4, a0, 2
	sw a0, 0(a2)
	sw a3, 4(a2)
	addiw a3, a0, 3
	sw a4, 8(a2)
	mv a0, a1
	sw a3, 12(a2)
	j label73
label76:
	sh2add a1, a0, s1
	sw a0, 0(a1)
	addiw a0, a0, 1
	bgt s0, a0, label76
	bgt s2, zero, label118
	mv a0, zero
	mv a1, zero
	bgt s0, zero, label86
	j label87
label118:
	mv s3, zero
label79:
	jal getint
	mv s4, a0
	jal getint
	mv a3, a0
	mv a0, s4
	jal find
	mv a2, a0
	mv a0, a3
	jal find
	bne a2, a0, label81
	addiw s3, s3, 1
	bgt s2, s3, label79
	mv a0, zero
	mv a1, zero
	bgt s0, zero, label86
	j label87
label83:
	ble s0, a1, label87
label86:
	sh2add a3, a1, s1
	lw a2, 0(a3)
	xor a4, a1, a2
	addiw a1, a1, 1
	sltiu a3, a4, 1
	addw a0, a0, a3
	j label83
label81:
	sh2add a0, a0, s1
	sw a2, 0(a0)
	addiw s3, s3, 1
	bgt s2, s3, label79
	mv a0, zero
	mv a1, zero
	bgt s0, zero, label86
label87:
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
