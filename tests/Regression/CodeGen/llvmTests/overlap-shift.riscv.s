.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl G
G:
	.zero	4
.text
.globl test1
test1:
.p2align 2
	slliw a1, a0, 2
pcrel8:
	auipc a2, %pcrel_hi(G)
	sw a1, %pcrel_lo(pcrel8)(a2)
	ret
