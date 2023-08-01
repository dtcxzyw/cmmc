.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -64
	li a0, 4
	li a1, 3
	li a2, 9
	li a3, 7
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 24
	sd s1, 16(sp)
	sw a0, 24(sp)
	sw a1, 28(sp)
	li a1, 2
	sw a2, 32(sp)
	li a2, 6
	sw a1, 36(sp)
	li a1, 1
	sw zero, 40(sp)
	sw a1, 44(sp)
	li a1, 5
	sw a2, 48(sp)
	li a2, 8
	sw a1, 52(sp)
	sw a3, 56(sp)
	sw a2, 60(sp)
	addiw a1, a2, -2
	addiw a3, a2, 1
	mv a2, a0
	li a4, 10
	bge a3, a4, label13
.p2align 2
label8:
	li a5, 9
	bge a3, a5, label46
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	bgt a4, a5, label13
	sh2add a2, a3, s0
	sw a5, 0(t0)
	slliw a5, a3, 1
	sw a4, 0(a2)
	mv a2, a3
	addiw a4, a5, 1
	mv a3, a4
	li a4, 10
	blt a3, a4, label8
label13:
	addiw a0, a0, -1
	blt a0, zero, label75
	mv a2, a1
	addiw a1, a1, -2
	addiw a3, a2, 1
	mv a2, a0
	li a4, 10
	blt a3, a4, label8
	j label13
label46:
	mv a4, zero
	sext.w a3, a3
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	bgt a4, a5, label13
	sh2add a2, a3, s0
	sw a5, 0(t0)
	slliw a5, a3, 1
	sw a4, 0(a2)
	mv a2, a3
	addiw a4, a5, 1
	mv a3, a4
	li a4, 10
	blt a3, a4, label8
	j label13
label75:
	li a0, 9
	sh2add a1, a0, s0
	lw a2, 24(sp)
	lw a3, 0(a1)
	sw a3, 24(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	bgt a0, a3, label23
.p2align 2
label19:
	ble a1, zero, label88
	mv a0, a1
	sh2add a1, a1, s0
	lw a2, 24(sp)
	lw a3, 0(a1)
	sw a3, 24(sp)
	li a3, 1
	sw a2, 0(a1)
	mv a2, zero
	addiw a1, a0, -1
	ble a0, a3, label19
.p2align 2
label23:
	ble a1, a3, label100
	sh2add a4, a3, s0
	lw a5, 0(a4)
	lw t0, 4(a4)
	slt a4, a5, t0
	addw a3, a3, a4
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	bgt a4, a5, label19
	sh2add a2, a3, s0
	sw a5, 0(t0)
	slliw a5, a3, 1
	sw a4, 0(a2)
	mv a2, a3
	addiw a4, a5, 1
	mv a3, a4
	bgt a0, a4, label23
	j label19
.p2align 2
label100:
	mv a4, zero
	sext.w a3, a3
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw a5, 0(a5)
	bgt a4, a5, label19
	sh2add a2, a3, s0
	sw a5, 0(t0)
	slliw a5, a3, 1
	sw a4, 0(a2)
	mv a2, a3
	addiw a4, a5, 1
	mv a3, a4
	bgt a0, a4, label23
	j label19
label88:
	mv s1, zero
.p2align 2
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
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 64
	ret
