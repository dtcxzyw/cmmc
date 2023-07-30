.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test_local_strategy
test_local_strategy:
.p2align 2
	divw a1, a0, a1
	addw a3, a3, a4
	li a0, 4294967295
	and t0, a1, a0
	subw a1, t0, a2
	addw a2, a5, a3
	and a0, a1, a0
	bne a1, zero, label23
	addw a0, a0, a2
label23:
	ret
