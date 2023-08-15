.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo
foo:
	beq a0, zero, label2
	addiw a1, a0, 2
	zext.w a0, a1
label3:
	ret
label2:
	mv a2, zero
	beq a1, zero, label19
	li a2, 5
label19:
	zext.w a0, a2
	j label3
