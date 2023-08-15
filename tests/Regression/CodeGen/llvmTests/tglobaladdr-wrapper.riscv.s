.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl x
x:
	.4byte	0
.align 4
.globl a
a:
	.4byte	0
.align 4
.globl b
b:
	.4byte	0
.text
.p2align 2
.globl foo
foo:
pcrel27:
	auipc a1, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel27)(a1)
	beq a0, zero, label2
pcrel28:
	auipc a2, %pcrel_hi(b)
	lw a0, %pcrel_lo(pcrel28)(a2)
label3:
	auipc a1, %pcrel_hi(x)
	sw a0, %pcrel_lo(label3)(a1)
	ret
label2:
	auipc a2, %pcrel_hi(a)
	lw a0, %pcrel_lo(label2)(a2)
	j label3
