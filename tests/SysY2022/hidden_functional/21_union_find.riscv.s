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
pcrel65:
	auipc a1, %pcrel_hi(parent)
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
	bne s0, s2, label4
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
label4:
	sh2add a1, s2, s1
	lw s3, 0(a1)
	bne s2, s3, label7
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label2
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
.globl main
main:
.p2align 2
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
pcrel155:
	auipc a0, %pcrel_hi(parent)
	addi s1, a0, %pcrel_lo(pcrel155)
	bgt s0, zero, label88
	bgt s2, zero, label112
	mv a0, zero
	mv a1, zero
	j label81
label88:
	mv a0, zero
label67:
.p2align 2
	addiw a1, a0, 4
	ble s0, a1, label70
	sh2add a2, a0, s1
	addiw a3, a0, 1
	addiw a4, a0, 2
	sw a0, 0(a2)
	sw a3, 4(a2)
	addiw a3, a0, 3
	sw a4, 8(a2)
	mv a0, a1
	sw a3, 12(a2)
	j label67
label70:
	sh2add a1, a0, s1
	sw a0, 0(a1)
	addiw a0, a0, 1
	bgt s0, a0, label70
	bgt s2, zero, label112
	mv a0, zero
	mv a1, zero
	bgt s0, zero, label80
	j label81
label112:
.p2align 2
	mv s3, zero
	j label73
label77:
.p2align 2
	ble s0, a1, label81
label80:
.p2align 2
	sh2add a3, a1, s1
	lw a2, 0(a3)
	xor a4, a1, a2
	addiw a1, a1, 1
	sltiu a3, a4, 1
	addw a0, a0, a3
	j label77
label81:
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
label73:
.p2align 2
	jal getint
	mv s4, a0
	jal getint
	mv a3, a0
	mv a0, s4
	jal find
	mv a2, a0
	mv a0, a3
	jal find
	bne a2, a0, label75
	addiw s3, s3, 1
	bgt s2, s3, label73
	mv a0, zero
	mv a1, zero
	bgt s0, zero, label80
	j label81
label75:
.p2align 2
	sh2add a0, a0, s1
	sw a2, 0(a0)
	addiw s3, s3, 1
	bgt s2, s3, label73
	mv a0, zero
	mv a1, zero
	bgt s0, zero, label80
	j label81
