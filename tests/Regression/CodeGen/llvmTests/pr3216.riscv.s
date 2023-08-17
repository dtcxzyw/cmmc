.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.globl foo
foo:
	.byte	127
.text
.p2align 2
.globl main
main:
pcrel14:
	auipc a1, %pcrel_hi(foo)
	lb a3, %pcrel_lo(pcrel14)(a1)
	andi a2, a3, 255
	sraiw a0, a2, 5
	andi a1, a0, 7
	slliw a3, a1, 5
	sraiw a2, a3, 5
	sext.b a0, a2
	ret
