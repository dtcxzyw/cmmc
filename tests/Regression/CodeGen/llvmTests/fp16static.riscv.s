.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl x
x:
	.4byte	0
.text
.p2align 2
.globl foo
foo:
pcrel9:
	auipc a0, %pcrel_hi(x)
	flw f10, %pcrel_lo(pcrel9)(a0)
	fmul.s f11, f10, f10
	fsw f11, %pcrel_lo(pcrel9)(a0)
	ret
