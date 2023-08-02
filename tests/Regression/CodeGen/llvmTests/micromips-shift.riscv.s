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
.p2align 2
.globl shift_left
shift_left:
pcrel22:
	auipc a2, %pcrel_hi(a)
pcrel23:
	auipc a3, %pcrel_hi(b)
pcrel24:
	auipc a4, %pcrel_hi(c)
	lw a1, %pcrel_lo(pcrel22)(a2)
	slli a0, a1, 4
	sw a0, %pcrel_lo(pcrel23)(a3)
	mv a0, zero
pcrel25:
	auipc a3, %pcrel_hi(d)
	lw a2, %pcrel_lo(pcrel24)(a4)
	slli a1, a2, 10
	sw a1, %pcrel_lo(pcrel25)(a3)
	ret
.p2align 2
.globl shift_right
shift_right:
pcrel47:
	auipc a2, %pcrel_hi(i)
pcrel48:
	auipc a3, %pcrel_hi(j)
pcrel49:
	auipc a4, %pcrel_hi(m)
	lw a1, %pcrel_lo(pcrel47)(a2)
	srli a0, a1, 4
	sw a0, %pcrel_lo(pcrel48)(a3)
	mv a0, zero
pcrel50:
	auipc a3, %pcrel_hi(n)
	lw a2, %pcrel_lo(pcrel49)(a4)
	srli a1, a2, 10
	sw a1, %pcrel_lo(pcrel50)(a3)
	ret
