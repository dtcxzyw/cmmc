.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl i
i:
	.4byte	0
.align 4
.globl j
j:
	.4byte	99
.align 4
.globl r1
r1:
	.4byte	0
.align 4
.globl r2
r2:
	.4byte	0
.text
.p2align 2
.globl test
test:
pcrel27:
	auipc a0, %pcrel_hi(i)
pcrel28:
	auipc a3, %pcrel_hi(j)
	lw a2, %pcrel_lo(pcrel27)(a0)
	sltiu a1, a2, 1
pcrel29:
	auipc a2, %pcrel_hi(r1)
	zext.w a0, a1
	sw a0, %pcrel_lo(pcrel29)(a2)
	lw a0, %pcrel_lo(pcrel28)(a3)
	xori a1, a0, 99
	sltiu a2, a1, 1
pcrel30:
	auipc a1, %pcrel_hi(r2)
	zext.w a0, a2
	sw a0, %pcrel_lo(pcrel30)(a1)
	ret
