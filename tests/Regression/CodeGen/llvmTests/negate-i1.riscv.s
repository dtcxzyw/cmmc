.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl select_i32_neg1_or_0
select_i32_neg1_or_0:
.p2align 2
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl select_i32_neg1_or_0_zeroext
select_i32_neg1_or_0_zeroext:
.p2align 2
	li a1, 4294967295
	and a0, a0, a1
	ret
