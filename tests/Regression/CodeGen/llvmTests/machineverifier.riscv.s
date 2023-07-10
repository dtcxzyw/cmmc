.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl g
g:
	.zero	4
.text
.globl foo
foo:
pcrel17:
	auipc a1, %pcrel_hi(g)
	addi a0, a1, %pcrel_lo(pcrel17)
	lw a1, %pcrel_lo(pcrel17)(a1)
	bne a1, zero, label9
	j label2
label9:
	addiw a1, a1, 10
	li a2, 4294967295
	and a3, a1, a2
	sw a3, 0(a0)
label2:
	ret
