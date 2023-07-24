.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl var
var:
	.4byte	0
.text
.globl big_global
big_global:
.p2align 2
pcrel7:
	auipc a1, %pcrel_hi(var)
	lw a0, %pcrel_lo(pcrel7)(a1)
	ret
.globl small_global
small_global:
.p2align 2
pcrel14:
	auipc a1, %pcrel_hi(var)
	lw a0, %pcrel_lo(pcrel14)(a1)
	ret
