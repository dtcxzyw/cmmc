.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl i
i:
	.4byte	0
.p2align 2
.globl j
j:
	.4byte	99
.p2align 2
.globl r1
r1:
	.4byte	0
.p2align 2
.globl r2
r2:
	.4byte	0
.text
.p2align 2
.globl test
test:
pcrel27:
	auipc a3, %pcrel_hi(i)
pcrel28:
	auipc a4, %pcrel_hi(j)
	lw a2, %pcrel_lo(pcrel27)(a3)
pcrel29:
	auipc a3, %pcrel_hi(r1)
	sltiu a1, a2, 1
	zext.w a0, a1
	sw a0, %pcrel_lo(pcrel29)(a3)
	lw a1, %pcrel_lo(pcrel28)(a4)
	xori a2, a1, 99
pcrel30:
	auipc a1, %pcrel_hi(r2)
	sltiu a3, a2, 1
	zext.w a0, a3
	sw a0, %pcrel_lo(pcrel30)(a1)
	ret
