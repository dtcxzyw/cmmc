.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -144
	li a2, 4
	li a4, 3
	li a3, 9
	sd s0, 136(sp)
	addi a0, sp, 0
	addi a1, sp, 88
	addi s0, sp, 40
	sd s1, 80(sp)
	sd ra, 128(sp)
	sw a2, 88(sp)
	li a2, 2
	sw a4, 92(sp)
	li a4, 5
	sw a3, 96(sp)
	li a3, 1
	sw a2, 100(sp)
	li a2, 6
	sw zero, 104(sp)
	sw a3, 108(sp)
	li a3, 7
	sw a2, 112(sp)
	li a2, 8
	sw a4, 116(sp)
	sw a3, 120(sp)
	mv a3, zero
	sw a2, 124(sp)
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	li a2, 4
	li a4, 10
	bge a2, a4, label4
label15:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	sh2add a4, a5, a0
	lw t0, 0(a4)
	addiw a5, t0, 1
	sw a5, 0(a4)
	lw t0, 4(a3)
	sh2add a4, t0, a0
	lw a5, 0(a4)
	addiw t0, a5, 1
	sw t0, 0(a4)
	lw a5, 8(a3)
	sh2add a4, a5, a0
	lw t0, 0(a4)
	addiw a5, t0, 1
	sw a5, 0(a4)
	lw a4, 12(a3)
	sh2add a3, a4, a0
	lw a5, 0(a3)
	addiw a4, a5, 1
	sw a4, 0(a3)
	mv a3, a2
	addiw a2, a2, 4
	li a4, 10
	bge a2, a4, label4
	j label15
label4:
	sh2add a5, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sh2add a2, a4, a0
	lw a5, 0(a2)
	addiw a4, a5, 1
	sw a4, 0(a2)
	li a2, 10
	bge a3, a2, label6
	j label4
label6:
	lw a3, 4(sp)
	lw a4, 0(sp)
	addw a2, a3, a4
	sw a2, 4(sp)
	lw a3, 8(sp)
	addw a2, a2, a3
	sw a2, 8(sp)
	lw a3, 12(sp)
	addw a2, a2, a3
	sw a2, 12(sp)
	lw a3, 16(sp)
	addw a2, a2, a3
	sw a2, 16(sp)
	lw a3, 20(sp)
	addw a2, a2, a3
	sw a2, 20(sp)
	lw a3, 24(sp)
	addw a2, a2, a3
	sw a2, 24(sp)
	lw a3, 28(sp)
	addw a2, a2, a3
	sw a2, 28(sp)
	lw a3, 32(sp)
	addw a2, a2, a3
	sw a2, 32(sp)
	lw a3, 36(sp)
	addw a2, a2, a3
	li a3, 10
	sw a2, 36(sp)
	addiw a2, a3, -4
	ble a2, zero, label10
	j label9
label195:
	mv a3, a2
label10:
	addiw a2, a3, -1
	sh2add a5, a2, a1
	lw a3, 0(a5)
	sh2add a4, a3, a0
	lw t0, 0(a4)
	addiw a5, t0, -1
	sw a5, 0(a4)
	sh2add a4, a5, s0
	sw a3, 0(a4)
	ble a2, zero, label136
	j label195
label136:
	mv s1, zero
label12:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	bge s1, a0, label14
	j label12
label9:
	addiw a5, a3, -1
	sh2add a3, a5, a1
	lw a4, 0(a3)
	sh2add a5, a4, a0
	lw t1, 0(a5)
	addiw t0, t1, -1
	sw t0, 0(a5)
	sh2add a5, t0, s0
	sw a4, 0(a5)
	lw a4, -4(a3)
	sh2add a5, a4, a0
	lw t1, 0(a5)
	addiw t0, t1, -1
	sw t0, 0(a5)
	sh2add a5, t0, s0
	sw a4, 0(a5)
	lw a4, -8(a3)
	sh2add a5, a4, a0
	lw t1, 0(a5)
	addiw t0, t1, -1
	sw t0, 0(a5)
	sh2add a5, t0, s0
	sw a4, 0(a5)
	lw a3, -12(a3)
	sh2add a4, a3, a0
	lw t0, 0(a4)
	addiw a5, t0, -1
	sw a5, 0(a4)
	sh2add a4, a5, s0
	sw a3, 0(a4)
	mv a3, a2
	addiw a2, a2, -4
	ble a2, zero, label10
	j label9
label14:
	mv a0, zero
	ld ra, 128(sp)
	ld s1, 80(sp)
	ld s0, 136(sp)
	addi sp, sp, 144
	ret
