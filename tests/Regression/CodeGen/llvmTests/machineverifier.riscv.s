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
pcrel18:
	auipc a0, %pcrel_hi(g)
	lw a1, %pcrel_lo(pcrel18)(a0)
	beq a1, zero, label2
	addiw a2, a1, 10
	zext.w a3, a2
	sw a3, %pcrel_lo(pcrel18)(a0)
label2:
	ret
