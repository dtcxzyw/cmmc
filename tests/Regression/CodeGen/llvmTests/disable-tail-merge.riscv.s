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
.globl test1
test1:
.p2align 2
	mv a2, a0
pcrel36:
	auipc a1, %pcrel_hi(g0)
pcrel37:
	auipc a4, %pcrel_hi(g1)
	addi a0, a1, %pcrel_lo(pcrel36)
	lw a3, %pcrel_lo(pcrel36)(a1)
	addi a1, a4, %pcrel_lo(pcrel37)
	beq a2, zero, label2
	addiw a3, a3, 1
	li a2, 4294967295
	and a4, a3, a2
	sw a4, 0(a0)
	lw a3, 0(a1)
	addiw a4, a3, 23
	and a0, a4, a2
	j label3
label2:
	addiw a3, a3, 11
	li a2, 4294967295
	and a4, a3, a2
	sw a4, 0(a0)
	lw a3, 0(a1)
	addiw a4, a3, 23
	and a0, a4, a2
label3:
	sw a0, 0(a1)
	ret
