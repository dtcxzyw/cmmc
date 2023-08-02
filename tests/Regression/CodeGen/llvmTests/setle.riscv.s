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
	auipc a2, %pcrel_hi(j)
pcrel38:
	auipc a4, %pcrel_hi(r1)
	lw a0, %pcrel_lo(pcrel36)(a1)
	lw a1, %pcrel_lo(pcrel37)(a2)
	slt a3, a0, a1
	xori a2, a3, 1
pcrel39:
	auipc a3, %pcrel_hi(m)
	zext.w a1, a2
	sw a1, %pcrel_lo(pcrel38)(a4)
	lw a1, %pcrel_lo(pcrel39)(a3)
	slt a2, a0, a1
pcrel40:
	auipc a1, %pcrel_hi(r2)
	xori a3, a2, 1
	zext.w a0, a3
	sw a0, %pcrel_lo(pcrel40)(a1)
	ret
