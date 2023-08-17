.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl j
j:
	.4byte	4294967291
.p2align 2
.globl k
k:
	.4byte	10
.p2align 2
.globl l
l:
	.4byte	20
.p2align 2
.globl m
m:
	.4byte	10
.p2align 2
.globl r1
r1:
	.4byte	0
.p2align 2
.globl r2
r2:
	.4byte	0
.p2align 2
.globl r3
r3:
	.4byte	0
.text
.p2align 2
.globl test
test:
pcrel15:
	auipc a3, %pcrel_hi(j)
	lw a1, %pcrel_lo(pcrel15)(a3)
pcrel16:
	auipc a3, %pcrel_hi(r1)
	slti a2, a1, 10
	zext.w a0, a2
	sw a0, %pcrel_lo(pcrel16)(a3)
	ret
