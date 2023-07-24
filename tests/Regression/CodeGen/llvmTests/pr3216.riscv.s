.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 1
.globl foo
foo:
	.byte	127
.text
.globl main
main:
.p2align 2
pcrel14:
	auipc a0, %pcrel_hi(foo)
	lb a1, %pcrel_lo(pcrel14)(a0)
	andi a2, a1, 255
	sraiw a0, a2, 5
	andi a1, a0, 7
	slliw a2, a1, 5
	sraiw a3, a2, 5
	sext.b a0, a3
	ret
