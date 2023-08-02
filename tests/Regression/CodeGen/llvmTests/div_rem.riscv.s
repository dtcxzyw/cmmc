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
.p2align 2
.globl test
test:
pcrel26:
	auipc a1, %pcrel_hi(iiii)
pcrel27:
	auipc a2, %pcrel_hi(jjjj)
pcrel28:
	auipc a4, %pcrel_hi(kkkk)
	lw a0, %pcrel_lo(pcrel26)(a1)
	lw a1, %pcrel_lo(pcrel27)(a2)
	divw a3, a0, a1
	remw a1, a0, a1
	zext.w a2, a3
	sw a2, %pcrel_lo(pcrel28)(a4)
pcrel29:
	auipc a2, %pcrel_hi(llll)
	zext.w a0, a1
	sw a0, %pcrel_lo(pcrel29)(a2)
	ret
