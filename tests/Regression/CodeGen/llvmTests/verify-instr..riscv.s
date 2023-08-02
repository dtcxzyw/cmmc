.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl mulw
mulw:
	mv a2, a0
	mv a3, a1
	bge a0, a1, label16
	addiw a1, a0, 1
	bgt a3, a1, label3
label21:
	zext.w a0, a0
	j label8
label3:
	mulw a0, a1, a0
	addiw a1, a1, 1
	bgt a3, a1, label3
	j label21
label16:
	li a0, 1
label8:
	ret
