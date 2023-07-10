.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl g
g:
	.4byte	0
.bss
.align 4
.globl i
i:
	.zero	4
.text
.globl LoadGV
LoadGV:
pcrel7:
	auipc a1, %pcrel_hi(g)
	lw a0, %pcrel_lo(pcrel7)(a1)
	ret
.globl LoadIndirectSymbol
LoadIndirectSymbol:
pcrel14:
	auipc a1, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel14)(a1)
	ret
