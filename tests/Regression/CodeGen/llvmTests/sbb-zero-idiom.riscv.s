.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl i32_select_0_or_neg1
i32_select_0_or_neg1:
	sltu a2, zero, a0
	li a3, 4294967295
	subw a1, zero, a2
	and a0, a1, a3
	ret
