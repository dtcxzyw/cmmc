.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl iiii
iiii:
	.4byte	100
.align 4
.globl jjjj
jjjj:
	.4byte	4
.align 4
.globl kkkk
kkkk:
	.4byte	0
.text
.p2align 2
.globl test
test:
pcrel17:
	auipc a1, %pcrel_hi(iiii)
pcrel18:
	auipc a3, %pcrel_hi(jjjj)
pcrel19:
	auipc a4, %pcrel_hi(kkkk)
	lw a0, %pcrel_lo(pcrel17)(a1)
	lw a2, %pcrel_lo(pcrel18)(a3)
	divuw a1, a0, a2
	sw a1, %pcrel_lo(pcrel19)(a4)
	ret
