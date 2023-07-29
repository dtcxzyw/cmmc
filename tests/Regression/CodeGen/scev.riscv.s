.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo4
foo4:
.p2align 2
	addiw a4, a1, -4
	ble a1, zero, label9
	li a3, 4
	bgt a1, a3, label19
	mv a2, zero
	mv a4, zero
	j label6
label19:
	mv a3, zero
	mv a2, zero
label3:
	sh2add a5, a3, a0
	addiw t0, a2, 4
	addiw t1, a2, 8
	addiw a3, a3, 4
	sw a2, 0(a5)
	sw t0, 4(a5)
	addiw t0, a2, 12
	sw t1, 8(a5)
	addiw a2, a2, 16
	sw t0, 12(a5)
	bgt a4, a3, label3
	mv a4, a3
label6:
	sh2add a3, a4, a0
	addiw a4, a4, 1
	sw a2, 0(a3)
	addiw a2, a2, 4
	bgt a1, a4, label6
label9:
	ret
