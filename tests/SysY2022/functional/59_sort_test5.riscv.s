.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a2, 4
	li a3, 3
	li t0, 1
	li t1, 5
	addi a0, sp, 32
	sd ra, 0(sp)
	slli a1, a3, 32
	sd s0, 8(sp)
	li a3, 9
	addi a4, a1, 4
	li s0, 10
	sd s1, 16(sp)
	li a1, 2
	sd s2, 24(sp)
	sd a4, 32(sp)
	slli a4, a1, 32
	li a1, 1
	addi a5, a4, 9
	slli a4, t0, 32
	sd a5, 40(sp)
	li t0, 8
	slli a5, t1, 32
	sd a4, 48(sp)
	li t1, 8
	addi a4, a5, 6
	sd a4, 56(sp)
	slli a4, t0, 32
	addi a5, a4, 7
	sd a5, 64(sp)
	addiw a4, t1, -2
	addiw t0, t1, 1
	mv a5, a2
	bge t0, s0, label13
.p2align 2
label8:
	bge t0, a3, label52
	sh2add t1, t0, a0
	lw t3, 0(t1)
	lw t4, 4(t1)
	slt t2, t3, t4
	addw t1, t0, t2
	sh2add t4, a5, a0
	sh2add t3, t1, a0
	lw t0, 0(t4)
	lw t2, 0(t3)
	bgt t0, t2, label13
	sh2add t3, a5, a0
	sh2add t4, t1, a0
	mv a5, t1
	sw t2, 0(t3)
	slliw t2, t1, 1
	sw t0, 0(t4)
	addiw t0, t2, 1
	blt t0, s0, label8
.p2align 2
label13:
	addiw a2, a2, -1
	blt a2, zero, label81
	mv t1, a4
	mv a5, a2
	addiw t0, a4, 1
	addiw a4, a4, -2
	blt t0, s0, label8
	j label13
.p2align 2
label52:
	sext.w t1, t0
	sh2add t4, a5, a0
	sh2add t3, t1, a0
	lw t0, 0(t4)
	lw t2, 0(t3)
	bgt t0, t2, label13
	sh2add t3, a5, a0
	sh2add t4, t1, a0
	mv a5, t1
	sw t2, 0(t3)
	slliw t2, t1, 1
	sw t0, 0(t4)
	addiw t0, t2, 1
	blt t0, s0, label8
	j label13
label81:
	addi a2, a0, 36
	addiw a4, a3, -1
	lw t0, 32(sp)
	lw a5, 0(a2)
	sw a5, 32(sp)
	mv a5, zero
	sw t0, 0(a2)
	mv t0, a1
	bgt a3, a1, label29
.p2align 2
label21:
	ble a4, zero, label93
	addi a2, a2, -4
	mv a3, a4
	lw t0, 32(sp)
	addiw a4, a4, -1
	lw a5, 0(a2)
	sw a5, 32(sp)
	mv a5, zero
	sw t0, 0(a2)
	mv t0, a1
	ble a3, a1, label21
.p2align 2
label29:
	bgt a4, t0, label33
	sext.w t0, t0
	sh2add t4, a5, a0
	sh2add t2, t0, a0
	lw t1, 0(t4)
	lw t3, 0(t2)
	bgt t1, t3, label21
	sh2add t2, a5, a0
	sh2add t4, t0, a0
	mv a5, t0
	sw t3, 0(t2)
	slliw t3, t0, 1
	sw t1, 0(t4)
	addiw t2, t3, 1
	mv t0, t2
	bgt a3, t2, label29
	j label21
.p2align 2
label33:
	sh2add t3, t0, a0
	lw t2, 0(t3)
	lw t4, 4(t3)
	slt t1, t2, t4
	sh2add t4, a5, a0
	addw t0, t0, t1
	lw t1, 0(t4)
	sh2add t2, t0, a0
	lw t3, 0(t2)
	bgt t1, t3, label21
	sh2add t2, a5, a0
	sh2add t4, t0, a0
	mv a5, t0
	sw t3, 0(t2)
	slliw t3, t0, 1
	sw t1, 0(t4)
	addiw t2, t3, 1
	mv t0, t2
	bgt a3, t2, label29
	j label21
label93:
	mv s1, a0
	mv s2, zero
.p2align 2
label24:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label27
	addi s1, s1, 4
	j label24
label27:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
