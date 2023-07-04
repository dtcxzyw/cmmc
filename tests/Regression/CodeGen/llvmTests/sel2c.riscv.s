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
pcrel23:
	auipc a0, %pcrel_hi(i)
pcrel24:
	auipc a1, %pcrel_hi(j)
	lw a0, %pcrel_lo(pcrel23)(a0)
	lw a1, %pcrel_lo(pcrel24)(a1)
	xor a0, a0, a1
	sltu a1, zero, a0
	li a0, 1
	bne a1, zero, label22
	li a0, 3
label22:
	li a1, 4294967295
	and a0, a0, a1
pcrel25:
	auipc a1, %pcrel_hi(k)
	sw a0, %pcrel_lo(pcrel25)(a1)
	ret
