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
pcrel33:
	auipc a1, %pcrel_hi(k)
pcrel34:
	auipc a3, %pcrel_hi(j)
pcrel35:
	auipc a4, %pcrel_hi(r1)
	lw a0, %pcrel_lo(pcrel33)(a1)
	lw a1, %pcrel_lo(pcrel34)(a3)
	sltu a2, a0, a1
	xori a3, a2, 1
pcrel36:
	auipc a2, %pcrel_hi(m)
	zext.w a1, a3
	sw a1, %pcrel_lo(pcrel35)(a4)
	lw a1, %pcrel_lo(pcrel36)(a2)
	sltu a3, a0, a1
pcrel37:
	auipc a1, %pcrel_hi(r2)
	xori a2, a3, 1
	zext.w a0, a2
	sw a0, %pcrel_lo(pcrel37)(a1)
	ret
