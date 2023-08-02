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
	auipc a3, %pcrel_hi(jjjj)
	lw a0, %pcrel_lo(pcrel20)(a1)
	lw a1, %pcrel_lo(pcrel21)(a3)
	divw a2, a0, a1
pcrel22:
	auipc a1, %pcrel_hi(kkkk)
	zext.w a0, a2
	sw a0, %pcrel_lo(pcrel22)(a1)
	ret
