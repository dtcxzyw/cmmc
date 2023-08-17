.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl v
v:
	.4byte	0
.text
.p2align 2
.globl f
f:
pcrel8:
	auipc a2, %pcrel_hi(v)
	lw a1, %pcrel_lo(pcrel8)(a2)
	addiw a0, a1, 1
	ret
.p2align 2
.globl f_alias
f_alias:
pcrel16:
	auipc a2, %pcrel_hi(v)
	lw a1, %pcrel_lo(pcrel16)(a2)
	addiw a0, a1, 1
	ret
