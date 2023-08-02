.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a1, 4
	li a3, 3
	li a4, 2
	li a5, 5
	li t0, 8
	sd ra, 0(sp)
	slli a2, a3, 32
	sd s0, 8(sp)
	addi a0, a2, 4
	addi s0, sp, 32
	li a2, 9
	sd s1, 16(sp)
	li s1, 10
	sd s2, 24(sp)
	sd a0, 32(sp)
	slli a0, a4, 32
	li a4, 1
	addi a3, a0, 9
	li a0, 1
	sd a3, 40(sp)
	slli a3, a4, 32
	slli a4, a5, 32
	sd a3, 48(sp)
	slli a5, t0, 32
	addi a3, a4, 6
	li a4, 8
	sd a3, 56(sp)
	addi a3, a5, 7
	sd a3, 64(sp)
	addiw a3, a4, -2
	addiw a5, a4, 1
	mv a4, a1
	bge a5, s1, label13
.p2align 2
label8:
	bge a5, a2, label46
	sh2add t0, a5, s0
	lw t1, 0(t0)
	lw t2, 4(t0)
	slt t0, t1, t2
	addw a5, a5, t0
	sh2add t2, a4, s0
	sh2add t1, a5, s0
	lw t0, 0(t2)
	lw t1, 0(t1)
	bgt t0, t1, label13
	sh2add a4, a4, s0
	sh2add t2, a5, s0
	sw t1, 0(a4)
	mv a4, a5
	slliw t1, a5, 1
	sw t0, 0(t2)
	addiw t0, t1, 1
	mv a5, t0
	blt t0, s1, label8
.p2align 2
label13:
	addiw a1, a1, -1
	blt a1, zero, label75
	mv a4, a3
	addiw a3, a3, -2
	addiw a5, a4, 1
	mv a4, a1
	blt a5, s1, label8
	j label13
.p2align 2
label46:
	mv t0, zero
	sext.w a5, a5
	sh2add t2, a4, s0
	sh2add t1, a5, s0
	lw t0, 0(t2)
	lw t1, 0(t1)
	bgt t0, t1, label13
	sh2add a4, a4, s0
	sh2add t2, a5, s0
	sw t1, 0(a4)
	mv a4, a5
	slliw t1, a5, 1
	sw t0, 0(t2)
	addiw t0, t1, 1
	mv a5, t0
	blt t0, s1, label8
	j label13
label75:
	mv a1, a2
	sh2add a2, a2, s0
	lw a3, 32(sp)
	lw a4, 0(a2)
	sw a4, 32(sp)
	mv a4, a0
	sw a3, 0(a2)
	mv a3, zero
	addiw a2, a1, -1
	bgt a1, a0, label23
.p2align 2
label19:
	ble a2, zero, label88
	mv a1, a2
	sh2add a2, a2, s0
	lw a3, 32(sp)
	lw a4, 0(a2)
	sw a4, 32(sp)
	mv a4, a0
	sw a3, 0(a2)
	mv a3, zero
	addiw a2, a1, -1
	ble a1, a0, label19
.p2align 2
label23:
	ble a2, a4, label100
	sh2add a5, a4, s0
	lw t0, 0(a5)
	lw t1, 4(a5)
	slt a5, t0, t1
	addw a4, a4, a5
	sh2add t1, a3, s0
	sh2add t0, a4, s0
	lw a5, 0(t1)
	lw t0, 0(t0)
	bgt a5, t0, label19
	sh2add a3, a4, s0
	sw t0, 0(t1)
	slliw t0, a4, 1
	sw a5, 0(a3)
	mv a3, a4
	addiw a5, t0, 1
	mv a4, a5
	bgt a1, a5, label23
	j label19
.p2align 2
label100:
	mv a5, zero
	sext.w a4, a4
	sh2add t1, a3, s0
	sh2add t0, a4, s0
	lw a5, 0(t1)
	lw t0, 0(t0)
	bgt a5, t0, label19
	sh2add a3, a4, s0
	sw t0, 0(t1)
	slliw t0, a4, 1
	sw a5, 0(a3)
	mv a3, a4
	addiw a5, t0, 1
	mv a4, a5
	bgt a1, a5, label23
	j label19
label88:
	mv s2, zero
.p2align 2
label20:
	sh2add a2, s2, s0
	lw a0, 0(a2)
	jal putint
	mv a0, s1
	jal putch
	addiw s2, s2, 1
	blt s2, s1, label20
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
