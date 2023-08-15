.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo4
foo4:
	ble a1, zero, label24
	li a3, 3
	ble a1, a3, label32
	addiw a3, a1, -3
	addiw a5, a1, -18
	li a2, 15
	ble a3, a2, label51
	mv a2, a0
	mv a4, zero
	j label12
.p2align 2
label15:
	addi a2, a2, 64
.p2align 2
label12:
	slliw t1, a4, 2
	addiw t0, a4, 1
	sw t1, 0(a2)
	slli t2, t0, 2
	addiw t1, a4, 2
	sw t2, 4(a2)
	slli t0, t1, 2
	addiw t2, a4, 3
	sw t0, 8(a2)
	slli t1, t2, 2
	addiw t0, a4, 4
	addiw t2, a4, 5
	sw t1, 12(a2)
	slli t3, t0, 2
	addiw t1, a4, 6
	slli t0, t2, 2
	sw t3, 16(a2)
	slli t2, t1, 2
	addiw t3, a4, 10
	sw t0, 20(a2)
	slli t4, t3, 2
	addiw t0, a4, 7
	addiw t3, a4, 12
	sw t2, 24(a2)
	slli t1, t0, 2
	addiw t2, a4, 8
	sw t1, 28(a2)
	slli t0, t2, 2
	addiw t1, a4, 9
	sw t0, 32(a2)
	slli t2, t1, 2
	addiw t0, a4, 11
	sw t2, 36(a2)
	slli t1, t0, 2
	addiw t2, a4, 13
	slli t0, t3, 2
	sw t4, 40(a2)
	sw t1, 44(a2)
	slli t1, t2, 2
	sw t0, 48(a2)
	addiw t0, a4, 14
	sw t1, 52(a2)
	slli t2, t0, 2
	addiw t1, a4, 15
	sw t2, 56(a2)
	addiw a4, a4, 16
	slli t0, t1, 2
	sw t0, 60(a2)
	bgt a5, a4, label15
	mv a5, a4
label16:
	ble a3, a5, label107
	sh2add a2, a5, a0
	mv a4, a5
label20:
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
	j label20
label107:
	mv a2, a4
label3:
	ble a1, a2, label24
	sh2add a0, a2, a0
	j label6
label9:
	addi a0, a0, 4
label6:
	slliw a3, a2, 2
	addiw a2, a2, 1
	sw a3, 0(a0)
	bgt a1, a2, label9
label24:
	ret
label51:
	mv a5, zero
	mv a4, zero
	j label16
label32:
	mv a2, zero
	j label3
