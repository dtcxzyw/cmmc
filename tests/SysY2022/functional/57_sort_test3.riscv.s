.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
QuickSort:
	addi sp, sp, -48
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	mv s1, a2
	sd s3, 24(sp)
	mv s3, zero
	sd s2, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	mv s2, zero
	ble a2, a1, label23
	sh2add a3, a1, a0
	mv s4, a1
	lw a0, 0(a3)
	mv a3, a2
	addiw a2, a0, -1
	ble s1, a1, label10
	bge a1, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	addiw a3, a3, -1
	bge a1, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	addiw a3, a3, -1
	bge a1, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	addiw a3, a3, -1
	bge a1, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
label237:
	addiw a3, a3, -1
	bge s4, a3, label15
	j label203
label16:
	ble a3, s4, label20
	sh2add a4, s4, s0
	lw a5, 0(a4)
	ble a0, a5, label20
	addiw s4, s4, 1
	ble a3, s4, label20
	sh2add a4, s4, s0
	lw a5, 0(a4)
	ble a0, a5, label20
	addiw s4, s4, 1
	ble a3, s4, label20
	sh2add a4, s4, s0
	lw a5, 0(a4)
	ble a0, a5, label20
	addiw s4, s4, 1
	ble a3, s4, label20
	sh2add a4, s4, s0
	lw a5, 0(a4)
	ble a0, a5, label20
	j label227
label20:
	ble a3, s4, label7
	sh2add t0, s4, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	ble a3, s4, label10
	bge s4, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	addiw a3, a3, -1
	bge s4, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	addiw a3, a3, -1
	bge s4, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	addiw a3, a3, -1
	bge s4, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	j label237
label7:
	ble a3, s4, label10
	bge s4, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	addiw a3, a3, -1
	bge s4, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	addiw a3, a3, -1
	bge s4, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	addiw a3, a3, -1
	bge s4, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	j label237
label10:
	sh2add a3, s4, s0
	addiw a2, s4, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s4, 1
	subw a0, zero, s3
	li s3, 1
	and s2, s2, a0
	ble s1, a1, label23
	sh2add a3, a1, s0
	mv s4, a1
	lw a0, 0(a3)
	mv a3, s1
	addiw a2, a0, -1
	bge a1, s1, label15
	sh2add a4, s1, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	addiw a3, s1, -1
	bge a1, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	addiw a3, a3, -1
	bge a1, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	addiw a3, a3, -1
	bge a1, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	j label237
label15:
	bge s4, a3, label16
	sh2add a5, a3, s0
	sh2add t0, s4, s0
	lw a4, 0(a5)
	addiw s4, s4, 1
	sw a4, 0(t0)
	ble a3, s4, label20
	sh2add a4, s4, s0
	lw a5, 0(a4)
	ble a0, a5, label20
	addiw s4, s4, 1
	ble a3, s4, label20
	sh2add a4, s4, s0
	lw a5, 0(a4)
	ble a0, a5, label20
	addiw s4, s4, 1
	ble a3, s4, label20
	sh2add a4, s4, s0
	lw a5, 0(a4)
	ble a0, a5, label20
	addiw s4, s4, 1
	ble a3, s4, label20
	sh2add a4, s4, s0
	lw a5, 0(a4)
	ble a0, a5, label20
	addiw s4, s4, 1
	ble a3, s4, label20
label245:
	sh2add a4, s4, s0
	lw a5, 0(a4)
	ble a0, a5, label20
	j label227
label203:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
label221:
	addiw a3, a3, -1
	bge s4, a3, label15
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label15
	j label221
label227:
	addiw s4, s4, 1
	ble a3, s4, label20
	j label245
label23:
	subw a1, zero, s3
	ld ra, 0(sp)
	and a0, s2, a1
	ld s4, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
.globl main
main:
	addi sp, sp, -64
	li a1, 4
	li a0, 3
	li a2, 9
	li a3, 7
	sd s0, 40(sp)
	addi s0, sp, 0
	sd s1, 56(sp)
	sd ra, 48(sp)
	sw a1, 0(sp)
	li a1, 6
	sw a0, 4(sp)
	li a0, 2
	sw a2, 8(sp)
	sw a0, 12(sp)
	li a0, 1
	sw zero, 16(sp)
	sw a0, 20(sp)
	li a0, 5
	sw a1, 24(sp)
	li a1, 8
	sw a0, 28(sp)
	sw a3, 32(sp)
	sw a1, 36(sp)
	mv a1, zero
	mv a0, s0
	jal QuickSort
	mv s1, a0
	li a0, 10
	bge s1, a0, label280
label278:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	bge s1, a0, label280
	j label278
label280:
	mv a0, zero
	ld ra, 48(sp)
	ld s1, 56(sp)
	ld s0, 40(sp)
	addi sp, sp, 64
	ret
