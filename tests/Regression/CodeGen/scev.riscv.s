.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo4
foo4:
	ble a1, zero, label2
	li a3, 3
	ble a1, a3, label32
	addiw a3, a1, -3
	addiw a5, a1, -18
	li a2, 15
	ble a3, a2, label51
	mv a2, a0
	mv a4, zero
	j label13
.p2align 2
label16:
	addi a2, a2, 64
.p2align 2
label13:
	slliw t0, a4, 2
	addiw t3, a4, 1
	addiw t2, a4, 2
	slli t1, t3, 2
	sw t0, 0(a2)
	addiw t3, a4, 3
	slli t0, t2, 2
	sw t1, 4(a2)
	addiw t2, a4, 4
	slli t1, t3, 2
	sw t0, 8(a2)
	addiw t3, a4, 7
	slli t0, t2, 2
	sw t1, 12(a2)
	addiw t1, a4, 5
	sw t0, 16(a2)
	slli t2, t1, 2
	addiw t0, a4, 6
	sw t2, 20(a2)
	slli t1, t0, 2
	addiw t2, a4, 8
	slli t0, t3, 2
	sw t1, 24(a2)
	addiw t3, a4, 13
	slli t1, t2, 2
	sw t0, 28(a2)
	addiw t0, a4, 9
	sw t1, 32(a2)
	slli t2, t0, 2
	addiw t1, a4, 10
	sw t2, 36(a2)
	slli t0, t1, 2
	addiw t2, a4, 11
	sw t0, 40(a2)
	slli t1, t2, 2
	addiw t0, a4, 12
	sw t1, 44(a2)
	slli t2, t0, 2
	slli t1, t3, 2
	addiw t0, a4, 14
	sw t2, 48(a2)
	slli t2, t0, 2
	sw t1, 52(a2)
	addiw t1, a4, 15
	sw t2, 56(a2)
	addiw a4, a4, 16
	slli t0, t1, 2
	sw t0, 60(a2)
	bgt a5, a4, label16
	mv a5, a4
label17:
	ble a3, a5, label107
	sh2add a2, a5, a0
	mv a4, a5
label21:
	slliw t0, a4, 2
	addiw t2, a4, 1
	addiw a5, a4, 2
	slli t1, t2, 2
	sw t0, 0(a2)
	slli t0, a5, 2
	sw t1, 4(a2)
	addiw t1, a4, 3
	sw t0, 8(a2)
	addiw a4, a4, 4
	slli a5, t1, 2
	sw a5, 12(a2)
	ble a3, a4, label107
	addi a2, a2, 16
	j label21
label107:
	mv a2, a4
label4:
	ble a1, a2, label2
	sh2add a0, a2, a0
	j label7
label10:
	addi a0, a0, 4
label7:
	slliw a3, a2, 2
	addiw a2, a2, 1
	sw a3, 0(a0)
	bgt a1, a2, label10
label2:
	ret
label51:
	mv a5, zero
	mv a4, zero
	j label17
label32:
	mv a2, zero
	j label4
