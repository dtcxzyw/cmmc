.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl fastisel_select
fastisel_select:
	subw a2, a0, a1
	sltu a3, zero, a2
	li a2, 1204476887
	subw a0, zero, a3
	li a3, 4294967295
	and a1, a0, a2
	and a0, a1, a3
	ret
