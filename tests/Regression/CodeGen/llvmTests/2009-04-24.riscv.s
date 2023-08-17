.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl i
i:
	.4byte	15
.text
.p2align 2
.globl f
f:
pcrel7:
	auipc a1, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel7)(a1)
	ret
