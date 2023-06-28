.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1082759578
	.4byte	1082340147
.text
.globl F
F:
pcrel12:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel12)
	flw f11, 0(a0)
	fadd.s f10, f10, f11
	flw f11, 4(a0)
	fadd.s f10, f10, f11
	ret
