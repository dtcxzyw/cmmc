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
.globl test
test:
pcrel29:
	auipc a0, %pcrel_hi(i)
	lw a2, %pcrel_lo(pcrel29)(a0)
	li a0, 4294967295
	sltiu a1, a2, 1
	and a2, a1, a0
pcrel30:
	auipc a1, %pcrel_hi(r1)
	sw a2, %pcrel_lo(pcrel30)(a1)
pcrel31:
	auipc a2, %pcrel_hi(j)
	lw a1, %pcrel_lo(pcrel31)(a2)
	xori a3, a1, 99
pcrel32:
	auipc a1, %pcrel_hi(r2)
	sltiu a2, a3, 1
	and a0, a2, a0
	sw a0, %pcrel_lo(pcrel32)(a1)
	ret
