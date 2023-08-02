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
	auipc a2, %pcrel_hi(k)
pcrel34:
	auipc a1, %pcrel_hi(j)
pcrel35:
	auipc a5, %pcrel_hi(m)
	lw a0, %pcrel_lo(pcrel33)(a2)
	lw a4, %pcrel_lo(pcrel34)(a1)
	sltu a2, a0, a4
pcrel36:
	auipc a4, %pcrel_hi(r1)
	xori a3, a2, 1
	zext.w a1, a3
	sw a1, %pcrel_lo(pcrel36)(a4)
	lw a2, %pcrel_lo(pcrel35)(a5)
	sltu a4, a0, a2
pcrel37:
	auipc a0, %pcrel_hi(r2)
	xori a3, a4, 1
	zext.w a1, a3
	sw a1, %pcrel_lo(pcrel37)(a0)
	ret
