.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl select_unsigned_lt_10_8_13
select_unsigned_lt_10_8_13:
.p2align 2
	li a2, 10
	li a1, 8
	bltu a0, a2, label9
	li a1, 13
label9:
	li a2, 4294967295
	and a0, a1, a2
	ret
