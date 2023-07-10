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
	.4byte	4
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
pcrel22:
	auipc a1, %pcrel_hi(iiii)
pcrel23:
	auipc a3, %pcrel_hi(jjjj)
	lw a0, %pcrel_lo(pcrel22)(a1)
	lw a1, %pcrel_lo(pcrel23)(a3)
pcrel24:
	auipc a3, %pcrel_hi(kkkk)
	divuw a2, a0, a1
	remuw a0, a0, a1
pcrel25:
	auipc a1, %pcrel_hi(llll)
	sw a2, %pcrel_lo(pcrel24)(a3)
	sw a0, %pcrel_lo(pcrel25)(a1)
	ret
