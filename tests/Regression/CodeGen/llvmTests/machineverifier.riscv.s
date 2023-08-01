.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl g
g:
	.zero	4
.text
.p2align 2
.globl foo
foo:
pcrel19:
	auipc a0, %pcrel_hi(g)
	lw a1, %pcrel_lo(pcrel19)(a0)
	bne a1, zero, label8
label2:
	ret
label8:
	addiw a1, a1, 10
	li a3, 4294967295
	and a2, a1, a3
pcrel20:
	auipc a0, %pcrel_hi(g)
	sw a2, %pcrel_lo(pcrel20)(a0)
	j label2
