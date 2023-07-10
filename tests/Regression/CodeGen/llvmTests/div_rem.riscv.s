.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl iiii
iiii:
	.4byte	103
.align 4
.globl jjjj
jjjj:
	.4byte	4294967292
.align 4
.globl kkkk
kkkk:
	.4byte	0
.align 4
.globl llll
llll:
	.4byte	0
.text
.globl test
test:
pcrel28:
	auipc a1, %pcrel_hi(iiii)
pcrel29:
	auipc a2, %pcrel_hi(jjjj)
	lw a0, %pcrel_lo(pcrel28)(a1)
	lw a1, %pcrel_lo(pcrel29)(a2)
	li a2, 4294967295
	divw a4, a0, a1
	remw a1, a0, a1
	and a3, a4, a2
pcrel30:
	auipc a4, %pcrel_hi(kkkk)
	sw a3, %pcrel_lo(pcrel30)(a4)
	and a0, a1, a2
pcrel31:
	auipc a2, %pcrel_hi(llll)
	sw a0, %pcrel_lo(pcrel31)(a2)
	ret
