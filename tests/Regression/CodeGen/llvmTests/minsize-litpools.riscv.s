.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl var
var:
	.4byte	0
.text
.p2align 2
.globl big_global
big_global:
pcrel7:
	auipc a1, %pcrel_hi(var)
	lw a0, %pcrel_lo(pcrel7)(a1)
	ret
.p2align 2
.globl small_global
small_global:
pcrel14:
	auipc a1, %pcrel_hi(var)
	lw a0, %pcrel_lo(pcrel14)(a1)
	ret
