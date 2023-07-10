.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl a
a:
	.4byte	0
.align 4
.globl b
b:
	.4byte	0
.align 4
.globl c
c:
	.4byte	0
.align 4
.globl d
d:
	.4byte	0
.align 4
.globl e
e:
	.4byte	0
.align 4
.globl f
f:
	.4byte	0
.text
.globl func
func:
pcrel40:
	auipc a2, %pcrel_hi(b)
pcrel41:
	auipc a1, %pcrel_hi(c)
pcrel42:
	auipc a4, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel40)(a2)
	lw a3, %pcrel_lo(pcrel41)(a1)
	mulw a2, a0, a3
pcrel43:
	auipc a3, %pcrel_hi(e)
	li a0, 4294967295
	and a1, a2, a0
pcrel44:
	auipc a2, %pcrel_hi(a)
	sw a1, %pcrel_lo(pcrel44)(a2)
	lw a1, %pcrel_lo(pcrel43)(a3)
	lw a2, %pcrel_lo(pcrel42)(a4)
	mulw a1, a1, a2
pcrel45:
	auipc a2, %pcrel_hi(d)
	and a0, a1, a0
	sw a0, %pcrel_lo(pcrel45)(a2)
	ret
