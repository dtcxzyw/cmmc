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
.globl test
test:
.p2align 2
pcrel16:
	auipc a2, %pcrel_hi(j)
	lw a0, %pcrel_lo(pcrel16)(a2)
	li a2, 4294967295
	slti a1, a0, 10
	and a0, a1, a2
pcrel17:
	auipc a1, %pcrel_hi(r1)
	sw a0, %pcrel_lo(pcrel17)(a1)
	ret
