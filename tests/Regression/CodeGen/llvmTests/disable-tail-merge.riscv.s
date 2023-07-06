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
	mv a1, a0
pcrel46:
	auipc a2, %pcrel_hi(g0)
	addi a0, a2, %pcrel_lo(pcrel46)
	lw a2, %pcrel_lo(pcrel46)(a2)
	bne a1, zero, label12
	addiw a2, a2, 11
	li a1, 4294967295
	and a2, a2, a1
	sw a2, 0(a0)
pcrel47:
	auipc a0, %pcrel_hi(g1)
	lw a0, %pcrel_lo(pcrel47)(a0)
	addiw a0, a0, 23
	and a0, a0, a1
	j label3
label12:
	addiw a2, a2, 1
	li a1, 4294967295
	and a2, a2, a1
	sw a2, 0(a0)
pcrel48:
	auipc a0, %pcrel_hi(g1)
	lw a0, %pcrel_lo(pcrel48)(a0)
	addiw a0, a0, 23
	and a0, a0, a1
label3:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(label3)(a1)
	ret
