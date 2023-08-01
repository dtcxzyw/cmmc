.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl g0
g0:
	.4byte	0
.align 4
.globl g1
g1:
	.4byte	0
.text
.p2align 2
.globl test1
test1:
pcrel42:
	auipc a2, %pcrel_hi(g0)
	lw a1, %pcrel_lo(pcrel42)(a2)
	bne a0, zero, label14
	addiw a1, a1, 11
	li a0, 4294967295
pcrel43:
	auipc a4, %pcrel_hi(g1)
	and a3, a1, a0
	sw a3, %pcrel_lo(pcrel42)(a2)
	lw a2, %pcrel_lo(pcrel43)(a4)
	addiw a1, a2, 23
	and a0, a1, a0
	j label3
label14:
	addiw a1, a1, 1
	li a0, 4294967295
pcrel44:
	auipc a4, %pcrel_hi(g1)
	and a3, a1, a0
pcrel45:
	auipc a2, %pcrel_hi(g0)
	sw a3, %pcrel_lo(pcrel45)(a2)
	lw a2, %pcrel_lo(pcrel44)(a4)
	addiw a1, a2, 23
	and a0, a1, a0
label3:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(label3)(a1)
	ret
