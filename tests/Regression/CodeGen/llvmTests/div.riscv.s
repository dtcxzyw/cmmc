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
	.4byte	4294967292
.align 4
.globl kkkk
kkkk:
	.4byte	0
.text
.p2align 2
.globl test
test:
pcrel20:
	auipc a1, %pcrel_hi(iiii)
pcrel21:
	auipc a4, %pcrel_hi(jjjj)
	lw a0, %pcrel_lo(pcrel20)(a1)
	lw a2, %pcrel_lo(pcrel21)(a4)
pcrel22:
	auipc a4, %pcrel_hi(kkkk)
	divw a3, a0, a2
	zext.w a1, a3
	sw a1, %pcrel_lo(pcrel22)(a4)
	ret
