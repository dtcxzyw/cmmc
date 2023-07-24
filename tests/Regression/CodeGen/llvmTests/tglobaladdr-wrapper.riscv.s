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
.globl foo
foo:
.p2align 2
pcrel25:
	auipc a0, %pcrel_hi(x)
	addi a1, a0, %pcrel_lo(pcrel25)
	lw a0, %pcrel_lo(pcrel25)(a0)
	beq a0, zero, label2
pcrel26:
	auipc a2, %pcrel_hi(b)
	lw a0, %pcrel_lo(pcrel26)(a2)
	j label3
label2:
	auipc a2, %pcrel_hi(a)
	lw a0, %pcrel_lo(label2)(a2)
label3:
	sw a0, 0(a1)
	ret
