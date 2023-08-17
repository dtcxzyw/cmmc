.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl iiii
iiii:
	.4byte	103
.p2align 2
.globl jjjj
jjjj:
	.4byte	4
.p2align 2
.globl kkkk
kkkk:
	.4byte	0
.p2align 2
.globl llll
llll:
	.4byte	0
.text
.p2align 2
.globl test
test:
pcrel22:
	auipc a2, %pcrel_hi(iiii)
pcrel23:
	auipc a4, %pcrel_hi(jjjj)
pcrel24:
	auipc a5, %pcrel_hi(kkkk)
	lw a0, %pcrel_lo(pcrel22)(a2)
	lw a1, %pcrel_lo(pcrel23)(a4)
pcrel25:
	auipc a4, %pcrel_hi(llll)
	remuw a2, a0, a1
	divuw a3, a0, a1
	sw a3, %pcrel_lo(pcrel24)(a5)
	sw a2, %pcrel_lo(pcrel25)(a4)
	ret
