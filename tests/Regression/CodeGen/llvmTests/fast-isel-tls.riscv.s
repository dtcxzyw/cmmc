.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl v
v:
	.4byte	0
.text
.globl f
f:
.p2align 2
pcrel8:
	auipc a1, %pcrel_hi(v)
	lw a2, %pcrel_lo(pcrel8)(a1)
	addiw a0, a2, 1
	ret
.globl f_alias
f_alias:
.p2align 2
pcrel16:
	auipc a1, %pcrel_hi(v)
	lw a2, %pcrel_lo(pcrel16)(a1)
	addiw a0, a2, 1
	ret
