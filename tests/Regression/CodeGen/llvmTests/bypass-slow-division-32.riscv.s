.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl Test_get_quotient
Test_get_quotient:
	divw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl Test_get_quotient_and_remainder
Test_get_quotient_and_remainder:
	divw a3, a0, a1
	li a2, 4294967295
	remw a0, a0, a1
	and a3, a3, a2
	and a0, a0, a2
	addw a0, a3, a0
	ret
.globl Test_get_remainder
Test_get_remainder:
	remw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl Test_use_div_and_idiv
Test_use_div_and_idiv:
	divw a2, a0, a1
	li a3, 4294967295
	divuw a0, a0, a1
	and a2, a2, a3
	addw a0, a2, a0
	ret
.globl Test_use_div_imm_imm
Test_use_div_imm_imm:
	li a0, 64
	ret
.globl Test_use_div_imm_reg
Test_use_div_imm_reg:
	li a1, 4
	divw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl Test_use_div_reg_imm
Test_use_div_reg_imm:
	li a1, 1041204193
	mul a0, a0, a1
	srai a1, a0, 35
	srli a0, a0, 63
	add a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl Test_use_divrem_reg_imm
Test_use_divrem_reg_imm:
	li a3, 1041204193
	mul a1, a0, a3
	mul a3, a0, a3
	srai a2, a1, 35
	srai a4, a3, 35
	srli a1, a1, 63
	srli a3, a3, 63
	add a2, a1, a2
	add a3, a3, a4
	li a1, 4294967295
	li a4, 33
	and a2, a2, a1
	mulw a3, a3, a4
	subw a0, a0, a3
	and a0, a0, a1
	addw a0, a2, a0
	ret
.globl Test_use_rem_imm_reg
Test_use_rem_imm_reg:
	li a1, 4
	divw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl Test_use_rem_reg_imm
Test_use_rem_reg_imm:
	li a1, 1041204193
	mul a1, a0, a1
	srai a2, a1, 35
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 33
	mulw a1, a1, a2
	subw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
