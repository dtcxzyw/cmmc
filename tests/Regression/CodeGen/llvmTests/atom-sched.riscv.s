.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl a
a:
	.4byte	0
.p2align 2
.globl b
b:
	.4byte	0
.p2align 2
.globl c
c:
	.4byte	0
.p2align 2
.globl d
d:
	.4byte	0
.p2align 2
.globl e
e:
	.4byte	0
.p2align 2
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
	auipc a4, %pcrel_hi(c)
	lw a0, %pcrel_lo(pcrel38)(a1)
	lw a2, %pcrel_lo(pcrel39)(a4)
pcrel40:
	auipc a4, %pcrel_hi(a)
	mulw a3, a0, a2
	zext.w a1, a3
pcrel41:
	auipc a3, %pcrel_hi(e)
	sw a1, %pcrel_lo(pcrel40)(a4)
pcrel42:
	auipc a4, %pcrel_hi(f)
	lw a0, %pcrel_lo(pcrel41)(a3)
	lw a2, %pcrel_lo(pcrel42)(a4)
pcrel43:
	auipc a4, %pcrel_hi(d)
	mulw a3, a0, a2
	zext.w a1, a3
	sw a1, %pcrel_lo(pcrel43)(a4)
	ret
