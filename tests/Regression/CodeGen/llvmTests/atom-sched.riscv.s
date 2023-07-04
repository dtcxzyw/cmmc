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
	auipc a0, %pcrel_hi(b)
pcrel41:
	auipc a1, %pcrel_hi(c)
pcrel42:
	auipc a2, %pcrel_hi(a)
	lw a0, %pcrel_lo(pcrel40)(a0)
	lw a1, %pcrel_lo(pcrel41)(a1)
	mulw a1, a0, a1
	li a0, 4294967295
	and a1, a1, a0
	sw a1, %pcrel_lo(pcrel42)(a2)
pcrel43:
	auipc a2, %pcrel_hi(f)
pcrel44:
	auipc a1, %pcrel_hi(e)
	lw a1, %pcrel_lo(pcrel44)(a1)
	lw a2, %pcrel_lo(pcrel43)(a2)
	mulw a1, a1, a2
	and a0, a1, a0
pcrel45:
	auipc a1, %pcrel_hi(d)
	sw a0, %pcrel_lo(pcrel45)(a1)
	ret
