.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 2
__cmmc_fp_constant_pool:
	.4byte	1078530011
.text
.p2align 2
.globl float_imm
float_imm:
pcrel6:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel6)
	flw f10, 0(a0)
	ret
.p2align 2
.globl float_imm_op
float_imm_op:
	lui a0, 260096
	fmv.w.x f11, a0
	fadd.s f10, f10, f11
	ret
