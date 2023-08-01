.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl j
j:
	.4byte	5
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
pcrel35:
	auipc a1, %pcrel_hi(k)
pcrel36:
	auipc a2, %pcrel_hi(j)
	lw a0, %pcrel_lo(pcrel35)(a1)
	lw a1, %pcrel_lo(pcrel36)(a2)
	sltu a3, a0, a1
	li a1, 4294967295
	xori a2, a3, 1
	and a3, a2, a1
pcrel37:
	auipc a2, %pcrel_hi(r1)
	sw a3, %pcrel_lo(pcrel37)(a2)
pcrel38:
	auipc a3, %pcrel_hi(m)
	lw a5, %pcrel_lo(pcrel38)(a3)
	sltu a4, a0, a5
	xori a2, a4, 1
	and a0, a2, a1
pcrel39:
	auipc a1, %pcrel_hi(r2)
	sw a0, %pcrel_lo(pcrel39)(a1)
	ret
