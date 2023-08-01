.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo4
foo4:
	ble a1, zero, label9
	addiw a4, a1, -8
	li a3, 8
	ble a1, a3, label18
	mv a3, zero
	mv a2, zero
label3:
	sh2add a5, a3, a0
	addiw t1, a2, 4
	addiw t0, a2, 8
	addiw a3, a3, 8
	sw a2, 0(a5)
	sw t1, 4(a5)
	addiw t1, a2, 12
	sw t0, 8(a5)
	addiw t0, a2, 16
	sw t1, 12(a5)
	addiw t1, a2, 20
	sw t0, 16(a5)
	addiw t0, a2, 24
	sw t1, 20(a5)
	addiw t1, a2, 28
	sw t0, 24(a5)
	addiw a2, a2, 32
	sw t1, 28(a5)
	bgt a4, a3, label3
label6:
	sh2add a4, a3, a0
	addiw a3, a3, 1
	sw a2, 0(a4)
	addiw a2, a2, 4
	bgt a1, a3, label6
label9:
	ret
label18:
	mv a2, zero
	mv a3, zero
	j label6
