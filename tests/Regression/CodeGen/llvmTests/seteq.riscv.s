.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl i
i:
	.4byte	1
.p2align 2
.globl j
j:
	.4byte	10
.p2align 2
.globl k
k:
	.4byte	1
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
pcrel20:
	auipc a1, %pcrel_hi(i)
pcrel21:
	auipc a5, %pcrel_hi(k)
	lw a0, %pcrel_lo(pcrel20)(a1)
	lw a3, %pcrel_lo(pcrel21)(a5)
	xor a2, a0, a3
pcrel22:
	auipc a0, %pcrel_hi(r1)
	sltiu a4, a2, 1
	zext.w a1, a4
	sw a1, %pcrel_lo(pcrel22)(a0)
	ret
