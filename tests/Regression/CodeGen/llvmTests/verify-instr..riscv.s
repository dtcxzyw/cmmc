.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl mulw
mulw:
	mv a3, a0
	mv a2, a1
	bge a0, a1, label14
	addiw a1, a0, 1
	zext.w a0, a0
	ble a2, a1, label6
label3:
	mulw a3, a1, a0
	addiw a1, a1, 1
	zext.w a0, a3
	bgt a2, a1, label3
	j label6
label14:
	li a0, 1
label6:
	ret
