.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test_local_strategy
test_local_strategy:
.p2align 2
	divw a1, a0, a1
	li a0, 4294967295
	and t0, a1, a0
	subw a1, t0, a2
	and a2, a1, a0
	addw a0, a3, a4
	addw a3, a5, a0
	addw a4, a2, a3
	mv a0, a4
	beq a1, zero, label23
	mv a0, a2
label23:
	ret
