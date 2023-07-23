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
	auipc a1, %pcrel_hi(a)
	lw a2, %pcrel_lo(pcrel22)(a1)
pcrel23:
	auipc a1, %pcrel_hi(b)
	slli a0, a2, 4
pcrel24:
	auipc a2, %pcrel_hi(c)
	sw a0, %pcrel_lo(pcrel23)(a1)
	lw a1, %pcrel_lo(pcrel24)(a2)
pcrel25:
	auipc a2, %pcrel_hi(d)
	slli a0, a1, 10
	sw a0, %pcrel_lo(pcrel25)(a2)
	mv a0, zero
	ret
.globl shift_right
shift_right:
pcrel47:
	auipc a1, %pcrel_hi(i)
	lw a2, %pcrel_lo(pcrel47)(a1)
pcrel48:
	auipc a1, %pcrel_hi(j)
	srli a0, a2, 4
pcrel49:
	auipc a2, %pcrel_hi(m)
	sw a0, %pcrel_lo(pcrel48)(a1)
	lw a1, %pcrel_lo(pcrel49)(a2)
pcrel50:
	auipc a2, %pcrel_hi(n)
	srli a0, a1, 10
	sw a0, %pcrel_lo(pcrel50)(a2)
	mv a0, zero
	ret
