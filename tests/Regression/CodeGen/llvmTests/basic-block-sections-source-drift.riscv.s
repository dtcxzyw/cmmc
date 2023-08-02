.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo
foo:
	li a2, 2
	bne a1, zero, label10
	mv a2, zero
label10:
	zext.w a3, a2
	li a1, 1
	bne a0, zero, label12
	mv a1, a3
label12:
	mv a0, a1
	ret
