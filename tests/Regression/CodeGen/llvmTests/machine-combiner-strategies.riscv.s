.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test_local_strategy
test_local_strategy:
	divw a0, a0, a1
	li t0, 4294967295
	and a1, a0, t0
	subw a0, a1, a2
	bne a0, zero, label20
	li a2, 4294967295
	and a0, a0, a2
	addw a2, a3, a5
	addw a1, a4, a0
	addw a0, a1, a2
	j label3
label20:
	li a1, 4294967295
	and a0, a0, a1
label3:
	ret
