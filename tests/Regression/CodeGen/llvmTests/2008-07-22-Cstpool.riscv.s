.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1082759578
	.4byte	1082340147
.text
.globl F
F:
.p2align 2
pcrel12:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel12)
	flw f12, 0(a0)
	flw f13, 4(a0)
	fadd.s f11, f10, f12
	fadd.s f10, f11, f13
	ret
