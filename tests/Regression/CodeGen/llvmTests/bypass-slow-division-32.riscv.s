.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl Test_get_quotient
Test_get_quotient:
.p2align 2
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.globl Test_get_quotient_and_remainder
Test_get_quotient_and_remainder:
.p2align 2
	divw a4, a0, a1
	li a2, 4294967295
	remw a1, a0, a1
	and a3, a4, a2
	and a2, a1, a2
	addw a0, a3, a2
	ret
.globl Test_get_remainder
Test_get_remainder:
.p2align 2
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.globl Test_use_div_and_idiv
Test_use_div_and_idiv:
.p2align 2
	divw a2, a0, a1
	li a4, 4294967295
	divuw a1, a0, a1
	and a3, a2, a4
	addw a0, a3, a1
	ret
.globl Test_use_div_imm_imm
Test_use_div_imm_imm:
.p2align 2
	li a0, 64
	ret
.globl Test_use_div_imm_reg
Test_use_div_imm_reg:
.p2align 2
	li a2, 4
	li a3, 4294967295
	divw a1, a2, a0
	and a0, a1, a3
	ret
.globl Test_use_div_reg_imm
Test_use_div_reg_imm:
.p2align 2
	li a2, 1041204193
	li a3, 4294967295
	mul a1, a0, a2
	srli a2, a1, 63
	srai a0, a1, 35
	add a1, a2, a0
	and a0, a1, a3
	ret
.globl Test_use_divrem_reg_imm
Test_use_divrem_reg_imm:
.p2align 2
	li a3, 1041204193
	mul a1, a0, a3
	srli a4, a1, 63
	srai a2, a1, 35
	li a1, 4294967295
	add a3, a4, a2
	li a4, 33
	and a2, a3, a1
	mulw a3, a3, a4
	subw a5, a0, a3
	and a1, a5, a1
	addw a0, a2, a1
	ret
.globl Test_use_rem_imm_reg
Test_use_rem_imm_reg:
.p2align 2
	li a2, 4
	li a3, 4294967295
	divw a1, a2, a0
	and a0, a1, a3
	ret
.globl Test_use_rem_reg_imm
Test_use_rem_reg_imm:
.p2align 2
	li a3, 1041204193
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 35
	add a1, a3, a2
	li a2, 33
	mulw a3, a1, a2
	li a2, 4294967295
	subw a1, a0, a3
	and a0, a1, a2
	ret
