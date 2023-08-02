.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test_local_strategy
test_local_strategy:
	divw t1, a0, a1
	zext.w t2, t1
	addw t1, a3, a4
	subw t0, t2, a2
	addw a2, a5, t1
	zext.w a1, t0
	mv a0, a1
	bne t0, zero, label21
	addw a0, a1, a2
label21:
	ret
