.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -64
	li a0, 4
	li a1, 3
	li a2, 9
	li a3, 5
	sd s0, 56(sp)
	addi s0, sp, 0
	sd s1, 48(sp)
	sd ra, 40(sp)
	sw a0, 0(sp)
	sw a1, 4(sp)
	li a1, 2
	sw a2, 8(sp)
	li a2, 6
	sw a1, 12(sp)
	li a1, 1
	sw zero, 16(sp)
	sw a1, 20(sp)
	li a1, 7
	sw a2, 24(sp)
	li a2, 8
	sw a3, 28(sp)
	sw a1, 32(sp)
	sw a2, 36(sp)
	addiw a1, a2, -2
	addiw a3, a2, 1
	mv a2, a0
label5:
	li a4, 10
	blt a3, a4, label8
	addiw a0, a0, -1
	bge a0, zero, label76
	j label75
label8:
	li a5, 9
	blt a3, a5, label47
	mv a4, zero
	j label9
label75:
	li a0, 9
	j label14
label76:
	mv a2, a1
	addiw a1, a1, -2
	addiw a3, a2, 1
	mv a2, a0
	j label5
label14:
	sh2add a1, a0, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
label16:
	bgt a0, a3, label23
	bgt a1, zero, label89
	j label88
label19:
	bgt a1, zero, label89
label88:
	mv s1, zero
	j label20
label89:
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 0(sp)
	lw a3, 0(a1)
	sw a3, 0(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	j label16
label20:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	blt s1, a0, label20
	mv a0, zero
	ld ra, 40(sp)
	ld s1, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label23:
	bgt a1, a3, label101
	mv a4, zero
	j label24
label101:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
label24:
	addw a3, a3, a4
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	bgt a4, a5, label19
	sh2add a2, a2, s0
	sh2add t0, a3, s0
	sw a5, 0(a2)
	slliw a5, a3, 1
	mv a2, a3
	sw a4, 0(t0)
	addiw a4, a5, 1
	mv a3, a4
	j label16
label47:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
label9:
	addw a3, a3, a4
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	bgt a4, a5, label13
	sh2add a2, a2, s0
	sh2add t0, a3, s0
	sw a5, 0(a2)
	mv a2, a3
	slliw a5, a3, 1
	sw a4, 0(t0)
	addiw a4, a5, 1
	mv a3, a4
	j label5
label13:
	addiw a0, a0, -1
	bge a0, zero, label76
	j label75
