.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl k
k:
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
pcrel17:
	auipc a1, %pcrel_hi(k)
	li a2, -32769
	li a3, 4294967295
	lw a0, %pcrel_lo(pcrel17)(a1)
	slt a1, a2, a0
	and a0, a1, a3
pcrel18:
	auipc a1, %pcrel_hi(r1)
	sw a0, %pcrel_lo(pcrel18)(a1)
	ret
