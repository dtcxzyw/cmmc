.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl Test_get_quotient
Test_get_quotient:
	divw a2, a0, a1
	zext.w a0, a2
	ret
.p2align 2
.globl Test_get_quotient_and_remainder
Test_get_quotient_and_remainder:
	divw a3, a0, a1
	remw a4, a0, a1
	zext.w a2, a3
	zext.w a5, a4
	addw a0, a2, a5
	ret
.p2align 2
.globl Test_get_remainder
Test_get_remainder:
	remw a2, a0, a1
	zext.w a0, a2
	ret
.p2align 2
.globl Test_use_div_and_idiv
Test_use_div_and_idiv:
	divw a3, a0, a1
	divuw a4, a0, a1
	zext.w a2, a3
	addw a0, a2, a4
	ret
.p2align 2
.globl Test_use_div_imm_imm
Test_use_div_imm_imm:
	li a0, 64
	ret
.p2align 2
.globl Test_use_div_imm_reg
Test_use_div_imm_reg:
	li a2, 4
	divw a1, a2, a0
	zext.w a0, a1
	ret
.p2align 2
.globl Test_use_div_reg_imm
Test_use_div_reg_imm:
	lui a4, 254200
	addiw a3, a4, 993
	mul a1, a0, a3
	srli a4, a1, 63
	srai a2, a1, 35
	add a3, a4, a2
	zext.w a0, a3
	ret
.p2align 2
.globl Test_use_divrem_reg_imm
Test_use_divrem_reg_imm:
	lui a2, 254200
	addiw a1, a2, 993
	mul a3, a0, a1
	srli t0, a3, 63
	srai a4, a3, 35
	add a2, t0, a4
	slliw a5, a2, 5
	zext.w a1, a2
	addw t0, a5, a2
	subw a3, a0, t0
	zext.w a4, a3
	addw a0, a1, a4
	ret
.p2align 2
.globl Test_use_rem_imm_reg
Test_use_rem_imm_reg:
	li a2, 4
	divw a1, a2, a0
	zext.w a0, a1
	ret
.p2align 2
.globl Test_use_rem_reg_imm
Test_use_rem_reg_imm:
	lui a4, 254200
	addiw a1, a4, 993
	mul a2, a0, a1
	srli a5, a2, 63
	srai a3, a2, 35
	add a1, a5, a3
	slliw a4, a1, 5
	addw t0, a4, a1
	subw a2, a0, t0
	zext.w a0, a2
	ret
