.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl mulw
mulw:
	mv a2, a0
	mv a3, a1
	bge a0, a1, label16
	addiw a0, a0, 1
	ble a1, a0, label21
label3:
	mulw a1, a0, a2
	addiw a0, a0, 1
	ble a3, a0, label29
	mv a2, a1
	j label3
label16:
	li a0, 1
label8:
	ret
label21:
	zext.w a0, a2
	j label8
label29:
	mv a2, a1
	zext.w a0, a1
	j label8
