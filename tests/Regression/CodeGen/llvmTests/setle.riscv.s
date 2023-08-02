.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl j
j:
	.4byte	4294967291
.align 4
.globl k
k:
	.4byte	10
.align 4
.globl l
l:
	.4byte	20
.align 4
.globl m
m:
	.4byte	10
.align 4
.globl r1
r1:
	.4byte	0
.align 4
.globl r2
r2:
	.4byte	0
.align 4
.globl r3
r3:
	.4byte	0
.text
.p2align 2
.globl test
test:
pcrel36:
	auipc a1, %pcrel_hi(k)
pcrel37:
	auipc a5, %pcrel_hi(j)
pcrel38:
	auipc t0, %pcrel_hi(r1)
	lw a0, %pcrel_lo(pcrel36)(a1)
	lw a2, %pcrel_lo(pcrel37)(a5)
pcrel39:
	auipc a5, %pcrel_hi(m)
	slt a4, a0, a2
	xori a3, a4, 1
	zext.w a1, a3
	sw a1, %pcrel_lo(pcrel38)(t0)
	lw a2, %pcrel_lo(pcrel39)(a5)
	slt a3, a0, a2
pcrel40:
	auipc a0, %pcrel_hi(r2)
	xori a4, a3, 1
	zext.w a1, a4
	sw a1, %pcrel_lo(pcrel40)(a0)
	ret
