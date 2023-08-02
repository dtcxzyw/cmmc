.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a2, 4
	li a1, 3
	li a5, 2
	li t0, 8
	slli a3, a1, 32
	slli a4, a5, 32
	li a1, 9
	addi a0, a3, 4
	li a5, 5
	sd ra, 0(sp)
	addi a3, a4, 9
	sd s0, 8(sp)
	li a4, 1
	addi s0, sp, 32
	sd s1, 16(sp)
	li s1, 10
	sd s2, 24(sp)
	sd a0, 32(sp)
	li a0, 1
	sd a3, 40(sp)
	slli a3, a4, 32
	slli a4, a5, 32
	sd a3, 48(sp)
	li a5, 8
	addi a3, a4, 6
	slli a4, a5, 32
	sd a3, 56(sp)
	addi a3, a4, 7
	sd a3, 64(sp)
	addiw a3, t0, -2
	addiw a5, t0, 1
	mv a4, a2
	bge a5, s1, label13
.p2align 2
label8:
	bge a5, a1, label46
	sh2add t0, a5, s0
	lw t2, 0(t0)
	lw t3, 4(t0)
	slt t1, t2, t3
	addw t0, a5, t1
	sh2add t3, a4, s0
	sh2add t2, t0, s0
	lw a5, 0(t3)
	lw t1, 0(t2)
	bgt a5, t1, label13
	sh2add t2, a4, s0
	sh2add t3, t0, s0
	mv a4, t0
	sw t1, 0(t2)
	slliw t1, t0, 1
	sw a5, 0(t3)
	addiw a5, t1, 1
	blt a5, s1, label8
.p2align 2
label13:
	addiw a2, a2, -1
	blt a2, zero, label75
	mv t0, a3
	addiw a3, a3, -2
	addiw a5, t0, 1
	mv a4, a2
	blt a5, s1, label8
	j label13
.p2align 2
label46:
	mv t1, zero
	sext.w t0, a5
	sh2add t3, a4, s0
	sh2add t2, t0, s0
	lw a5, 0(t3)
	lw t1, 0(t2)
	bgt a5, t1, label13
	sh2add t2, a4, s0
	sh2add t3, t0, s0
	mv a4, t0
	sw t1, 0(t2)
	slliw t1, t0, 1
	sw a5, 0(t3)
	addiw a5, t1, 1
	blt a5, s1, label8
	j label13
label75:
	sh2add a4, a1, s0
	lw a5, 32(sp)
	addiw a2, a1, -1
	lw a3, 0(a4)
	sw a3, 32(sp)
	mv a3, zero
	sw a5, 0(a4)
	mv a4, a0
	bgt a1, a0, label23
.p2align 2
label19:
	ble a2, zero, label88
	mv a1, a2
	sh2add a4, a2, s0
	lw a5, 32(sp)
	addiw a2, a2, -1
	lw a3, 0(a4)
	sw a3, 32(sp)
	mv a3, zero
	sw a5, 0(a4)
	mv a4, a0
	ble a1, a0, label19
.p2align 2
label23:
	ble a2, a4, label100
	sh2add t1, a4, s0
	lw t0, 0(t1)
	lw t2, 4(t1)
	slt a5, t0, t2
	addw a4, a4, a5
	sh2add t2, a3, s0
	sh2add t0, a4, s0
	lw a5, 0(t2)
	lw t1, 0(t0)
	bgt a5, t1, label19
	sh2add t0, a3, s0
	sh2add t2, a4, s0
	mv a3, a4
	sw t1, 0(t0)
	slliw t1, a4, 1
	sw a5, 0(t2)
	addiw t0, t1, 1
	mv a4, t0
	bgt a1, t0, label23
	j label19
.p2align 2
label100:
	mv a5, zero
	sext.w a4, a4
	sh2add t2, a3, s0
	sh2add t0, a4, s0
	lw a5, 0(t2)
	lw t1, 0(t0)
	bgt a5, t1, label19
	sh2add t0, a3, s0
	sh2add t2, a4, s0
	mv a3, a4
	sw t1, 0(t0)
	slliw t1, a4, 1
	sw a5, 0(t2)
	addiw t0, t1, 1
	mv a4, t0
	bgt a1, t0, label23
	j label19
label88:
	mv s2, zero
.p2align 2
label20:
	sh2add a3, s2, s0
	lw a0, 0(a3)
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
