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
.p2align 2
.globl func
func:
pcrel38:
	auipc a1, %pcrel_hi(b)
pcrel39:
	auipc a3, %pcrel_hi(c)
	lw a0, %pcrel_lo(pcrel38)(a1)
	lw a1, %pcrel_lo(pcrel39)(a3)
pcrel40:
	auipc a3, %pcrel_hi(f)
	mulw a2, a0, a1
pcrel41:
	auipc a1, %pcrel_hi(a)
	zext.w a0, a2
pcrel42:
	auipc a2, %pcrel_hi(e)
	sw a0, %pcrel_lo(pcrel41)(a1)
	lw a0, %pcrel_lo(pcrel42)(a2)
	lw a1, %pcrel_lo(pcrel40)(a3)
	mulw a2, a0, a1
pcrel43:
	auipc a1, %pcrel_hi(d)
	zext.w a0, a2
	sw a0, %pcrel_lo(pcrel43)(a1)
	ret
