.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1078530011
.bss
.text
.globl float_imm
float_imm:
pcrel6:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel6)
	flw f10, 0(a0)
	ret
.globl float_imm_op
float_imm_op:
	lui a0, 260096
	fmv.w.x f11, a0
	fadd.s f10, f10, f11
	ret
