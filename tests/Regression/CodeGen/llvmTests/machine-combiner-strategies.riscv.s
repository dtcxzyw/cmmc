.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test_local_strategy
test_local_strategy:
	divw a0, a0, a1
	addw a3, a3, a4
	zext.w t0, a0
	subw a1, t0, a2
	addw a2, a5, a3
	zext.w a0, a1
	bne a1, zero, label21
	addw a0, a0, a2
label21:
	ret
