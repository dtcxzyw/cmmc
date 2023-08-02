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
	auipc a2, %pcrel_hi(iiii)
pcrel27:
	auipc a4, %pcrel_hi(jjjj)
pcrel28:
	auipc a5, %pcrel_hi(kkkk)
	lw a0, %pcrel_lo(pcrel26)(a2)
	lw a1, %pcrel_lo(pcrel27)(a4)
	remw a4, a0, a1
	divw a2, a0, a1
	zext.w a3, a2
	zext.w a2, a4
	sw a3, %pcrel_lo(pcrel28)(a5)
pcrel29:
	auipc a3, %pcrel_hi(llll)
	sw a2, %pcrel_lo(pcrel29)(a3)
	ret
