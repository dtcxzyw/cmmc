.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl a
a:
	.4byte	10
.align 4
.globl b
b:
	.4byte	0
.align 4
.globl c
c:
	.4byte	10
.align 4
.globl d
d:
	.4byte	0
.align 4
.globl i
i:
	.4byte	10654
.align 4
.globl j
j:
	.4byte	0
.align 4
.globl m
m:
	.4byte	10
.align 4
.globl n
n:
	.4byte	0
.text
.globl shift_left
shift_left:
pcrel22:
	auipc a0, %pcrel_hi(a)
	lw a0, %pcrel_lo(pcrel22)(a0)
pcrel23:
	auipc a1, %pcrel_hi(b)
	slliw a0, a0, 4
	sw a0, %pcrel_lo(pcrel23)(a1)
pcrel24:
	auipc a0, %pcrel_hi(c)
	lw a0, %pcrel_lo(pcrel24)(a0)
pcrel25:
	auipc a1, %pcrel_hi(d)
	slliw a0, a0, 10
	sw a0, %pcrel_lo(pcrel25)(a1)
	mv a0, zero
	ret
.globl shift_right
shift_right:
pcrel47:
	auipc a0, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel47)(a0)
pcrel48:
	auipc a1, %pcrel_hi(j)
	srliw a0, a0, 4
	sw a0, %pcrel_lo(pcrel48)(a1)
pcrel49:
	auipc a0, %pcrel_hi(m)
	lw a0, %pcrel_lo(pcrel49)(a0)
pcrel50:
	auipc a1, %pcrel_hi(n)
	srliw a0, a0, 10
	sw a0, %pcrel_lo(pcrel50)(a1)
	mv a0, zero
	ret