.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl pass_bool
pass_bool:
	sltu a0, zero, a0
	li a1, 4294967295
	subw a0, zero, a0
	andi a0, a0, 66
	and a0, a0, a1
	ret
.globl ret_true
ret_true:
	li a0, 1
	ret
