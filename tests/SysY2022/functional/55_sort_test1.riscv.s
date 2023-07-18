.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -64
	li a0, 4
	li a1, 3
	li a2, 8
	sd s0, 56(sp)
	addi s0, sp, 0
	sd s1, 48(sp)
	sd ra, 40(sp)
	sw a0, 0(sp)
	li a0, 9
	sw a1, 4(sp)
	li a1, 2
	sw a0, 8(sp)
	li a0, 6
	sw a1, 12(sp)
	li a1, 1
	sw zero, 16(sp)
	sw a1, 20(sp)
	li a1, 5
	sw a0, 24(sp)
	li a0, 7
	sw a1, 28(sp)
	mv a1, zero
	sw a0, 32(sp)
	sw a2, 36(sp)
	li a3, 10
	subw a2, a3, zero
	li a3, 9
	addiw a0, a2, -1
	bge zero, a3, label27
	mv a2, zero
	ble a0, zero, label8
	mv a5, s0
	lw a3, 0(s0)
	lw a4, 4(s0)
	li a5, 1
	ble a3, a4, label41
	mv t0, s0
	mv a2, a5
	sw a3, 4(s0)
	sw a4, 0(s0)
	ble a0, a5, label8
	sh2add a5, a5, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	ble a3, a4, label41
	sh2add t0, a2, s0
	mv a2, a5
	sw a3, 4(t0)
	sw a4, 0(t0)
	ble a0, a5, label8
	sh2add a5, a5, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	ble a3, a4, label41
	sh2add t0, a2, s0
	mv a2, a5
	sw a3, 4(t0)
	sw a4, 0(t0)
	ble a0, a5, label8
	sh2add a5, a5, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	ble a3, a4, label41
	sh2add t0, a2, s0
	mv a2, a5
	sw a3, 4(t0)
	sw a4, 0(t0)
	ble a0, a5, label8
	j label113
label27:
	mv s1, zero
	j label9
label113:
	sh2add a5, a2, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	ble a3, a4, label41
label120:
	sh2add t0, a2, s0
	mv a2, a5
	sw a3, 4(t0)
	sw a4, 0(t0)
	ble a0, a5, label8
	j label127
label41:
	mv a2, a5
	ble a0, a5, label8
	sh2add a5, a5, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	ble a3, a4, label41
	sh2add t0, a2, s0
	mv a2, a5
	sw a3, 4(t0)
	sw a4, 0(t0)
	ble a0, a5, label8
	sh2add a5, a5, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	ble a3, a4, label41
	sh2add t0, a2, s0
	mv a2, a5
	sw a3, 4(t0)
	sw a4, 0(t0)
	ble a0, a5, label8
	sh2add a5, a5, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	ble a3, a4, label41
	sh2add t0, a2, s0
	mv a2, a5
	sw a3, 4(t0)
	sw a4, 0(t0)
	ble a0, a5, label8
	sh2add a5, a5, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	ble a3, a4, label41
	sh2add t0, a2, s0
	mv a2, a5
	sw a3, 4(t0)
	sw a4, 0(t0)
	ble a0, a5, label8
	sh2add a5, a5, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	ble a3, a4, label41
	j label120
label8:
	addiw a1, a1, 1
	li a3, 10
	subw a2, a3, a1
	li a3, 9
	addiw a0, a2, -1
	bge a1, a3, label27
	mv a2, zero
	ble a0, zero, label8
	mv a5, s0
	lw a3, 0(s0)
	lw a4, 4(s0)
	li a5, 1
	ble a3, a4, label41
	mv t0, s0
	mv a2, a5
	sw a3, 4(s0)
	sw a4, 0(s0)
	ble a0, a5, label8
	sh2add a5, a5, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	ble a3, a4, label41
	sh2add t0, a2, s0
	mv a2, a5
	sw a3, 4(t0)
	sw a4, 0(t0)
	ble a0, a5, label8
	sh2add a5, a5, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	ble a3, a4, label41
	sh2add t0, a2, s0
	mv a2, a5
	sw a3, 4(t0)
	sw a4, 0(t0)
	ble a0, a5, label8
	sh2add a5, a5, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	ble a3, a4, label41
	sh2add t0, a2, s0
	mv a2, a5
	sw a3, 4(t0)
	sw a4, 0(t0)
	ble a0, a5, label8
	j label113
label127:
	sh2add a5, a2, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	ble a3, a4, label41
	j label120
label9:
	sh2add a2, s1, s0
	lw a0, 0(a2)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	bge s1, a0, label11
	j label9
label11:
	mv a0, zero
	ld ra, 40(sp)
	ld s1, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
