.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl i
i:
	.4byte	1
.align 4
.globl j
j:
	.4byte	2
.align 4
.globl k
k:
	.4byte	0
.text
.globl t
t:
.p2align 2
pcrel24:
	auipc a1, %pcrel_hi(i)
pcrel25:
	auipc a3, %pcrel_hi(j)
	lw a0, %pcrel_lo(pcrel24)(a1)
	li a1, 1
	lw a2, %pcrel_lo(pcrel25)(a3)
	beq a0, a2, label22
	li a1, 3
label22:
	li a2, 4294967295
	and a0, a1, a2
pcrel26:
	auipc a1, %pcrel_hi(k)
	sw a0, %pcrel_lo(pcrel26)(a1)
	ret
