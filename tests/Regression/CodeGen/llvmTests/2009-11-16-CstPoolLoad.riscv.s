.data
.align 4
__cmmc_fp_constant_pool:
	.4byte	1079613850
.text
.globl h
h:
pcrel6:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel6)
	flw f10, 0(a0)
	ret
