.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl pass_fast_bool
pass_fast_bool:
	sltu a2, zero, a0
	subw a3, zero, a2
	li a2, 4294967295
	andi a1, a3, 66
	and a0, a1, a2
	ret
.globl pass_vector_bool
pass_vector_bool:
	sltu a2, zero, a0
	subw a3, zero, a2
	li a2, 4294967295
	andi a1, a3, 66
	and a0, a1, a2
	ret
.globl ret_true
ret_true:
	li a0, 1
	ret
