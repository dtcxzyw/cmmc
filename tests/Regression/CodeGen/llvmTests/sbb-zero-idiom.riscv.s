.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl i32_select_0_or_neg1
i32_select_0_or_neg1:
	sltu a0, zero, a0
	li a1, 4294967295
	subw a0, zero, a0
	and a0, a0, a1
	ret